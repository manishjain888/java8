/*******************************************************************************
 * @ClassName 		: AutoFundingException.java
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

/**
 * Exception class for AutoFunding related exception.
 * @author joshinc
 */
public class AutoFundingException extends Exception
{
  	private static final long serialVersionUID = 1L;
  	private Throwable originalException = null;
  
  /** Creates a new instance of FeedProcessorException */
  public AutoFundingException(Throwable e)
  {
    super(e);
    this.originalException = e;
  }
  
  public AutoFundingException(String e)
  {
    super(e);
    this.originalException = new Throwable(e);
  }
  
}
