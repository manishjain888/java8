/*******************************************************************************
 * @ClassName 		: ArgonSendHandler.java
 * @Author 	  		: joshinc
 * @Date 	  		: Aug 12, 2008
 * @Organization 	: RBS - IDC
 * 
 * Modification History
 * **************************************************************************************************************
 * Date 					Version 		Modified By 			Description
 * **************************************************************************************************************
 * Aug 12, 2008 			1.0	 			joshinc					Initial Version.
 * 
 */
package com.rbs.rbsgbl.loaniq.funding.process.messagesender;

import java.sql.Timestamp;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import org.apache.log4j.Level;
import org.apache.log4j.Logger;
import org.springframework.dao.DataAccessException;
import com.rbs.rbsgbl.loaniq.funding.datastore.AutoFundMessageBS;
import com.rbs.rbsgbl.loaniq.funding.datastore.data.AutoFund;
import com.rbs.rbsgbl.loaniq.funding.exception.AutoFundingException;
import com.rbs.rbsgbl.loaniq.funding.exception.MessageSenderException;
import com.rbsfm.argon.client.cga.Client;
import com.rbsfm.argon.client.cga.ClientException;
import com.rbsfm.argon.client.cga.ID;
import com.rbsfm.argon.client.cga.Sender;
import com.rbsfm.argon.client.cga.SentMessage;

/**
 * This is the class used to communicate with the Argon to send the AutoFunding messages. This uses a initmethod to establish the connection to Argon.
 * The start message use to poll the unsent messages from the LIQ-Intermediate table (RBSGBL_AUTO_FUND) and then send them to Argon 1 by 1.
 * 
 * @author joshinc
 * @version Aug 12, 2008
 * @see
 */
public class ArgonSendHandler {
	private static Logger logger = Logger.getLogger(ArgonSendHandler.class.getName());
	private Client client = null;
	private boolean terminated = false;
	private String clientname = "";
	private AutoFundMessageBS autoFundMessageBS = null;
	private int suspendPeriod = 0;
	private ArgonSendHandler instance;
	private boolean checkForDuplicates = false;
	private String messageType = "";
	private int messageVersion;
	private Sender argonSender = null;
	private List listUnsentMsgs =null;
	/*
	 * Inner class responsible for sending message
	 */
	private class MessageSender implements Runnable {
		Logger logger = null;
		String senderName = "";

		public MessageSender(String threadName) {
			logger = Logger.getLogger("com.rbs.rbsgbl.loaniq.generic.messagesender.handlers.ArgonSendHandler$MessageSender" + threadName);
			senderName = threadName;
			logger.debug("senderName --->" + senderName);
		}

		/*
		 * (non-Javadoc)
		 * 
		 * @see java.lang.Runnable#run()
		 */
		public void run() {
			logger.debug("method Start - run()");
			logger.debug("suspendPeriod---->" + suspendPeriod);
			try {
				AutoFund autoFund = null;
				terminated=false;
				while (terminated == false && client.getConnected()) {
					//List listUnsentMsgs = null;
					try {
						//listUnsentMsgs = autoFundMessageBS.getConfirmMessageList();
						Iterator iterator = listUnsentMsgs.iterator();
						//boolean tempFlag=true;
						while (iterator.hasNext()) { // will loop thru unsent outbound messages
						//while (tempFlag) {	
							//tempFlag=false;
							autoFund = (AutoFund) iterator.next();
							boolean duplicateMessage = false;
							if (autoFund != null) {
								ID argonID = null;
								if (checkForDuplicates){ // check for duplicacy of message								
									duplicateMessage = isDuplicate(Long.valueOf(autoFund.getAftAppIDRID().trim()), messageType);
								}
								if (!duplicateMessage) { // if the message is not a duplicate then send it
									try {
										argonID = sendMessage(autoFund);
										if (argonID != null) { // Message got successfully sent to Argon.										
											autoFund.setAftSeqIDRID(argonID.getPersistable().trim()); // Capture the ARGON ID (sent from ARGON)
											autoFund.setAftMSGStatusCode("SENT");
										} else {
											autoFund.setAftMSGStatusCode("UNSENT");
										}
										updateOutboundMessageStatus(autoFund);
									} catch (Exception ex) {
										autoFund.setAftMSGStatusCode("UNSENT");
										updateOutboundMessageStatus(autoFund);
										logger.error("Error encountered in sending  message to ARGON", ex);
									}
								} else {								
									continue;
									}
							}// end of if (autoFund != null)
						} // end of while loop
					} 
					catch (DataAccessException mse) {
						logger.error("Error encountered while accessing AutoFund messages" + mse);					
					}
					catch (Exception mse) {
						logger.error("Error encountered while getting List of Unsent Outbound messages" + mse);
						//terminated = true;
					}
					//	TODO : Disconnect only 
					terminated = true; // terminate the child thread once all Unsent messages have been sent to ARGON
					// disconnect client from ARGON
					//try {
						//TODO : Disconnect only if someone has issued stop request by the Windows Service Wrapper.
						//client.disconnect();
					//} 
					/*catch (ClientException ce) {
						logger.error("Error encountered while disconnecting client from ARGON " + ce.getMessage());
					}*/
				} // end of while
			} catch (Throwable t) {
				logger.error("Unexpected error encountered in run() method of MessageSender", t);
			}
			logger.debug("method End - run()");
		}
	}

