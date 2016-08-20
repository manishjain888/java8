package com.rbs.rbsgbl.loaniq.funding.process.messagereceiver;

/*******************************************************************************
 * @ClassName 		: ArgonReceiveHandler.java
 * @Author 	  		: joshinc
 * @Date 	  		: Aug 20, 2008
 * @Organization 	: RBS - IDC
 * 
 * Modification History
 * **************************************************************************************************************
 * Date 			Version 		Modified By 			Description
 * **************************************************************************************************************
 * Aug 12, 2008 	1.0	 	joshinc			Initial Version.
 * 
 */
import java.util.Map;
import java.util.Set;
import org.apache.log4j.Level;
import org.apache.log4j.Logger;
import com.rbs.rbsgbl.loaniq.generic.common.Util;
import com.rbs.rbsgbl.loaniq.generic.exception.MessageProcessingException;
import com.rbs.rbsgbl.loaniq.generic.exception.MessageReceiverException;
import com.rbs.rbsgbl.loaniq.generic.messageprocessor.MessageProcessor;
import com.rbs.rbsgbl.loaniq.generic.messagereceiver.handlers.GenericHandler;
import com.rbs.rbsgbl.loaniq.generic.messagereceiver.handlers.ReceiveHandler;
import com.rbsfm.argon.client.cga.BaseMessage;
import com.rbsfm.argon.client.cga.Client;
import com.rbsfm.argon.client.cga.ClientException;
import com.rbsfm.argon.client.cga.ReceivedAssociatedFileList;
import com.rbsfm.argon.client.cga.ReceivedMessage;
import com.rbsfm.argon.client.cga.Receiver;
import com.rbsfm.argon.client.cga.StreamList;

/**
 * This Class is responsible for receiving Funding Argon Acknowledgement messages from specified Argon streams.
 * @author joshinc
 */
public class ArgonReceiveHandler implements ReceiveHandler {
	private static Logger logger = Logger.getLogger("com.rbs.rbsgbl.loaniq.funding.process.messagereceiver.ArgonReceiveHandler");
	private Object lock = new Object();
	private Thread t;
	public enum ReceiverType {
		SINGLE
	};
	// Argon related objects
	private Receiver argonReceiver = null;
	private Client argonClient = null;
	private StreamList streamList = null;
	// Vars for JMX
	private int suspendPeriod = 60000; // period of time before argon receiving commences. 0 indicates receiver is running.
	// -1 indicates receiver has been stopped
	private int numProcessedMessages = 0;
	private int numProcessedMessageSets = 0;
	private int numProcessedMessagesInSet = 0;
	static boolean terminated = false;
	private String messageType = "";
	private MessageProcessor mp = null;
	private String clientname = "";
	private String streamDetails = "";
	private ReceiverType receiverType = ReceiverType.SINGLE;
	private ThreadGroup tg = null;
	private ReceiveHandler instance = null;
	private long timeoutPeriod;
	private int pollRetries = 1;
	private int pollCount = 1;
	private WindowsServiceVO windowsServiceVO = null;

	public WindowsServiceVO getWindowsServiceVO() {
		return this.windowsServiceVO;
	}

	/**
	* 
	* @param windowsServiceVO 
	*/
	public void setWindowsServiceVO(WindowsServiceVO windowsServiceVO) {
		this.windowsServiceVO = windowsServiceVO;
		if (windowsServiceVO != null) {
			if (WindowsServiceVO.windowServiceStopRequest) {
				terminated = true;
			}
		}
	}

	/**
	 * Create a receiver handler for the specified streams list
	 * 
	 * @param stream
	 *            details of streams we will recieve argon messages from.
	 */
	public ArgonReceiveHandler(Map<String, String> streamsList) {
		logger.debug("method Start - ArgonReceiveHandler() - Constructor");
		if (streamsList != null) {
			streamList = new StreamList();
			Set<Map.Entry<String, String>> streams = streamsList.entrySet();
			for (Map.Entry<String, String> stream : streams) {
				String clientname = stream.getValue();
				this.messageType += stream.getKey() + " ";
				try {
					if (clientname != null) {
						streamList.addStream(stream.getKey());
						this.streamDetails += clientname + "[" + stream.getKey() + "]";
					} else {
						streamList.addStream(stream.getKey(), null);
						this.streamDetails += stream.getKey();
					}
				} catch (ClientException ce) {
					throw new RuntimeException(ce); // cannot continue
				}
			}
		}
		logger.debug("method End - ArgonReceiveHandler() - Constructor");
	}

