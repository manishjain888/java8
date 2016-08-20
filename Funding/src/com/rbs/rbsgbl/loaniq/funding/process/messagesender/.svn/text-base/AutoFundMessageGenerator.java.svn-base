/*******************************************************************************
 * @ClassName 		: AutoFundMessageGenerator.java
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
import org.springframework.beans.BeansException;
import com.rbs.rbsgbl.loaniq.funding.datastore.AutoFundMessageBS;
import com.rbs.rbsgbl.loaniq.funding.exception.AutoFundingException;
import com.rbs.rbsgbl.loaniq.funding.process.messagesender.ArgonClientHandler;
import com.rbs.rbsgbl.loaniq.generic.application.RbsBatchApplication;
import com.rbsfm.argon.client.cga.ClientException;

/**
 * The Main class for sending out AutoFunding messages to Argon Queues.
 * 
 * @author joshinc
 * @version Aug 12, 2008
 * @see
 */
public class AutoFundMessageGenerator extends RbsBatchApplication {
	// Logger to log.
	private static Logger logger = Logger.getLogger(AutoFundMessageGenerator.class.getName());
	// Buisness Service class
	private AutoFundMessageBS autoFundMessageBS = null;
	// Argon client handler.
	private ArgonClientHandler argonClientHandler = null;

	/**
	 * Entry point for AutoFunding interface and initiate the loading of context also.
	 * 
	 * @param args
	 */
	public static void main(String[] args) {
		logger.info("AutoFundMessageGenerator Application started");
		try {
			if (logger.isDebugEnabled()) {
				logger.debug("method Start - main()");
			}
			if (args.length < 1) {
				logger.error("Please specify the name of the Spring Configuration file you want to use");
				logger.error("Usage : FundingMain ArgonConfiguration.xml");
				logger.error("Example : FundingMain ArgonConfiguration.xml");
				System.exit(0);
			}
			if (logger.isDebugEnabled()) {
				logger.debug("Loading Non Transactional Context");
			}
			loadCombinedNonTxnContext(args[0]);
		} catch (Throwable t) {
			logger.error("Exception in starting AutoFundMessageGenerator :", t);
		}
	}

	/**
	 * Starts the AutoFundMessageGenerator processing for data extraction and formatting.
	 */
	public void doProcessing() {
		try {
			argonConnect();
			logger.info("/------------AutoFundMessageGenerator Application finished/------------");
			// System.exit(0);
			return;
		} catch (BeansException e) {
			logger.error("Error in Creating the bean in doProcessing() " + e.getMessage());
			doAbnormalEnd("Error in Creating the bean in doProcessing() " + e.getMessage());
			e.printStackTrace();
		}
	}

	/**
	 * 
	 */
	public void argonConnect() {
		try {
			logger.info("/------------------------------------------------------------------------------------------------------/");
			logger.info("					AutoFundMessageGenerator Application Started		");
			logger.info("/------------------------------------------------------------------------------------------------------/");
			int count = 0;
			List list = autoFundMessageBS.getConfirmMessageList();
			count = list.size();
			if (count > 0) {
				logger.debug("autoFundMessageBS.getConfirmMessageList().size() is -> " + autoFundMessageBS.getConfirmMessageList().size());
				logger.debug("Number of AutoFunding Messages to be Sent to Argon : " + autoFundMessageBS.getConfirmMessageList().size());
				ArgonSendHandler argonSendHandler = argonClientHandler.getArgonSendHandler();
				argonSendHandler.setListUnsentMsgs(null);
				argonSendHandler.setListUnsentMsgs(list);
				if (argonSendHandler.getArgonSender() == null) {
					argonClientHandler.initHandler();
					argonClientHandler.startHandler();
				} else if (argonSendHandler.getArgonSender() != null) {
					logger.debug("argonSendHandler.getArgonSender().getConnected() STATUS" + argonSendHandler.getArgonSender().getConnected());
					if (argonSendHandler.getArgonSender().getConnected()) {
						// argonClientHandler.initHandler();
						argonClientHandler.startHandler();
					}
				}
				// TODO : The message sending has completed , pause for 10 minutes.!! And if stop request has been recieved then disconnect argon.
			} else {
				// TODO: There are no unsent messages to be Sent.
				logger.debug("autoFundMessageBS.getConfirmMessageList().size() is ->" + autoFundMessageBS.getConfirmMessageList().size());
				logger.debug("/------------There are no unsent AutoFunding Messages to be Sent to Argon------------------------------/");
			}
		} catch (AutoFundingException mse) {
			logger.error("Error encountered while trying to retrieve AutoFundingMessages from table." + mse);
		} catch (Exception mse) {
			logger.error("Error encountered while initializing ArgonSendHandler." + mse);
		}
		logger.info("/------------------------------------------------------------------------------------------------------/");
		logger.info("					AutoFundMessageGenerator Application finished		");
		logger.info("/------------------------------------------------------------------------------------------------------/");
	}

	public void disconnectArgon() {
		try {
			if (argonClientHandler.getArgonSendHandler().getClient().getConnected()) {
				logger.debug("/------------Trying to remove Argon Sender------------/");
				System.out.println("argonClientHandler.getArgonSendHandler().getArgonSender()" + argonClientHandler.getArgonSendHandler().getArgonSender());
				argonClientHandler.getArgonSendHandler().getClient().removeSender(argonClientHandler.getArgonSendHandler().getArgonSender());
				logger.debug("/------------Trying to disconnect Argon Client------------/");
				argonClientHandler.getArgonSendHandler().getClient().disconnect();
				// Find the root thread group
				ThreadGroup root = Thread.currentThread().getThreadGroup().getParent();
				while (root.getParent() != null) {
					root = root.getParent();
				}
				// Visit each thread group
				visit(root, 0);
				return;
			}
		} catch (ClientException e) {
			logger.error("ERROR in stopping Argon !!");
			e.printStackTrace();
		}
	}

	// This method recursively visits all thread groups under `group'.
	public static void visit(ThreadGroup group, int level) {
		// Get threads in `group'
		int numThreads = group.activeCount();
		logger.debug("numThreads  " + numThreads);
		Thread[] threads = new Thread[numThreads * 2];
		numThreads = group.enumerate(threads, false);
		// Enumerate each thread in `group'
		for (int i = 0; i < numThreads; i++) {
			// Get thread
			Thread thread = threads[i];
			logger.debug("Thread name " + thread.getName());
			logger.debug("is Thread daemon ? " + thread.isDaemon());
		}
		// Get thread subgroups of `group'
		int numGroups = group.activeGroupCount();
		logger.debug("numGroups" + numGroups);
		ThreadGroup[] groups = new ThreadGroup[numGroups * 2];
		numGroups = group.enumerate(groups, false);
		// Recursively visit each subgroup
		for (int i = 0; i < numGroups; i++) {
			visit(groups[i], level + 1);
		}
	}

	public void setArgonClientHandler(ArgonClientHandler argonClientHandler) {
		this.argonClientHandler = argonClientHandler;
	}

	public void setAutoFundMessageBS(AutoFundMessageBS autoFundMessageBS) {
		this.autoFundMessageBS = autoFundMessageBS;
	}
}
