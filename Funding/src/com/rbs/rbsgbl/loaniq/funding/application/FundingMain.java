/****************************************************************************************************************
 * @ClassName	 : FundingMain.java						                                                			 
 * @Author 		 : Yashwant Singh                                                                                  		
 * @Date 		 : Jun 10, 2008                                                                                   	
 * @Organization : RBS - IDC                                                                                     
 *																												
 * Modification History                                                                                         
 * **************************************************************************************************************
 * Date 			Version			Modified By	    		    Description											
 * **************************************************************************************************************
 * Jun 10, 2008			1.0			Yashwant					Initial Version.									
 */
package com.rbs.rbsgbl.loaniq.funding.application;

import java.util.Date;
import org.apache.log4j.Logger;
import com.rbs.rbsgbl.loaniq.funding.process.FundDataProcessor;
import com.rbs.rbsgbl.loaniq.funding.process.messagereceiver.AutoFundArgonMsgReceiver;

/**
 * This is the entry point class for running funding data
 */
public class FundingMain {
	// Class level variables
	private static Logger logger = Logger.getLogger(FundingMain.class);
	public static String[] mainArgs = new String[1];

	/**
	 * The main() method is invoked with a single argument "stop" when we attempt to stop any of theprograms that is running as a service.
	 * 
	 * @param args
	 * @exception
	 */
	public static void main(String[] args) {
		logger.debug(" method main() invoked at" + new Date(System.currentTimeMillis()));
		logger.debug("main(): Number of arguments passed is " + args.length);
		for (int i = 0; i < args.length; i++) {
			logger.debug("main(): Argument " + i + " is: " + args[i]);
		}
		if (args.length < 1 && args.length > 4) {
			logger.debug("main() has been called with improper number of arguments.");
			logger.debug("You need to specify the name of the Class which you want to invoke and the name of the xml config file");
			System.exit(0);
		} else if (args.length == 1) {
			if (args[0].equals("stop")) {
				mainArgs = args;
				//FundDataProcessor.windowServiceStopRequest = true;
				AutoFundArgonMsgReceiver.setWindowServiceStopRequest(true);
				logger.debug("WINDOWS SERVICE WRAPPER: STOP request has been received. Waiting for all non daemon threads to finish before stopping.");
			}
		} else if (args.length == 2) {
			mainArgs = args;
			if (args[0].equals("AutoFundArgonMsgReceiver")) {
				logger.debug("----- mainArgs[0] is  -----" + mainArgs[0]);			
				do {
					AutoFundArgonMsgReceiver.main(mainArgs);
				} while (!mainArgs[0].equals("stop"));
				return;
			}
		} else if (args.length == 4) {
			mainArgs = args;
			// REPEAT_DELAY_TIME = Integer.parseInt(args[2]);
			if (args[0].equals("FundDataProcessor")) { // FundDataProcessor FundMessageConf.xml AutoFundMsgSenderConfiguration.xml 1000
				mainArgs[0] = args[1];
				mainArgs[1] = args[2];
				mainArgs[2] = args[3];
				logger.debug("----- mainArgs[0] is -----" + mainArgs[0]);
				logger.debug("----- mainArgs[1] is -----" + mainArgs[1]);
				logger.debug("----- mainArgs[2] is -----" + mainArgs[2]);
				FundDataProcessor.main(mainArgs);
			}
		} else {
			logger.debug("main() has been called with improper arguments.");
			System.exit(0);
		}
		logger.debug(" method End - main()");
	}// end of main()
}