	/**
	 * Method for sending message to Argon
	 */
	public ID sendMessage(AutoFund autoFund) throws Exception{	
		logger.debug("method Start - sendMessage()");
		ID id = null;
		// send the message
		// Create a new SentMessage object for the newly configured sending client
		SentMessage argonMessage = this.argonSender.createMessage();
		try {
			argonMessage.setMessageType(this.messageType);
			argonMessage.setMessageTypeVersion(this.messageVersion);
			argonMessage.setApplicationID(autoFund.getAftAppIDRID()); // applicationId= sequence generated unique identifier
			try{
			argonMessage.setXMLText(autoFundMessageBS.getXMLMessage(autoFund)); // actual xml data
			}catch(AutoFundingException ex){
				logger.error("AutoFunding Message for Trade ref (AFT_WSS_TRADE_REF) -> " +autoFund.getAftWSSTradeRef()+ " and AppID (AFT_RID_APP_ID) -> "+autoFund.getAftAppIDRID()+
						" could not be sent to Argon,  exception details : " +	ex.getMessage());
				return null;
			}
			Date timeStamp = new Date();
			autoFund.setAftArgonSentTimestamp(new Timestamp(timeStamp.getTime()));			
			id = argonMessage.send();
			logger.info("AutoFunding Message for Trade ref (AFT_WSS_TRADE_REF) -> " +autoFund.getAftWSSTradeRef()+ " and AppID (AFT_RID_APP_ID) -> "+autoFund.getAftAppIDRID()+" got sent succesfully to Argon.");
			logger.info("ID Persistable received from ARGON -> " + id.getPersistable());
			
		} catch (ClientException ce) {
			logger.error("AutoFunding Message for Trade ref (AFT_WSS_TRADE_REF) -> " +autoFund.getAftWSSTradeRef()+ " and AppID (AFT_RID_APP_ID) -> "+autoFund.getAftAppIDRID()+" could not be sent to Argon.");
			logger.error("ClientException -> " + ce.getMessage());
		}
		catch(Exception e){
			throw new Exception("Exception e :: "+e);
		}
		logger.debug("method End - sendMessage()");
		return id;
	}

	/**
	 * Method for updating status for message in outbound message table
	 */
	private void updateOutboundMessageStatus(AutoFund autoFund) {
		logger.debug("method Start - updateOutboundMessageStatus()");
		try {
			autoFundMessageBS.updateOutboundMessageStatus(autoFund);
		} catch (Exception mse) {
			logger.error("Error encoured while updating status in outbound message for autofund message " + mse);
			logger.error("Details of the AutoFunding Message are : Trade ref (AFT_WSS_TRADE_REF) -> " +autoFund.getAftWSSTradeRef()+ " and AppID (AFT_RID_APP_ID) -> "+autoFund.getAftAppIDRID());
		}
		logger.debug("method End - updateOutboundMessageStatus()");
	}
	
	/**
	 * Store the associated Argon client
	 * @param client
	 */
	public void setArgonClient(Client client) throws MessageSenderException {
		if (client == null) {
			throw new MessageSenderException("In order to send messages to Argon, the Argon Client object cannot be null");
		}
		this.client = client;
		try {
			this.clientname = this.client.getClientNodeAddress().getCanonicalName();
		} catch (ClientException ex) {
			//do nothing.		
		}
	}

	/**
	 * 
	 * @param argonSendHandler
	 * @throws MessageSenderException
	 */
	public void initHandler(ArgonSendHandler argonSendHandler) throws MessageSenderException {
		logger.debug("method Start - initHandler()");
		this.instance = argonSendHandler;
		this.terminated = false;
		logger.debug("method End - initHandler()");
	}

