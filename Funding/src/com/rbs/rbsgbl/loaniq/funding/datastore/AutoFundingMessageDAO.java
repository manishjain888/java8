/*******************************************************************************
 * @ClassName 		: AutoFundingMessageDAO.java
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
package com.rbs.rbsgbl.loaniq.funding.datastore;

import java.util.ArrayList;
import java.util.HashMap;
import com.rbs.rbsgbl.loaniq.funding.datastore.data.AutoFund;
import com.rbs.rbsgbl.loaniq.funding.exception.AutoFundingException;

/**
 * The DAO interface for AutoFunding sending and acknowledgement receiving prcoesses.
 * @author joshinc
 * 
 */
public interface AutoFundingMessageDAO {
	
	public void updateOutboundMessageStatus(AutoFund autoFund) throws AutoFundingException, Exception;

	public ArrayList<AutoFund> getConfirmMessageList() throws AutoFundingException, Exception;

	public void updateArgonAck(AutoFund object)throws AutoFundingException, Exception;

	public AutoFund getAutoFundObjForExternalNumber(HashMap map)throws AutoFundingException, Exception;

	public String getMsgStatusCode(String status)throws AutoFundingException, Exception;
	
	}
