/*******************************************************************************
 * @ClassName 		: MessageSenderException.java
 * @Author 	  		: joshinc
 * @Date 	  		: Aug 12, 2008
 * @Organization 	: RBS - IDC
 * 
 * Modification History
 * **************************************************************************************************************
 * Date 			Version 		Modified By 			Description
 * **************************************************************************************************************
 * Aug 12, 2008 	1.0	 			joshinc					Initial Version.
 * 
 */
package com.rbs.rbsgbl.loaniq.funding.exception;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/**
 * Exception class for AutoFunding message sending related expetions.
 * @author  joshinc
 * @version  ,Aug 12, 2008
 * @see     
 */
public class MessageSenderException extends Exception {

	private static final long serialVersionUID = 1L;

	protected static Log log = LogFactory.getLog(MessageSenderException.class.getName());
	
	private Throwable originalException = null;
	  
	  /** Creates a new instance of MessageSenderException */
	  public MessageSenderException(Throwable e)
	  {
	    super(e);
	    log.error("Error occured : " + e.getMessage());
	    this.originalException = e;
	  }
	  
	  public MessageSenderException(String msg)
	  {
		  super(msg);
		  log.error("Error occured : " + msg);
		  this.originalException = new Throwable(msg);
	  }

}
