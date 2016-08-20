/*******************************************************************************
 * @ClassName 		: AutoFundingMessageDAOImpl.java
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
import java.util.List;
import org.apache.log4j.Logger;
import org.springframework.dao.DataAccessException;
import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;
import com.rbs.rbsgbl.loaniq.funding.datastore.data.AutoFund;
import com.rbs.rbsgbl.loaniq.funding.datastore.data.FundMessage;
import com.rbs.rbsgbl.loaniq.funding.exception.AutoFundingException;

/**
 * Data Access Object for AutoFunding messages related Data operations.
 * 
 * @author joshinc
 * @version ,Aug 12, 2008
 * @see
 */
public class AutoFundingMessageDAOImpl extends SqlMapClientDaoSupport implements AutoFundingMessageDAO {
	private static Logger logger = Logger.getLogger(AutoFundingMessageDAOImpl.class);

	public AutoFundingMessageDAOImpl() {
		super();
	}


	public void updateOutboundMessageStatus(AutoFund autoFund) throws AutoFundingException, Exception {
		if (logger.isDebugEnabled()) {
			logger.debug("method Start AutoFundingMessageDAOImpl- updateOutboundMessageStatus()");
		}
		try {
			getSqlMapClientTemplate().update("RBSGBL_FUNDING_MESSAGE.updateOutboundMessageStatus", autoFund);
			if(autoFund.getAftMSGStatusCode().trim().equalsIgnoreCase("SENT")){
				logger.debug("Updating the Funding Stage table RBSGBL_FUNDING_STAGE to set FST_IND_AF_MSG_PROCESS = 'Y' " +
						"since AutoFunding Message with AFT_RID_FUND_REQ : "+autoFund.getAftFundReqRID()+" has been succesfully sent to Argon.");
				FundMessage fundStageTable=new FundMessage();
				fundStageTable.setFundReqRID(autoFund.getAftFundReqRID());
				fundStageTable.setArgonMsgProcessIndicator("Y");
				getSqlMapClientTemplate().update("LoanIQ_FundMessage.updateFundMessageStatus",fundStageTable);
			}
		} catch (DataAccessException da) {
			throw new AutoFundingException("DataAccessException is :" + da);
		}
		catch(Exception e){
			throw new Exception(" Exception is :: "+e);
		}
		if (logger.isDebugEnabled()) {
			logger.debug("method End - updateOutboundMessageStatus()");
		}
	}



	public ArrayList<AutoFund> getConfirmMessageList() throws AutoFundingException, Exception {
		List list = null;
		try {
			list = getSqlMapClientTemplate().queryForList("RBSGBL_FUNDING_MESSAGE.selectUnsentMessages");
		} catch (DataAccessException da) {
			throw new AutoFundingException("DataAccessException is :" + da);
		}
		catch(Exception e){
			throw new Exception(" Exception is :: "+e);
		}
		return (ArrayList<AutoFund>) list;
	}

	
	public void updateArgonAck(AutoFund autoFund) throws AutoFundingException, Exception {
		if (logger.isDebugEnabled()) {
			logger.debug("method Start AutoFundingMessageDAOImpl- updateOutboundMessageStatus()");
		}
		try {
			getSqlMapClientTemplate().update("RBSGBL_FUNDING_MESSAGE.updateArgonAck", autoFund);
			
		} catch (DataAccessException da) {
			throw new AutoFundingException("DataAccessException is :" + da);
		}
		catch(Exception e){
			throw new Exception(" Exception is :: "+e);
		}
		if (logger.isDebugEnabled()) {
			logger.debug("method End - updateOutboundMessageStatus()");
		}
		
	}


	public AutoFund getAutoFundObjForExternalNumber(HashMap external_number) throws AutoFundingException, Exception {
		if (logger.isDebugEnabled()) {
			logger.debug("method Start AutoFundingMessageDAOImpl- updateOutboundMessageStatus()");
		}
		AutoFund autoFundObj;
		try {
			 autoFundObj = (AutoFund)getSqlMapClientTemplate().queryForObject("RBSGBL_FUNDING_MESSAGE.getAutoFundObjForExternalNumber",external_number);
		} catch (DataAccessException da) {
			throw new AutoFundingException("DataAccessException is :" + da);
		}
		catch(Exception e){
			throw new Exception(" Exception is :: "+e);
		}

		if (logger.isDebugEnabled()) {
			logger.debug("method End - updateOutboundMessageStatus()");
		}
		return autoFundObj;
	}

	public String getMsgStatusCode(String statusCode) throws AutoFundingException, Exception {
		if (logger.isDebugEnabled()) {
			logger.debug("method Start AutoFundingMessageDAOImpl- getMsgStatusCode()");
		}
		String status ;
		try {
			Object obj  = getSqlMapClientTemplate().queryForObject("RBSGBL_FUNDING_MESSAGE.getAckMsgStatusCode",statusCode);
			
			if(obj!=null)
				status =(String)obj;
			else{
				status = "";
				logger.error("Unable to find the Status Code :: " + statusCode + " in RBSGBL_STATIC_DETAILS");
			}
//			status = (String) getSqlMapClientTemplate().queryForObject("RBSGBL_FUNDING_MESSAGE.getAckMsgStatusCode",statusCode);		
		} catch (DataAccessException da) {
			throw new AutoFundingException("DataAccessException is :" + da);
		}
		catch(Exception e){
			throw new Exception(" Exception is :: "+e);
		}


		if (logger.isDebugEnabled()) {
			logger.debug("method End - updateOutboundMessageStatus()");
		}
		return status;
	}
}