	/**
	 * The method that will call the processMessage method of the Funding Acknowledgement prcoessor class.	
	 * 
	 * @param message
	 * @param attachedFiles
	 * @return
	 * @throws ClientException
	 */
	private boolean processMessage(BaseMessage message, ReceivedAssociatedFileList attachedFiles) throws ClientException {
		logger.debug("method Start - processMessage()");
		// Hand the received Argon message off to the corresponding processor Impl
		if (this.mp != null) {
			// Process the message using the corresponding message processor impl
			return this.mp.processMessage(message, attachedFiles);
		} else {
			throw new RuntimeException("MessageProcessorImpl for processing messages of type " + message.getMessageType() + " is null.  Thread will terminate");
		}
	}

	/**
	 * Method for pausing the thread for a given time period -1 indicates the thread should be suspended until otherwise notified 0 indicates thread
	 * should not be paused Other value - thread will be paused for the specified time
	 */
	private void pauseReceiver(int waitPeriod) {
		synchronized (lock) {
			// Check that the app has not been terminated
			// if (!this.terminated) {
			if (!WindowsServiceVO.windowServiceStopRequest) {
				try {
					if (waitPeriod == -1)
						lock.wait();
					else
						// Wait for the allocated time period
						lock.wait(waitPeriod);
				} catch (InterruptedException ex) {
					// Not interested as it just means a notification has occurred
				}
			}
		}
	}

	/**
	 * Set the flag so the receiver terminates.
	 */
	public void terminateHandler() {
		// Only terminate if we are running
		if (!WindowsServiceVO.windowServiceStopRequest) {
			WindowsServiceVO.windowServiceStopRequest= true;
			// terminated = true;
			// interrupt in case anything is currently waiting.
			synchronized (lock) {
				lock.notifyAll(); // just in case we are waiting to start or are paused
			}
		}
	}

	/**
	 * public void setThreadGroup(ThreadGroup tg) { this.parentThreadGroup = tg; }
	 */
	public void initHandler(GenericHandler handler) throws MessageReceiverException {
		logger.debug("method Start - initHandler()");
		if (handler instanceof ReceiveHandler)
			this.instance = (ReceiveHandler) handler;
		logger.debug("Handler " + this.instance + " initialized successfully");
		// this.terminated = false;
		WindowsServiceVO.windowServiceStopRequest=false;
		logger.debug("method End - initHandler()");
	}

	/**
	 * Creates the Argon receiver object
	 */
	private void createArgonReceiver() throws MessageReceiverException {
		logger.debug("method Start - createArgonReceiver()");
		// Configure the Argon receiver based on the supplied stream list
		try {
			// Create the Argon receiver for the required message type / streamlist
			if (argonClient != null) {
				logger.info("Creating receiver handler for " + this.clientname + " receiving " + this.streamDetails);
				argonReceiver = argonClient.createReceiver(streamList);
				logger.info("Receive handler for  client name" + this.clientname + " receiving stream details " + this.streamDetails + " created");
			}
		} catch (ClientException ce) {
			logger.debug("Exception occured while creating Argon receiver --->" + ce);
			throw new MessageReceiverException(ce);
		}
		logger.debug("method End - createArgonReceiver()");
	}

