/*******************************************************************************
 * @ClassName 		: AutoFundMessageBS.java
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
package com.rbs.rbsgbl.loaniq.funding.datastore;

import java.util.ArrayList;
import java.util.HashMap;
import com.rbs.rbsgbl.loaniq.funding.datastore.data.AutoFund;
import com.rbs.rbsgbl.loaniq.funding.exception.AutoFundingException;

/**
 * Business Service Interface for the AutoFunding messages.
 * @author  joshinc
 * @version  ,Aug 12, 2008
 * @see     
 */
public interface AutoFundMessageBS {
	public void updateOutboundMessageStatus(AutoFund autoFund) throws AutoFundingException, Exception;

	public ArrayList<AutoFund> getConfirmMessageList() throws AutoFundingException, Exception;

	public String getXMLMessage(AutoFund omVO) throws AutoFundingException, Exception;

	public void updateArgonAck(AutoFund object)throws AutoFundingException, Exception;

	public AutoFund getAutoFundObjForExternalNumber(HashMap<String, String> hashmap)throws AutoFundingException, Exception;

	public String getMsgStatusCode(String status)throws AutoFundingException, Exception;
}
