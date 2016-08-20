package com.rbs.rbsgbl.loaniq.funding.process.messagereceiver;
/*******************************************************************************
 * @ClassName 		: FundingArgonMessageReceiver.java
 * @Author 	  		: joshinc
 * @Date 	  		: Aug 20, 2008
 * @Organization 	: RBS - IDC
 * 
 * Modification History
 * **************************************************************************************************************
 * Date 			Version 		Modified By 			Description
 * **************************************************************************************************************
 * Aug 12, 2008 	1.0	 			joshinc			Initial Version.
 * 
 */
import java.util.List;
import org.apache.log4j.Logger;
import com.rbs.rbsgbl.loaniq.funding.datastore.AutoFundMessageBS;
import com.rbs.rbsgbl.loaniq.generic.exception.MessageReceiverException;
import com.rbs.rbsgbl.loaniq.generic.messagereceiver.GenericMessageReceiver;
import com.rbs.rbsgbl.loaniq.generic.messagereceiver.handlers.GenericHandler;

/**
 * Main class for the message receiving application. The class is responsible for the configuration of all 
 * the required Argon clients, streams and routes for LOANIQ.
 */
public class ArgonMessageReceiver implements GenericMessageReceiver {
	Logger logger = Logger.getLogger("com.rbs.rbsgbl.loaniq.funding.process.messagereceiver.ArgonMessageReceiver");
	private boolean appTerminating = false;
	private AutoFundMessageBS autoFundMessageBS = null;
	private static String argonMessageType = "";
	// Map for holding all of the configured clientHandlers
	public List<GenericHandler> clientHandlers = null;
	public ArgonMessageReceiver() {
	}
	/**
	 * Method that will spawn a thread for each of the Client Handlers
	 */
	public void startHandlers() {
		logger.debug("method Start - startHandlers()");
		// Start each of the configured ArgonClientHandlers
		for (GenericHandler clientHandler : clientHandlers) {
			if (!this.appTerminating) {
				clientHandler.startHandler();
				logger.debug("Handler -" + clientHandler + "started successfully");
			}
		} // end of for loop
		logger.debug("method End - startHandlers()");
	}

	public String getHandlerInfo() {
		logger.debug("method Start - getHandlerInfo()");
		StringBuffer output = new StringBuffer();
		// Get Handler info for all of the configured ArgonClientHandlers
		output.append("Message Receiver:\n");
		for (GenericHandler clientHandler : clientHandlers) {
			logger.debug("appTerminating----->" + this.appTerminating);
			if (!this.appTerminating) {
				output.append("-- " + clientHandler.getHandlerInfo() + "\n");
			}
		}
		logger.debug("method End - getHandlerInfo()");
		return output.toString();
	}

	/**
	 * Method that will spawn a thread for each of the Client Handlers
	 */
	public void initHandlers() {
		logger.debug("method Start - initHandlers()");
		// Start each of the configured ArgonClientHandlers
		for (int i = 0; i < clientHandlers.size(); i++) {
			try {
				if (!this.appTerminating)
					clientHandlers.get(i).initHandler(clientHandlers.get(i));
				logger.debug(clientHandlers.get(i) + " intialized successfully ");
			} catch (MessageReceiverException ex) {
				logger.error("Exception encountered while initialising handlers:", ex);
			}
		}
		logger.debug("Handler(s) initialized successfully");
		logger.debug("method End - initHandlers()");
	}

	public static String getArgonMessageType() {
		return argonMessageType;
	}
	/**
	 * Method for setting the underlying ClientHandlers
	 */
	public void setHandlers(List<GenericHandler> clientHandlers) {
		this.clientHandlers = clientHandlers;
	}
	public void setPersistenceHandler(AutoFundMessageBS autoFundMessageBS) {
		this.autoFundMessageBS = autoFundMessageBS;
	}
}
