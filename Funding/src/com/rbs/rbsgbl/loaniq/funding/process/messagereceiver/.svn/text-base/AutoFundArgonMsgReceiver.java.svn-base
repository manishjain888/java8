package com.rbs.rbsgbl.loaniq.funding.process.messagereceiver;
/*******************************************************************************
 * @ClassName 		: AutoFundArgonMsgReceiver.java
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
import org.apache.log4j.Logger;
import org.springframework.beans.BeansException;
import com.rbs.rbsgbl.loaniq.generic.application.RbsBatchApplication;
import com.rbs.rbsgbl.loaniq.generic.messagereceiver.GenericMessageReceiver;
/**
 * This class is the starting point for AutoFunding Acknowledgement Argon Message Receiver program. 
 * It is generic in nature and can be configured to receive messages from a specified sink.
 */
public class AutoFundArgonMsgReceiver extends RbsBatchApplication {	
	private static Logger logger = Logger.getLogger(AutoFundArgonMsgReceiver.class.getName());
	public static boolean windowServiceStopRequest;
	private GenericMessageReceiver messagereceiver = null;

	/**
	 * This is the main method and starting point of the Process. This will call the RbsBatchApplication.loadCombinedNonTxnContext() with the xml
	 * AutoFundMsgReceiverArgonConf.xml. After the Xml is loaded the processFlow() method will be called through spring injection
	 * 
	 * @param args  <AutoFundMsgReceiverArgonConf.xml>
	 * @exception
	 */
	public static void main(String[] args) {
		logger.debug("method Start - main()");
		String newArgs[] = new String[2];
		newArgs[0] = args[1];
		newArgs[1] = "funding/datastore/datastore.spring.xml";
		if (args.length < 1) {
			logger.error("You need to specify the name of the Spring Configuration file you want to use");
			logger.error("Usage : AutoFundArgonMsgReceiver AutoFundMsgReceiverArgonConf.xml");
			System.exit(0);
		}
		try {
			loadCombinedNonTxnContext(newArgs);
			logger.debug("The Context Loading Completed ");
		} catch (Throwable t) {
			logger.error("Exception encountered running the Message Receiver:", t);
		}
		logger.debug("method End - main()");
	} // end of main()

	/**
	 * This method is invoked from the RbsBatchApplication.processFlow(). This method contains the core processing logic of the interface. It runs
	 * once at a time and process the messages, generates the xml for argon and send the same to Argon for update. This method inturn calls the go
	 * method.
	 */	
	public void doProcessing() {
		try {
			log.debug("Method Start - doProcessing() ");
			go();
			logger.info("AutoFundArgonMsgReceiver Application finished");
			System.exit(0);
		} catch (BeansException e) {
			log.error("Error in Creating the bean in doProcessing()of AutoFundArgonMsgReceiver " + e.getMessage());
			doAbnormalEnd("Error in Creating the bean in doProcessing()of AutoFundArgonMsgReceiver " + e.getMessage());
			e.printStackTrace();
		} catch (Exception e) {
			log.error("Error in Processing the interface request of AutoFundArgonMsgReceiver " + e.getMessage());
			doAbnormalEnd("Error in Processing the interface request of AutoFundArgonMsgReceiver " + e.getMessage());
			e.printStackTrace();
		}
	}

	/**
	 * This is the method containing main processing logic This will actually lead to reading messages from Argon and persisting them into Staging
	 * Tables
	 * 
	 * @param None
	 * @exception None
	 */
	private void go() {
		logger.debug("method Start - go()");
		// Get Handlers Information
		logger.debug("About to get Handlers Information");
		String strHandlerInfo = messagereceiver.getHandlerInfo();
		logger.debug("Handlers Information---->" + strHandlerInfo);
		logger.debug("About to initialize Handlers");
		messagereceiver.initHandlers();
		// The following call would start handlers.For now, We just have 1 handler to start
		// but the program is flexible enough to accomodate more handlers in future
		logger.debug("About to start Handlers");
		messagereceiver.startHandlers();
		logger.debug("method End - go()");
	} // end of go()


	public GenericMessageReceiver getMessagereceiver() {
		return messagereceiver;
	}

	public void setMessagereceiver(GenericMessageReceiver messagereceiver) {
		this.messagereceiver = messagereceiver;
	}

	public static void setWindowServiceStopRequest(boolean windowServiceStopRequest) {
		WindowsServiceVO.windowServiceStopRequest = windowServiceStopRequest;
	}

	public static boolean isWindowServiceStopRequest() {
		return windowServiceStopRequest;
	}
} 
