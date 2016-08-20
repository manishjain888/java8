/*******************************************************************************
 * @ClassName 		: ArgonClientHandler.java
 * @Author 	  		: joshinc
 * @Date 	  		: Aug 12, 2008
 * @Organization 	: RBS - IDC
 * 
 * Modification History
 * **************************************************************************************************************
 * Date 			Version 		Modified By 			Description
 * **************************************************************************************************************
 * Aug 12, 2008 			1.0	 			joshinc					Initial Version.
 * 
 */
package com.rbs.rbsgbl.loaniq.funding.process.messagesender;

import java.util.List;
import org.apache.log4j.Logger;
import com.rbs.rbsgbl.loaniq.funding.exception.AutoFundingException;
import com.rbs.rbsgbl.loaniq.funding.exception.MessageSenderException;
import com.rbsfm.argon.client.cga.Client;
import com.rbsfm.argon.client.cga.ClientException;
import com.rbsfm.argon.client.cga.ClientNodeAddress;

/**
 * 
 * @author joshinc
 * @version ,Aug 12, 2008
 * @see
 */
public class ArgonClientHandler implements GenericHandler {
	private static Logger logger = Logger.getLogger(ArgonClientHandler.class.getName());
	private boolean terminated = false;
	// String representation of this client. Used for logging purposes
	private String src_clientName;
	// Argon required objects for this client handler.
	private Client argonClient = null;
	private ClientNodeAddress src_cna = null;
	private ArgonSendHandler argonSendHandler = null;
	

	public boolean isTerminated() {
		return terminated;
	}

	/**
	 * Set the Argon client object
	 */
	public void setArgonClient(Client client) {
		this.argonClient = client;
	}

	/**
	 * Set the Argon client node address
	 */
	public void setClientNodeAddress(ClientNodeAddress cna) {
		this.src_cna = cna;
		this.src_clientName = cna.getCanonicalName();
	}

	private void connectArgonClient() {
		logger.debug("method Start - connectArgonClient()");
		try {
			logger.debug("Is ArgonClient Connected ? "+argonClient.getConnected());
			if (argonClient.getConnected() == false) // not connected yet
			{				
				argonClient.connect(src_cna);
				logger.debug("Argon client " + this.src_clientName + " got connected Successfully");
			}
		} catch (ClientException ex) {
			logger.error("Argon client " + this.src_clientName + " is having issues connecting to Argon \r\n" + ex.getMessage());
		} catch (Exception e) {
			logger.debug("exception occured while conneting to argon------->" + e);
		}
		logger.debug("method End - connectArgonClient()");
	}

	public void initHandler() throws AutoFundingException {
		logger.debug("method Start - initHandler()");
		// reset the terminated flag
		this.terminated = false;
		// Initialise the associated Argon Senders
		try {
			argonSendHandler.initHandler(argonSendHandler);
		} catch (MessageSenderException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		logger.debug("method End - initHandler()");
	}

	public void startHandler() {
		logger.debug("method Start - startHandler()");
		logger.info("Starting client handler for Argon client " + this.src_clientName);
		try {
			connectArgonClient();
			if (this.argonClient.getConnected() && !terminated) {
				argonSendHandler.setArgonClient(argonClient);
				argonSendHandler.startHandler();
			}
		} catch (Throwable t) {
			logger.error("Unexpected error encountered in startHandler() method of " + this.getClass().getName(), t);
		}
		logger.debug("method End - startHandler()");
	} // end of startHandler()

	public String getArgonClientName() {
		return src_clientName;
	}

	public ArgonSendHandler getArgonSendHandler() {
		return argonSendHandler;
	}

	public void setArgonSendHandler(ArgonSendHandler argonSendHandler) {
		this.argonSendHandler = argonSendHandler;
	}

	public void setSrc_clientName(String src_clientName) {
		this.src_clientName = src_clientName;
	}

	public void setSrc_cna(ClientNodeAddress src_cna) {
		this.src_cna = src_cna;
	}
}