	/**
	 * 
	 * @throws MessageSenderException
	 */
	private void createArgonSender() throws MessageSenderException {
		logger.debug("method Start - createArgonSender()");
		try {
			// Create the Argon Sender for the required message type
			if (client != null) {
				logger.info("Creating Sender for " + this.clientname + " sending messages of message type " + this.messageType);
				logger.debug("messageType -> " + this.messageType);				
				argonSender = client.createSender(this.messageType);
				logger.debug("IS CLIENT CONNECTED"+client.getConnected());
				logger.info("Sender  for " + this.clientname + " sending messages of message type " + this.messageType + " created");
			}
		} catch (ClientException ce) {
			logger.debug("Exception occured while creating Argon Sender --->" + ce);
			throw new MessageSenderException(ce);
		}
		logger.debug("method End - createArgonSender()");
	}

	public void startHandler() {
		logger.debug("method Start - startHandler()");
		logger.info("Starting ArgonSendHandler for " + this.clientname);
		try {
			// Create the required Argon Sender
			//TODO: 
			if(argonSender == null ){
			createArgonSender();
			}
		} catch (MessageSenderException mse) {
			logger.error("MessageSenderException: Error encountered while creating Argon Sender" + mse.getMessage());
			return;
		}
		// Spawning & Configuring a new child Sender thread
		Thread messageSender = null;
		messageSender = new Thread(new MessageSender(clientname + "[" + this.messageType + "]"), clientname + "[" + this.messageType + "]");
		messageSender.start();
		try {
			// Don't complete until the sender thread have finished
			if (messageSender != null) {
				messageSender.join();
			}
		} catch (InterruptedException ex) {
			logger.error("InterruptedException during wait():", ex);
		}
		// Remove the sender as we have been terminated
		/*if (this.client.getConnected()) {
			try {
				System.out.println("this.client.removeSender(this.argonSender) !!");
				this.client.removeSender(this.argonSender);
			} catch (ClientException ex) {
				logger.error("ClientException while removing Argon Sender (" + clientname + ")", ex);
			}
		}*/
		logger.debug("method End - startHandler()");
	}

	/**
	 * Method for determining whether the message about to be sent has already been sent before
	 */
	public boolean isDuplicate(Long messageID, String messageType) throws ClientException {
		
		if (this.client.getHaveSentMessage(messageType)) {
			String lastAppId = this.client.getLastApplicationID(messageType).trim();
			int lastSentAppId; 
			if(lastAppId.trim().equalsIgnoreCase("")||lastAppId.trim().equalsIgnoreCase("Initialised")||lastAppId == null)
			{
				lastSentAppId = 0;
			}
			else{
				lastSentAppId = Integer.parseInt(lastAppId.trim());
			}
			if (lastSentAppId < messageID.intValue()) // not duplicate
				return false;
			else // Duplicate message detected
			{
				logger.error("Argon Message with Application ID " + messageID.intValue()+ " has already been published to Argon but is still present in the RBSGBL_AUTO_FUND message table as UNSENT");
				return true;
			}
		}
		// Not sent this message before so just go ahead
		return false;
	}

	/**
	 * Provide the PersistenceHandlerImpl that will be used to poll the OUTBOUND_MESSAGE table.
	 * 
	 * @param tpectBO Business Object Impl
	 */
	public void setMessagePersistenceHandler(AutoFundMessageBS autoFundMessageBS) {
		this.autoFundMessageBS = autoFundMessageBS;
	}

	public void changeLogLevelToDEBUG() {
		logger.setLevel(Level.ALL);
	}

	/**
	 * 
	 */
	public void changeLogLevelToINFO() {
		logger.setLevel(Level.INFO);
	}

	/**
	 * 
	 * @return
	 */
	public int getMessageVersion() {
		return messageVersion;
	}

	/**
	 * 
	 * @param messageVersion
	 */
	public void setMessageVersion(int messageVersion) {
		this.messageVersion = messageVersion;
	}

	/**
	 * 
	 * @param messageType
	 */
	public void setMessageType(String messageType) {
		this.messageType = messageType;
	}

	/**
	 * 
	 * @param checkForDuplicates
	 */
	public void setCheckForDuplicates(boolean checkForDuplicates) {
		this.checkForDuplicates = checkForDuplicates;
	}

	/**
	 * @return Returns the messageType.
	 */
	public String getMessageType() {
		return messageType;
	}

	public Sender getArgonSender() {
		return argonSender;
	}

	public List getListUnsentMsgs() {
		return listUnsentMsgs;
	}

	public void setListUnsentMsgs(List listUnsentMsgs) {
		this.listUnsentMsgs = listUnsentMsgs;
	}

	public Client getClient() {
		return client;
	}

}