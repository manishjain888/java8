/*******************************************************************************
 * @ClassName 		: AutoFundMessageBSImpl.java
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
import org.apache.log4j.Logger;
import com.rbs.rbsgbl.loaniq.funding.datastore.data.AutoFund;
import com.rbs.rbsgbl.loaniq.funding.exception.AutoFundingException;
import com.rbs.rbsgbl.loaniq.funding.process.AutoFundMessage;

/**
 *	Business Service Interface Implimentation for the AutoFunding messages.
 * @author  joshinc
 * @version  ,Aug 12, 2008
 * @see     
 */
public class AutoFundMessageBSImpl implements AutoFundMessageBS {
	private static Logger logger = Logger.getLogger(AutoFundMessageBSImpl.class);
	public AutoFundingMessageDAO autoFundingMessageDAO = null;
	public AutoFundMessage autoFundMessage;
	public AutoFundMessageBSImpl() {
	}
	
	/**
	 * Outbound status update after send.
	 */
	public void updateOutboundMessageStatus(AutoFund autoFund) throws AutoFundingException,Exception {
		if (logger.isDebugEnabled()) {
			logger.debug(">>>>>>>>method Start - updateOutboundMessageStatus()>>>>>>>>");
		}
		try {
			autoFundingMessageDAO.updateOutboundMessageStatus(autoFund);
		} catch (AutoFundingException ne) {
			logger.error("Exception is :" + ne.getMessage());
			throw new AutoFundingException(ne.getMessage());
		}
		if (logger.isDebugEnabled()) {
			logger.debug(">>>>>>>>method End - updateOutboundMessageStatus()>>>>>>>>");
		}
	}


	public ArrayList<AutoFund> getConfirmMessageList() throws AutoFundingException, Exception {
		return (ArrayList<AutoFund>) autoFundingMessageDAO.getConfirmMessageList();
	}

	public AutoFundingMessageDAO getAutoFundingMessageDAO() {
		return autoFundingMessageDAO;
	}

	public void setAutoFundingMessageDAO(AutoFundingMessageDAO autoFundingMessageDAO) {
		this.autoFundingMessageDAO = autoFundingMessageDAO;
	}

	public String getXMLMessage(AutoFund autoFund) throws AutoFundingException,Exception {		
		return autoFundMessage.getXMLMessage(autoFund);
	}

	public void selectHeaderMessages() throws AutoFundingException {
		// TODO Auto-generated method stub
		
	}

	public void setAutoFundMessage(AutoFundMessage autoFundMessage) {
		this.autoFundMessage = autoFundMessage;
	}

	public void updateArgonAck(AutoFund object) throws AutoFundingException, Exception {
		autoFundingMessageDAO.updateArgonAck(object);
		
	}

	public AutoFund getAutoFundObjForExternalNumber(HashMap map) throws AutoFundingException, Exception {
		
		return autoFundingMessageDAO.getAutoFundObjForExternalNumber(map);
	}

	public String getMsgStatusCode(String status) throws AutoFundingException, Exception {
		return autoFundingMessageDAO.getMsgStatusCode(status);
		
	}

}