	/**
	 * (non-Javadoc)
	 * @see com.rbs.rbsgbl.loaniq.generic.messagereceiver.handlers.GenericHandler#startHandler()
	 */
	public void startHandler() {
		logger.debug("method Start - startHandler() of Argon Receive Handler");
		logger.info(" Started receive handler for client name" + this.clientname + " receiving stream details" + this.streamDetails);
		// clear down stats
		this.numProcessedMessageSets = 0;
		this.numProcessedMessages = 0;
		this.numProcessedMessagesInSet = 0;
		tg = new ThreadGroup(this.clientname + "[" + this.streamDetails + "]_receiveHandler");
		try {
			try {
				// Create the required Argon receiver
				createArgonReceiver();
			} catch (MessageReceiverException ex) {
				logger.error("MessageReceiverException while creating Argon Receiver (" + clientname + ")", ex);
				return;
			}
			// Configure the receiver thread(s) accordingly
			Thread messageReceiver = null;
			logger.debug("receiverType------>" + this.receiverType);
			switch (this.receiverType) {
			case SINGLE:
				messageReceiver = new Thread(tg, new MessageReceiver(clientname + "[" + streamDetails + "]_receiveHandler(MessageReceiver)"), clientname + "[" + streamDetails
						+ "]_receiveHandler(MessageReceiver)");
				messageReceiver.start();
				break;
			}
			try {
				// Don't complete until the receiver thread(s) have finished
				if (messageReceiver != null)
					messageReceiver.join();
			} catch (InterruptedException ex) {
				logger.error("InterruptedException during wait():", ex);
			}
			logger.error("    Terminated receive handler for " + this.clientname + " receiving " + this.streamDetails);
			// Remove the corresponding receiver as we have been terminated
			if (this.argonClient.getConnected()) {
				try {
					this.argonClient.removeReceiver(this.argonReceiver);
				} catch (ClientException ex) {
					logger.error("ClientException while removing Argon Receiver (" + clientname + ")", ex);
				}
			}
		} catch (Throwable t) {
			logger.error("Unexpected error encountered in run() method of ArgonReceiveHandler", t);
		}
		logger.debug("method End - startHandler()");
	}

	/**
	 * Setter for injecting the type of receiver that should be configured Can be SINGLE/SET/BOTH This will then create A receiver for single
	 * messages/message sets or both this will reduce the threading overhead as only the required receiver threads are spawned.
	 */
	public void setArgonReceiverType(ReceiverType type) {
		receiverType = type;
	}
	/**
	 * Class for receiving Argon messages
	 * 
	 * @author joshinc
	 */
	private class MessageReceiver implements Runnable {
		ReceivedMessage message = null;
		Logger logger = null;
		String receiverName = "";

		public MessageReceiver(String threadName) {
			logger = Logger.getLogger("com.rbs.rbsgbl.loaniq.generic.messagereceiver.handlers.ArgonReceiveHandler$MessageReceiver" + threadName);
			receiverName = threadName;
			logger.debug("receiverName------------>" + receiverName);
		}

		public void run() {
			logger.debug("method Start - run() of Message Receiver inner class");
			boolean argonMessageProcessed = false;
			while (WindowsServiceVO.windowServiceStopRequest == false) {
				// Should the thread be paused ?
				if (suspendPeriod != 0) // pause the receiver
				{
					pauseReceiver(suspendPeriod);
					// has the app been terminated whilst waiting
					if (WindowsServiceVO.windowServiceStopRequest)
						break;
				}
				try {
					// Try and obtain a message from Argon
					logger.info("Running Receiver for " + pollRetries + " time(s)...(-1 will retry indefinatly)");
					logger.info("Receiver timeout set for " + getTimeoutPeriod() + " miliseconds");
					logger.info("Receiver poll retiers set for " + getPollRetries() + "...current count is " + pollCount);
					message = argonReceiver.receive(getTimeoutPeriod()); // if -1 will wait indefinitely for the message to come
					logger.info("message is ========= " + message);
					if (message != null) // Message received successfully. So, process it accordingly
					{
						String longErrorMessage = "";
						try {
							// Process the argon message
							argonMessageProcessed = instance.processArgonMessage(message, message.getAssociatedFileList());
							if (!argonMessageProcessed) {
								logger.error("There has been an error while trying to process the Argon Acknowledgement message with " + "App id :" + message.getApplicationID() + " and Argon id :"
										+ message.getArgonID() + " this message will be " + "acknowledged so as to receive next message.");
								message.acknowledge();
							}
						} catch (Throwable mpe) { // Processing of the message has failed
							logger.debug("exception string" + mpe.toString());
							if (mpe instanceof MessageProcessingException) {
								longErrorMessage = Util.toStringStackTrace(mpe);
								logger.error("Exception while processing Nucleus XML message of " + message.getApplicationID() + "---as a result of ---->" + longErrorMessage);
							} else {
								logger.error("Unable to process Nucleus XML message of " + message.getApplicationID() + "---as a result of ---->" + mpe.getMessage());
							}
							continue;
						}
						try {
							if (argonMessageProcessed) {
								message.acknowledge(); // Message was processed successfully
								logger.debug("Processed message ID" + message.getApplicationID());								
								numProcessedMessages++;
								logger.debug("No Argon mesaage processed succesfully" + numProcessedMessages);
							}
							continue;
						} catch (ClientException e) {
							e.printStackTrace();
							logger.error("Client Exception while acknowledge the message with id " + message.getApplicationID());
						}
					}
					if (getPollRetries() != -1) {
						if (pollCount >= getPollRetries()) {
							WindowsServiceVO.windowServiceStopRequest= true;
							logger.debug("argonReceiver.getJMXReceivedMessageCount() :" + argonReceiver.getJMXReceivedMessageCount());
							logger.info("Retry counter exceeds limit .....terminating thread with exit Code 9");
							if (argonReceiver.getJMXReceivedMessageCount() == 0) {
								System.exit(9);
							}
						}
						pollCount++;
					}
				} catch (Exception ex) {
					ex.printStackTrace();
					logger.error("ClientException while trying to receive Argon message (" + clientname + ")", ex);
				} catch (Throwable t) {
					t.printStackTrace();
					logger.error("Throwable while trying to receive Argon message (" + clientname + ")", t);
				}
			}
			logger.debug("method End - run()");
		}
	}

