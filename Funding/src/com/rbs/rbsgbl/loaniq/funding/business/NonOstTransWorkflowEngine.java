package com.rbs.rbsgbl.loaniq.funding.business;

import java.util.HashMap;
import java.util.List;
import org.apache.log4j.Logger;
import org.springframework.context.ApplicationContext;

import com.rbs.rbsgbl.loaniq.funding.constants.FundConstant;
import com.rbs.rbsgbl.loaniq.funding.datastore.data.FundHistory;
import com.rbs.rbsgbl.loaniq.funding.datastore.data.FundMapper;
import com.rbs.rbsgbl.loaniq.funding.datastore.data.FundMessage;
import com.rbs.rbsgbl.loaniq.funding.datastore.data.FundReq;
import com.rbs.rbsgbl.loaniq.funding.datastore.data.WSSMapper;
import com.rbs.rbsgbl.loaniq.funding.util.FundUtil;
import com.rbs.rbsgbl.loaniq.generic.application.RbsBatchApplication;

public class NonOstTransWorkflowEngine {

	private static Logger logger = Logger.getLogger("com.rbs.rbsgbl.loaniq.funding.business.NonOstTransWorkflowEngine");
	
	public NonOstTransWorkflowEngine() {
		super();
	}
	
	public FundMessage processFundReq(FundReq fundReq, List<FundHistory> fundHistoryList) throws Exception{
		
		logger.debug("Processing for NON OST Tran Record....");
		ApplicationContext context = RbsBatchApplication.getAppContext();
		FundDataProcessBS fundDataProcessBS = (FundDataProcessBS) context.getBean("fundDataProcessBS");
		FundMessage fundMessage = null;
		FundHistory fundHistory = FundUtil.findBaselineRecord(fundReq,fundHistoryList);
		
		logger.debug("fundHistory  Exist  "+ fundHistory);
		int quckRePrcFundCnt = 0;
		try
		{
			fundMessage  = FundMapper.createFundMessageObject(fundReq);
			fundMessage.setProcessQueueCode(FundConstant.FUNDING_AMEND_INDICATOR_AMEND);
			fundMessage.setBreakFundIndicator("Y");
			
			if(fundHistory!=null){
				fundMessage.setVersionNum(fundHistory.getBptNumver()+1);				
				fundMessage.setPreviosBaseleineValue(fundHistory.toString());				
			}
			
			fundMessage.setWssTradeRef(FundUtil.wallStreetTradeRef(fundMessage, quckRePrcFundCnt,1,fundMessage.getTransTypeCode()));//Seq ID will be 1 by default
			if(fundHistory!=null){
				//compare values of current record in baseline image table and update baseline record along with version number
				if(FundUtil.checkSignificantChange(fundReq, fundHistory)){	
					fundDataProcessBS.updateFundHistory(fundReq,fundHistory);	
					logger.debug("Version Num while updating :: "+fundHistory.getBptNumver());
					fundMessage.setFundReqRID(FundUtil.nonOSTFundSeqID(fundMessage,fundMessage.getVersionNum()));
					fundMessage  = rollerSeqForWSSTradeRef(fundMessage,fundHistory.getBptNumver());
					fundMessage = processWSSMapRef(fundMessage);
					fundDataProcessBS.persistFundMessage(fundMessage);
														
				}
			}
			else{//insert into baseline record
				fundMessage.setFundReqRID(FundUtil.nonOSTFundSeqID(fundMessage,fundMessage.getVersionNum()));
				logger.debug("Version Num while inserting :: "+fundMessage.getVersionNum());
				fundDataProcessBS.persistFundHistory(fundHistory);
				fundMessage  = rollerSeqForWSSTradeRef(fundMessage,1);
				fundMessage = processWSSMapRef(fundMessage);
				fundDataProcessBS.persistFundMessage(fundMessage);
				
			}
		}
		catch(Exception e){
			throw new Exception("Error in NON OST Workflow Engine while processing Fund Req  - "+fundReq.getOstCOF().toString());
		}
		return fundMessage;
	}	
	
	
	private FundMessage rollerSeqForWSSTradeRef(FundMessage fundMessage, int versionNum) throws Exception{
		try{
			int quckRePrcFundCnt = 0;
			if(fundMessage.getTransTypeCode().trim().equalsIgnoreCase("QRADJ") ||
					fundMessage.getTransTypeCode().trim().equalsIgnoreCase("QLRPR") ||
					fundMessage.getTransTypeCode().trim().equalsIgnoreCase("QDRPR") ||
					fundMessage.getTransTypeCode().trim().equalsIgnoreCase("DQADJ"))
			{
				ApplicationContext context = RbsBatchApplication.getAppContext();
				FundDataProcessBS fundDataProcessBS = (FundDataProcessBS) context.getBean("fundDataProcessBS");
				quckRePrcFundCnt = fundDataProcessBS.findQuickRepriceFund(fundMessage);
			}
			fundMessage.setWssTradeRef(FundUtil.wallStreetTradeRef(fundMessage, quckRePrcFundCnt, versionNum,fundMessage.getTransTypeCode()));
		}
		catch(Exception e){
			throw new Exception("Error while calling rollerSeqForWSSTradeRef() for FundMessage -  "+fundMessage.toString(),e);
		}
		return fundMessage;
	}
	
	private FundMessage processWSSMapRef(FundMessage fundMessage) throws Exception{
		ApplicationContext context = RbsBatchApplication.getAppContext();
		FundDataProcessBS fundDataProcessBS = (FundDataProcessBS) context.getBean("fundDataProcessBS");
		HashMap hashMap = fundDataProcessBS.fetchWSSMapRef(fundMessage);
		if(hashMap!=null && hashMap.get("BPT_WSS_MAP_REF")!=null){
			fundMessage.setWssMapRef((String)hashMap.get("BPT_WSS_MAP_REF"));
		}
		else
		{
			int wssMapCount = 0;
			wssMapCount = fundDataProcessBS.wssMapCount(fundMessage);
			logger.debug("wssMapCount --- "+wssMapCount);
			WSSMapper wssMapper = new WSSMapper(fundMessage.getTransUpdateTimestamp(),wssMapCount);
			logger.debug("  WssMapper.getWssMapRef() - "+wssMapper.getWssMapRef());
			
			try{
				if(wssMapCount==0)
					fundDataProcessBS.insertWSSMapRef(wssMapper);
				else
				{
					fundDataProcessBS.updateWSSMapRef(wssMapper);
				}
			}
			catch(Exception e){
				throw new Exception("Error in method processWSSMapRef() - "+fundMessage.toString(),e);
			}
			fundMessage.setWssMapRef(wssMapper.getWssMapRef());
		}
		
		if(hashMap!=null && hashMap.get("BPT_WSS_EXT_TRADE_ID")!=null)
			fundMessage.setWssExternalTradeID((String)hashMap.get("BPT_WSS_EXT_TRADE_ID"));
		
		return fundMessage;
	}
}