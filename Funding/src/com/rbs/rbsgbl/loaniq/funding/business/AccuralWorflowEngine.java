package com.rbs.rbsgbl.loaniq.funding.business;

import java.util.HashMap;
import org.apache.log4j.Logger;
import org.springframework.context.ApplicationContext;
import com.rbs.rbsgbl.loaniq.funding.constants.FundConstant;
import com.rbs.rbsgbl.loaniq.funding.datastore.data.FundMapper;
import com.rbs.rbsgbl.loaniq.funding.datastore.data.FundMessage;
import com.rbs.rbsgbl.loaniq.funding.datastore.data.FundReq;
import com.rbs.rbsgbl.loaniq.funding.datastore.data.WSSMapper;
import com.rbs.rbsgbl.loaniq.funding.util.FundUtil;
import com.rbs.rbsgbl.loaniq.generic.application.RbsBatchApplication;

public class AccuralWorflowEngine {
	
	private static Logger logger = Logger.getLogger("com.rbs.rbsgbl.loaniq.funding.business.AccuralWorflowEngine");

	public AccuralWorflowEngine() {
		super();
	}

	public void processAccuralRecord(FundReq fundReq) throws Exception{
		try
		{
			logger.debug("/--------------------  Accural Workflow ----------------/");
			logger.debug("\t\t\t\t FundReq RID - "+fundReq.getOstCOF().getTransID());
			ApplicationContext context = RbsBatchApplication.getAppContext();
			FundDataProcessBS fundDataProcessBS = (FundDataProcessBS) context.getBean("fundDataProcessBS");
			HashMap rskBkDtlMp = null;
			rskBkDtlMp = fundDataProcessBS.fetchRiskBookDetails(fundReq);
			if(rskBkDtlMp!=null){
				fundReq.setRiskBookCode((String)rskBkDtlMp.get("RISK_BOOK_CDE"));
				fundReq.setRiskBookDesc((String)rskBkDtlMp.get("RISK_BOOK_DSC"));
				logger.debug("Risk Book Code ::: "+fundReq.getRiskBookCode()+"Risk Book Desc ::: "+fundReq.getRiskBookDesc());
			}
			
			FundMessage fundMessage = FundMapper.createFundMessageObject(fundReq);
			
			//Check Transaction Type
			if(fundReq.getOstCOF().getTransType().trim().equalsIgnoreCase("OPMT") ||fundReq.getOstCOF().getTransType().trim().equalsIgnoreCase("ROPMT") )
			{
				//Check Transaction Status
				if(fundReq.getOstCOF().getTransStatus().trim().equalsIgnoreCase("LWREL") || fundReq.getOstCOF().getTransStatus().trim().equalsIgnoreCase("RELSD")
					|| fundReq.getOstCOF().getTransStatus().trim().equalsIgnoreCase("CNCLD"))
				{
					//Check Break Funded
					logger.debug("fundReq.getOstCOF().getTransEffDate()  "+fundReq.getOstCOF().getTransEffDate());
					logger.debug("fundReq.getOstCOF().getOstRepriceDate()  "+fundReq.getOstCOF().getOstRepriceDate());
					if(FundUtil.dateCompare(fundReq.getOstCOF().getTransEffDate(), fundReq.getOstCOF().getOstRepriceDate())<0)
					{
						fundMessage.setProcessQueueCode(FundConstant.FUNDING_AMEND_INDICATOR_AMEND);
						fundMessage.setAmendmentIndicator(FundConstant.FUNDING_MESSAGE_PENDING);
						if(checkFundMessageExists(fundReq)>0){
							fundMessage = processWSSMapRef(fundMessage);
							updateFundMessage(fundMessage,fundReq);
						}
					else{
						if(fundReq.getOstCOF().getTransStatus().trim().equalsIgnoreCase("CNCLD")) {
							logger.debug("Not Valid Accural Transaction as Trans Status - "+fundReq.getOstCOF().getTransStatus());
							return;
						}
						else{
							fundMessage.setFundReqRID(FundUtil.fundSeqID(fundMessage, 0));
							fundMessage.setWssTradeRef(FundUtil.accWallStreetTradeRef(fundMessage));
							fundMessage = processWSSMapRef(fundMessage);
							insertFundMessage(fundMessage);
						}
					}					
				}
				else{
					logger.debug("Not a Valid Accural Record as - Effecttive Date is greater than Repricing Date");
					return;
				}				
			}
			else{
				logger.debug("Not a Valid Accural Transaction Status - "+fundReq.getOstCOF().getTransStatus());
				return;
			}
		}
		else{
			logger.debug("Not a Valid Accural Payment Transaction Type"+fundReq.getOstCOF().getTransType());
			return;
		}
		}catch(Exception e){
			throw new Exception("Error in processing the Accural Record for fund req"+fundReq.getOstCOF().toString());
		}
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
		
	private int checkFundMessageExists(FundReq fundReq) throws Exception{
		try
		{
			ApplicationContext context = RbsBatchApplication.getAppContext();
			FundDataProcessBS fundDataProcessBS = (FundDataProcessBS) context.getBean("fundDataProcessBS");
			HashMap map = fundDataProcessBS.findFundMessage(fundReq);
			if(map!=null && !map.isEmpty())
				return 1;
		}
		catch(Exception e){
			throw new Exception("Error in checking the Fundmessage existence "+e);
		}
		return 0;
	}
	
	private void insertFundMessage(FundMessage fundMessage)  throws Exception{
		
		try{
			ApplicationContext context = RbsBatchApplication.getAppContext();
			FundDataProcessBS fundDataProcessBS = (FundDataProcessBS) context.getBean("fundDataProcessBS");
			fundDataProcessBS.persistFundMessage(fundMessage);
		}
		catch(Exception e){
			throw new Exception("Error in inserting the FundMessage  "+e);
		}
	}
	
	private void updateFundMessage(FundMessage fundMessage, FundReq fundReq) throws Exception{
		
		try{
			ApplicationContext context = RbsBatchApplication.getAppContext();
			FundDataProcessBS fundDataProcessBS = (FundDataProcessBS) context.getBean("fundDataProcessBS");
			if(fundReq.getOstCOF().getTransStatus().trim().equalsIgnoreCase("RELSD")){
				logger.debug("FundMessage  - "+fundMessage.toString());
				fundDataProcessBS.updateFundMessageForRELSD(fundMessage);
			}
			else{
				fundDataProcessBS.updateFundMessage(fundMessage);
			}
		}
		catch(Exception e){
			throw new Exception("Error in inserting the FundMessage  "+e);
		}
	}
}