	/**
	 * This method attempts two distinct operations and as a result is defined as transactional within the datastore.spring.xml config file. Firstly
	 * it will attempt to process the received argon message and create / update the corresponding STORM object representation of the message. Trade,
	 * Position, Instrument or Cashflow. Having done phase 1 it will then write the message payload to the argon_received_messages table. Both
	 * operations must work for the tx to be committed.
	 */
	public synchronized boolean processArgonMessage(BaseMessage message, ReceivedAssociatedFileList attachedFiles) throws ClientException {
		logger.debug("method Start - processArgonMessage()");
		return processMessage(message, attachedFiles);
	}

	public String getMessageType() {
		return messageType;
	}

	public int getNumberProcessedMessages() {
		return numProcessedMessages;
	}

	public int getNumberProcessedMessageSets() {
		return numProcessedMessageSets;
	}

	public int getNumberProcessedMessagesInSet() {
		return numProcessedMessagesInSet;
	}

	public boolean getReceiverRunning() {
		if (suspendPeriod == -1)
			return false;
		else
			return true;
	}

	public String getHandlerInfo() {
		return "(ArgonReceiveHandler) " + streamDetails;
	}

	public Thread getThread() {
		return this.t;
	}

	public Receiver getReceiver() {
		return this.argonReceiver;
	}

	public int getSuspendReceiving() {
		return suspendPeriod;
	}

	public void startReceiving() {
		setRunning();
	}

	public void setArgonClient(Client client) {
		this.argonClient = client;
		try {
			this.clientname = argonClient.getClientNodeAddress().getCanonicalName();
		} catch (ClientException ex) {
			logger.error("MessagereceiverException while trying to get Argon client name (" + clientname + ")", ex); // clientName unlikely to be
			// set here
		}
	}

	/**
	 * Set the message parser impl for this client handler
	 */
	public void setMessageProcessor(MessageProcessor mp) {
		this.mp = mp;
	}

	/**
	 * Wait period before receiving commences. -1 signifies receiver will never start
	 */
	public void setSuspendPeriod(int waitPeriod) {
		this.suspendPeriod = waitPeriod;
	}

	/**
	 * Start the receiver
	 */
	public void setRunning() {
		suspendPeriod = 0;
		// In case the thread is currently suspended / paused
		synchronized (lock) {
			lock.notifyAll();
		}
	}

	public void changeLoggingLevel(String level) {
		logger.setLevel(Level.toLevel(level));
	}

	public String getMessageProcessorClassName() {
		return mp.getClass().getName();
	}

	public int getPollRetries() {
		return pollRetries;
	}

	public void setPollRetries(int pollRetries) {
		this.pollRetries = pollRetries;
	}

	public long getTimeoutPeriod() {
		return timeoutPeriod;
	}

	public void setTimeoutPeriod(long timeoutPeriod) {
		this.timeoutPeriod = timeoutPeriod;
	}

	public void setTerminated(boolean terminated) {
		ArgonReceiveHandler.terminated = terminated;
	}
}
