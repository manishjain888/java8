package com.rbs.rbsgbl.loaniq.funding.business;

import java.math.BigDecimal;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.context.ApplicationContext;

import com.rbs.rbsgbl.loaniq.funding.constants.FundConstant;
import com.rbs.rbsgbl.loaniq.funding.datastore.data.BaseLinePortfolio;
import com.rbs.rbsgbl.loaniq.funding.datastore.data.COFSharePercentageDTO;
import com.rbs.rbsgbl.loaniq.funding.datastore.data.FetchWSSExternalTradeDTO;
import com.rbs.rbsgbl.loaniq.funding.datastore.data.FundHistory;
import com.rbs.rbsgbl.loaniq.funding.datastore.data.FundMapper;
import com.rbs.rbsgbl.loaniq.funding.datastore.data.FundMessage;
import com.rbs.rbsgbl.loaniq.funding.datastore.data.FundReq;
import com.rbs.rbsgbl.loaniq.funding.datastore.data.WSSMapper;
import com.rbs.rbsgbl.loaniq.funding.util.FundUtil;
import com.rbs.rbsgbl.loaniq.generic.application.RbsBatchApplication;

public class OstTransWorkflowEngine {
	
	private static Logger logger = Logger.getLogger("com.rbs.rbsgbl.loaniq.funding.business.OstTransWorkflowEngine");
	
	public OstTransWorkflowEngine() {
		super();
	}

	public FundMessage processFundReq(FundReq fundReq) throws Exception{		
		
		logger.debug("/--------------------  OST Trans Workflow ----------------/");
		
		if(fundReq.getOstCOF().getOstRepriceDate()==null)
		{
			logger.debug(" Fund Request Processing Skipped as Repricing Date and Expricy Date are both NULL for OST Tran RID :  "
					+ fundReq.getOstCOF().getTransID());
			return null;
		}
		
		FundMessage fundMessage  = FundMapper.createFundMessageObject(fundReq);
		ApplicationContext context = RbsBatchApplication.getAppContext();
		FundDataProcessBS fundDataProcessBS = (FundDataProcessBS) context.getBean("fundDataProcessBS");
		try{
			fundMessage.setTradeDate(fundMessage.getCurrentBussDate());
			if(FundUtil.migrationFlag==false){
				//*****************Check if its BackDated**************
				logger.debug("/-------- Back Dated Check -----");
				logger.debug("Effective Date :: "+fundReq.getOstCOF().getTransEffDate());
				logger.debug("currentBusDate :: "+fundMessage.getCurrentBussDate());
				if(FundUtil.dateCompare(fundReq.getOstCOF().getTransEffDate(), fundMessage.getCurrentBussDate())<0)
				{
					logger.debug("/----------------------- Back Dated : True ----------------");
					fundMessage.setProcessQueueCode(FundConstant.FUNDING_PROCESS_QUE_CDE_AMEND);
				}
				else
				{
					fundMessage.setProcessQueueCode(FundConstant.FUNDING_PROCESS_QUE_CDE_AUTO);
					logger.debug("/----------------------- Back Dated : False ----------------");
				}
				
				// *****************Check if its Break funded**************
				if(isBreakFunded(fundReq)){
					fundMessage.setBreakFundIndicator("Y");
					fundMessage.setProcessQueueCode(FundConstant.FUNDING_PROCESS_QUE_CDE_AMEND);
				}
				else{
					if(fundReq.getOstCOF().getTransType().trim().equalsIgnoreCase("PPYMT") || 
							fundReq.getOstCOF().getTransType().trim().equalsIgnoreCase("PRDCR"))
						return null;//Its not a valid funding Request
					
					else{
						if(!fundMessage.getProcessQueueCode().trim().equalsIgnoreCase(FundConstant.FUNDING_PROCESS_QUE_CDE_AMEND))
						{
							fundMessage.setProcessQueueCode(FundConstant.FUNDING_PROCESS_QUE_CDE_AUTO);
							fundMessage.setBreakFundIndicator("N");
						}
					}
				}
				
				/*********TD 2286 and Jerry mail of 13/02/2009********/
				if(fundReq.getOstCOF().getOstPriceOpt().trim().equalsIgnoreCase("FIXLT") && 
						(fundReq.getOstCOF().getTransType().trim().equalsIgnoreCase("QRADJ") ||
								fundReq.getOstCOF().getTransType().trim().equalsIgnoreCase("QLRPR")||
								fundReq.getOstCOF().getTransType().trim().equalsIgnoreCase("QDRPR")||
								fundReq.getOstCOF().getTransType().trim().equalsIgnoreCase("DQADJ")
						)
					)
				{
					return null;
				}
				
				if(fundReq.getOstCOF().getOstPriceOpt().trim().equalsIgnoreCase("FIXLT") )
					fundMessage.setProcessQueueCode(FundConstant.FUNDING_PROCESS_QUE_CDE_AMEND);
			}
			else{
				if(fundReq.getOstCOF().getOstPriceOpt().trim().equalsIgnoreCase("FIXLT") || fundReq.getOstCOF().getAmendQueue().trim().equalsIgnoreCase("Y"))
					fundMessage.setProcessQueueCode(FundConstant.FUNDING_PROCESS_QUE_CDE_AMEND);
				else
					fundMessage.setProcessQueueCode(FundConstant.FUNDING_PROCESS_QUE_CDE_AUTO);
				logger.debug("---------Skipping Back Dated Check for Migration-----------------");
			}
			
			

			logger.debug("ProcessQueue Code -  "+fundMessage.getProcessQueueCode().trim() + "Break Fund Indicator - "+fundMessage.getBreakFundIndicator());
		
		}catch(Exception e){
			throw new Exception("Error while processing Fund Request - "+fundReq.getOstCOF().toString(),e);
		}
		
		//*****************if its valid Funding Type****************
		try{
			fundMessage = processValidFundEvtType(fundMessage,fundReq);		
			logger.debug("ProcessQueue Code ----  "+fundMessage.getProcessQueueCode().trim() + "Break Fund Indicator --- "+fundMessage.getBreakFundIndicator());
				
			if(fundMessage!=null)
			{

				HashMap hashMap = fundDataProcessBS.fetchWSSMapRef(fundMessage);
				HashMap fundMap = fundDataProcessBS.findFundMessage(fundReq);
				fundMessage = processWSSMapRef(fundMessage,hashMap,fundMap);				
				
				fundMessage = processValidFundMsg(fundMessage,fundReq,fundMap);
						
				if(fundMessage==null)
					return null;
				//if((fundReq.getOstCOF().getTransStatus().trim().equalsIgnoreCase("PEND") || validTxnStatus(fundReq)) )//TD 1993
					if( validTxnStatus(fundReq) )
				{
					fundHistoryCheck(fundMessage,fundReq);
					
					logger.debug("hashMap " +hashMap + "  funfundMessage.getBranchCode() " +fundMessage.getBranchCode()
							+"  fundMessage.getExpenseCode(  )"+fundMessage.getExpenseCode()+ " fundMessage.getPortfolioCode() "+fundMessage.getPortfolioCode());
					
					if(hashMap==null )
					{
					
						if(FundUtil.isValueExists(fundMessage.getBranchCode()) && FundUtil.isValueExists(fundMessage.getExpenseCode()) &&
								FundUtil.isValueExists(fundMessage.getPortfolioCode()) && fundMessage.getTransStatus().trim().equalsIgnoreCase("RELSD"))
						{
							BaseLinePortfolio baseLinePortfolio = FundMapper.createBaseLinePortfolio(fundMessage);
							baseLinePortfolio.setBptWssMapRef(fundMessage.getWssMapRef());
							fundDataProcessBS.insertPortfolioAllocRecord(baseLinePortfolio);
						}
						else{
							calPortAllocForOUT(fundMessage,fundReq);
						}
					}//TD 536
					else if(hashMap != null && fundMessage.getTransStatus().trim().equalsIgnoreCase("RELSD"))
										{
										  if(fundMap.get("FST_WSS_ACTION_TYPE")!=null)
										  {
											if((fundMap.get("FST_WSS_ACTION_TYPE").toString().trim().equalsIgnoreCase("CANCEL FROM TRADE") 
													||fundMap.get("FST_WSS_ACTION_TYPE").toString().trim().equalsIgnoreCase("EARLY FULL REPAYMENT")) &&
													(hashMap.get("BPT_IND_SETTLE")==null || hashMap.get("BPT_IND_SETTLE").toString().trim().length()==0 
															|| hashMap.get("BPT_IND_SETTLE").toString().trim().equalsIgnoreCase("N")) )
											{
												fundDataProcessBS.updateSettlementIndicator(fundMessage);
											}
										  }
					}
					 //MECCT CHANGE
						
						if(fundMessage.getProcessQueueCode().trim().equalsIgnoreCase((FundConstant.FUNDING_PROCESS_QUE_CDE_AUTO)) && fundMessage.getFundAmount()>0
								&& fundMessage.getTransTypeCode().trim().equalsIgnoreCase("ADJST") 
								&& fundMessage.getTransUpdateUserID().trim().equalsIgnoreCase("LS2BATCH") 
								&& fundMessage.getFacilityCommitTransType().trim().equalsIgnoreCase("CPXFR"))
						{
							//Create new Object Having Previous Leg Info and Current leg info //TD 829
							HashMap previousLegInfo = fundDataProcessBS.fetchPreviousLegInfo(fundMessage);
							FetchWSSExternalTradeDTO fetchWSSExternalTradeDTO = new FetchWSSExternalTradeDTO();
							if(previousLegInfo!=null){
								fetchWSSExternalTradeDTO.setPreLegBranch((String)previousLegInfo.get("OTC_CDE_BRANCH"));
								fetchWSSExternalTradeDTO.setPrelegExpense((String)previousLegInfo.get("OTC_CDE_EXPENSE"));
								fetchWSSExternalTradeDTO.setPreLegPctRate(((BigDecimal)(previousLegInfo.get("OTC_PCT_RATE"))).doubleValue());
								fetchWSSExternalTradeDTO.setPreLegPortfolio((String)previousLegInfo.get("OTC_CDE_PORTFOLIO"));
								fetchWSSExternalTradeDTO.setCurrLegEffDate(fundMessage.getEffectiveDate());
								fetchWSSExternalTradeDTO.setCurrLegOstRID(fundMessage.getOutstandingRID());
								fetchWSSExternalTradeDTO.setCurrLegOstAccEndDate(fundMessage.getAccuralCycleEndDate());
							}else{
								logger.error("Previous leg information is null. "+fundMessage);
							}
							String bptExtTradeID  = fundDataProcessBS.fetchBptExtTradeID(fetchWSSExternalTradeDTO);	
							
							logger.debug("BPT_WSS_EXT_TRADE_ID   " +bptExtTradeID);
							//Concatenate Stub Reference 
							if(bptExtTradeID!=null && bptExtTradeID.trim().length()!=0){
								fundMessage.setWssStubRef(((fundMessage.getWssStubRef()!=null)?fundMessage.getWssStubRef():"") 
												+ ((bptExtTradeID!=null)?bptExtTradeID:""));
																
								fundDataProcessBS.updateWssStubRef(fundMessage);
								logger.debug(" Updated WSS Stub Ref " +fundMessage.getWssStubRef());
								}
							else {
								logger.debug("BPT_WSS_EXT_TRADE_ID  is null");
							}
						}					
				}
				else
					return null;
			}
		
		}catch(Exception e){
			throw new Exception("Error while processing Fund Request - "+fundReq.getOstCOF().toString(),e);
		}
		return fundMessage;
	}
	
	private FundMessage processWSSMapRef(FundMessage fundMessage, HashMap hashMap, HashMap fundMap) throws Exception{
		ApplicationContext context = RbsBatchApplication.getAppContext();
		FundDataProcessBS fundDataProcessBS = (FundDataProcessBS) context.getBean("fundDataProcessBS");
		
		
		if(hashMap!=null && hashMap.get("BPT_WSS_MAP_REF")!=null && ((String)hashMap.get("BPT_WSS_MAP_REF")).trim().length()!=0){
			fundMessage.setWssMapRef((String)hashMap.get("BPT_WSS_MAP_REF"));
			//	MECCT Change
			if(fundMessage.getTransTypeCode().trim().equalsIgnoreCase("ADJST") && fundMessage.getTransUpdateUserID().trim().equalsIgnoreCase("LS2BATCH") 
					&& fundMessage.getFacilityCommitTransType().trim().equalsIgnoreCase("CPXFR")){
				//--need to discuss TD#829
				fundMessage = genarateNewWSSMapRef(fundMessage);
				fundMessage.setFstWSSPrevTradeRef((String)hashMap.get("BPT_WSS_MAP_REF"));
			}
		}
		
		else if(fundMap!=null && fundMap.get("FST_WSS_MAP_REF")!=null && ((String)fundMap.get("FST_WSS_MAP_REF")).trim().length()!=0){
			logger.debug("  FST_WSS_MAP_REF    "+fundMap.get("FST_WSS_MAP_REF"));
			/*if(fundMessage.getTransUpdateUserID().trim().equalsIgnoreCase("LS2BATCH")){
				fundMessage = genarateNewWSSMapRef(fundMessage);
				fundMessage.setFstWSSPrevTradeRef((String)fundMap.get("FST_WSS_MAP_REF"));
			}
			else {*/
				fundMessage.setWssMapRef((String)fundMap.get("FST_WSS_MAP_REF"));
			//}
			return fundMessage;
		}			
		else
		{
			fundMessage = genarateNewWSSMapRef(fundMessage);
		}
		
		if(hashMap!=null && hashMap.get("BPT_WSS_EXT_TRADE_ID")!=null)
			fundMessage.setWssExternalTradeID((String)hashMap.get("BPT_WSS_EXT_TRADE_ID"));
		
		return fundMessage;
	}
	
	private FundMessage genarateNewWSSMapRef(FundMessage fundMessage) throws Exception{
		ApplicationContext context = RbsBatchApplication.getAppContext();
		FundDataProcessBS fundDataProcessBS = (FundDataProcessBS) context.getBean("fundDataProcessBS");	
		int wssMapCount = 0;
		wssMapCount = fundDataProcessBS.wssMapCount(fundMessage);
		logger.debug("wssMapCount --- "+wssMapCount);
		WSSMapper wssMapper = new WSSMapper(fundMessage.getTransUpdateTimestamp(),wssMapCount);
		logger.debug("  WssMapper.getWssMapRef() - "+wssMapper.getWssMapRef());
		
		try{
			if(wssMapCount==0)
				fundDataProcessBS.insertWSSMapRef(wssMapper);
			else{
				fundDataProcessBS.updateWSSMapRef(wssMapper);
			}
		}
		catch(Exception e){
			throw new Exception("Error in method processWSSMapRef() - "+fundMessage.toString(),e);
		}
		fundMessage.setWssMapRef(wssMapper.getWssMapRef());		
		
		return fundMessage;
	}
	
	
	private FundMessage rollerSeqForWSSTradeRef(FundMessage fundMessage, int fundSeqID) throws Exception{
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
			fundMessage.setWssTradeRef(FundUtil.wallStreetTradeRef(fundMessage, quckRePrcFundCnt, fundSeqID,fundMessage.getTransTypeCode()));
		}
		catch(Exception e){
			throw new Exception("Error in method rollerSeqForWSSTradeRef() for FundMessage - "+fundMessage.toString(),e);
		}
		return fundMessage;
	}
	
	
	private int findFundSeqID(FundMessage fundMessage, boolean cofRateExists) throws Exception{
		int fundSeqID = 0;
		try{
			if(cofRateExists){
				ApplicationContext context 			= RbsBatchApplication.getAppContext();
				FundDataProcessBS fundDataProcessBS = (FundDataProcessBS) context.getBean("fundDataProcessBS");
				fundSeqID = fundDataProcessBS.findFundSeqID(fundMessage);
			}
		}
		catch(Exception e){
			throw new Exception("Error in fetching the Seq ID in method findFundSeqID()  Fund Message -  "+fundMessage.toString(),e);
		}
		return fundSeqID;
	}
	
	private boolean isBreakFunded(FundReq fundReq) throws Exception{
		logger.debug("/----------------------- Break Funded Check ------------------");
		boolean breakFunded = false;
		if(fundReq.getOstCOF().getTransType().trim().equalsIgnoreCase("ID") || fundReq.getOstCOF().getTransType().trim().equalsIgnoreCase("DPSDR") 
			|| fundReq.getOstCOF().getTransType().trim().equalsIgnoreCase("DTLDR")){
			breakFunded = false;
		}
		else if(fundReq.getOstCOF().getTransType().trim().equalsIgnoreCase("QRADJ") || fundReq.getOstCOF().getTransType().trim().equalsIgnoreCase("QLRPR")||
				fundReq.getOstCOF().getTransType().trim().equalsIgnoreCase("QDRPR")||fundReq.getOstCOF().getTransType().trim().equalsIgnoreCase("DQADJ"))
		{
			//if(FundUtil.dateCompare(fundReq.getOstCOF().getTransEffDate(),fundReq.getOstCOF().getOstRepriceDate())<0){
				breakFunded = false;//TD 1994
			//}
		}
		else if(fundReq.getOstCOF().getTransType().trim().equalsIgnoreCase("ADJST") && (fundReq.getOstCOF().getTransUID().trim().equalsIgnoreCase("LS2BATCH"))
			&& (fundReq.getOstCOF().getFacTransType().trim().equalsIgnoreCase("CPXFR"))){
			breakFunded = false;//MECCT Change
		}
		else if(fundReq.getOstCOF().getTransType().trim().equalsIgnoreCase("RCMF")){
			try{
				ApplicationContext context = RbsBatchApplication.getAppContext();
				FundDataProcessBS fundDataProcessBS = (FundDataProcessBS) context.getBean("fundDataProcessBS");
				List<Date> dateRCMFList = fundDataProcessBS.findRepricingDateForRCMF(fundReq.getOstCOF());
				
				if(fundReq.getOstCOF().getTransEffDate()==null)
					breakFunded =false;
				else
				{
					for(Date rcmfDate:dateRCMFList){
						if(rcmfDate==null)
						{
							breakFunded =false;
							continue;
						}
						else
						{
							if(FundUtil.dateCompare(fundReq.getOstCOF().getTransEffDate(),rcmfDate) < 0){
								breakFunded = true;
								break;
							}
						}
					}
				}
			}
			catch(Exception e){
				throw new Exception("Error in fetching the Repricing Date for RCMF for FundReq-  "+fundReq.toString(),e);
			}
		}
		//		MECCT Change
		else if(fundReq.getOstCOF().getTransType().trim().equalsIgnoreCase("ADJST")&& !fundReq.getOstCOF().getTransUID().trim().equalsIgnoreCase("LS2BATCH"))
		{
			if(fundReq.getOstCOF().getFacTransCircleID()!=null && FundUtil.dateCompare(fundReq.getOstCOF().getTransEffDate(),fundReq.getOstCOF().getOstRepriceDate())<0){
			//if(fundReq.getOstCOF().getFacTransID()!=null && FundUtil.dateCompare(fundReq.getOstCOF().getTransEffDate(),fundReq.getOstCOF().getOstRepriceDate())<0){
				breakFunded = true;
			}				
		}
		else{
			if(FundUtil.dateCompare(fundReq.getOstCOF().getTransEffDate(),fundReq.getOstCOF().getOstRepriceDate())<0){
				logger.debug("Valid breakfund transaction since Reprice Date < Effective date");
				breakFunded = true;
			}
		}
		logger.debug("/----------------------- Break Funded - "+breakFunded+" ----------------");
		return breakFunded;
	}
	
	private FundMessage processValidFundEvtType(FundMessage fundMessage,FundReq fundReq){
		
		if(fundMessage.getProcessQueueCode()!=null && fundMessage.getProcessQueueCode().trim().equalsIgnoreCase(FundConstant.FUNDING_PROCESS_QUE_CDE_AUTO)){
			logger.debug("/----------------------- Amendment Indicator : N ------------------");	
			if(validTransType(fundReq)){
				if(validTransStatus(fundReq))
					fundMessage.setDealerListIndicator("Y");
				else
					fundMessage.setDealerListIndicator("N");
			}
			else{
				fundMessage.setDealerListIndicator("N");
				fundMessage.setProcessQueueCode("AMEND");
			}
		}
		else{
			fundMessage.setDealerListIndicator("N");
		}
		
		return fundMessage;
	}
	
	//	MECCT Change
	private boolean validTransType(FundReq fundReq){
		if(fundReq.getOstCOF().getTransType().trim().equalsIgnoreCase("ID")||fundReq.getOstCOF().getTransType().trim().equalsIgnoreCase("DPSDR")||
			fundReq.getOstCOF().getTransType().trim().equalsIgnoreCase("DTLDR")||fundReq.getOstCOF().getTransType().trim().equalsIgnoreCase("QRADJ")||
			fundReq.getOstCOF().getTransType().trim().equalsIgnoreCase("QLRPR")||fundReq.getOstCOF().getTransType().equalsIgnoreCase("QDRPR")||fundReq.getOstCOF().getTransType().trim().equalsIgnoreCase("DQADJ") || 
			fundReq.getOstCOF().getTransType().trim().equalsIgnoreCase("RCMF")||fundReq.getOstCOF().getTransType().trim().equalsIgnoreCase("MIG")
			|| (fundReq.getOstCOF().getTransType().trim().equalsIgnoreCase("ADJST") && fundReq.getOstCOF().getTransUID().trim().equalsIgnoreCase("LS2BATCH") && fundReq.getOstCOF().getFacTransType().trim().equalsIgnoreCase("CPXFR") && fundReq.getOstCOF().getTransStatus().trim().equalsIgnoreCase("RELSD")	)
			){
			return true;
		}
		return false;
	}
	
	private boolean validTransStatus(FundReq fundReq){
		if(fundReq.getOstCOF().getTransStatus().trim().equalsIgnoreCase("AWRA") ||
				fundReq.getOstCOF().getTransStatus().trim().equalsIgnoreCase("AWSRA") ||
				fundReq.getOstCOF().getTransStatus().trim().equalsIgnoreCase("LWREL") ||
				fundReq.getOstCOF().getTransStatus().trim().equalsIgnoreCase("RELSD"))
		{
			logger.debug("valid Trans Status ::: " +fundReq.getOstCOF().getTransStatus()+ ":::" + true);
			return true;
		}
		logger.debug("valid Trans Status ::: " +fundReq.getOstCOF().getTransStatus()+ ":::" + false);
		return false;
	}
	
	private boolean validTxnStatus(FundReq fundReq){
		if(fundReq.getOstCOF().getTransStatus().trim().equalsIgnoreCase("CNCLD") ||
				fundReq.getOstCOF().getTransStatus().trim().equalsIgnoreCase("CNPRM") ||
				fundReq.getOstCOF().getTransStatus().trim().equalsIgnoreCase("LWREL") ||
				fundReq.getOstCOF().getTransStatus().trim().equalsIgnoreCase("AWRA") || //TD 1993
				fundReq.getOstCOF().getTransStatus().trim().equalsIgnoreCase("RELSD"))
		{
			logger.debug("valid Txn Status ::: " +fundReq.getOstCOF().getTransStatus()+ ":::" + true);
			return true;
		}
		logger.debug("valid Txn Status ::: " +fundReq.getOstCOF().getTransStatus()+ ":::" + false);
		return false;
	}
	
	private FundMessage processValidFundMsg(FundMessage fundMessage,FundReq fundReq, HashMap fundMap) throws Exception{
		try
		{
			ApplicationContext context = RbsBatchApplication.getAppContext();
			FundDataProcessBS fundDataProcessBS = (FundDataProcessBS) context.getBean("fundDataProcessBS");
			logger.debug("fundReq Object "+fundReq.getOstCOF().toString());
			//HashMap fundMap = fundDataProcessBS.findFundMessage(fundReq);
			int fundSeqID  = findFundSeqID(fundMessage,true); 
			
			logger.debug("Fund Message Exist with parameters ::: "+fundReq.toString() + " -- "+fundMap);
			
			if(fundMap!=null && !fundMap.isEmpty())//i.e Fund Message Already Exits
			{
				String fundReqID = fundMap.get("FST_RID_FUND_REQ")!=null?fundMap.get("FST_RID_FUND_REQ").toString(): " ";
				String wssTradeRID = fundMap.get("FST_WSS_TRADE_REF")!=null?fundMap.get("FST_WSS_TRADE_REF").toString(): " ";
				String amendStatus = fundMap.get("FST_CDE_AMEND_STATUS")!=null?fundMap.get("FST_CDE_AMEND_STATUS").toString(): " ";
				String argonMsgProcessInd = fundMap.get("FST_IND_AF_MSG_PROCESS")!=null?fundMap.get("FST_IND_AF_MSG_PROCESS").toString(): " ";
				String wssActionType =  fundMap.get("FST_WSS_ACTION_TYPE")!=null?fundMap.get("FST_WSS_ACTION_TYPE").toString(): " ";//TD 536
				
				logger.debug("PCT RATE " + Double.valueOf(fundMap.get("FST_PCT_RATE").toString()) + 
						" Trans Rate :: "+Double.valueOf(fundReq.getOstCOF().getTransRate().toString()));
				fundMessage.setFundReqRID(fundReqID);
				fundMessage.setWssTradeRef(wssTradeRID);
				fundMessage.setAmendmentIndicator(amendStatus);
				fundMessage.setArgonMsgProcessIndicator(argonMsgProcessInd);//TD#929
				fundMessage = processFundMsg(fundMap,fundMessage);
			}
			else
			{
				
				logger.debug("New Fund Message needs to be created as record does not exist");
				if(fundReq.getOstCOF().getTransStatus()!=null && (fundReq.getOstCOF().getTransStatus().trim().equalsIgnoreCase("CNCLD") 
						|| fundReq.getOstCOF().getTransStatus().trim().equalsIgnoreCase("CNPRM")))
				{
					return null;
				}
				else{
					fundMessage.setFundReqRID(FundUtil.fundSeqID(fundMessage, fundSeqID)); 
					fundMessage  = rollerSeqForWSSTradeRef(fundMessage,fundSeqID);
					fundDataProcessBS.persistFundMessage(fundMessage);
				}
			}			
		}
		catch(Exception e){
			throw new Exception("Error in processing processValidFundMsg() method with fund Message "+fundMessage.toString(), e);
		}
		return fundMessage;
	}
	
	private FundMessage processFundMsg(HashMap fundMap,FundMessage fundMessage) throws Exception {
		ApplicationContext context = RbsBatchApplication.getAppContext();
		FundDataProcessBS fundDataProcessBS = (FundDataProcessBS) context.getBean("fundDataProcessBS");		
		//if(fundMap.get("FST_IND_AF_MSG_PROCESS")!=null)
		//{
			if(fundMap.get("FST_IND_AF_MSG_PROCESS")==null || !fundMap.get("FST_IND_AF_MSG_PROCESS").toString().trim().equalsIgnoreCase("Y"))//Message Not Processed
			{
				if(fundMessage.getTransStatus().trim().equalsIgnoreCase("CNCLD")){// In Case of Cancel request, all will go to AmendQ
					fundMessage.setProcessQueueCode("AMEND");
				}
				
				fundDataProcessBS.updateFundMessage(fundMessage);
			}
			else if(fundMap.get("FST_IND_AF_MSG_PROCESS").toString().trim().equalsIgnoreCase("Y"))
			{
				if(fundMessage.getTransStatus().trim().equalsIgnoreCase("CNCLD"))
				{
					fundMessage.setProcessQueueCode("AMEND");
					fundDataProcessBS.updateFundMessageForRELSD(fundMessage);
				}
				else if(fundMessage.getTransStatus().trim().equalsIgnoreCase("RELSD"))
				{
					fundDataProcessBS.updateFundMessageForRELSD(fundMessage);	
					
				}
				else{
					 fundDataProcessBS.updateFundMessage(fundMessage);					
				}
			}
		//}
		else{
			fundDataProcessBS.updateFundMessage(fundMessage);
		}

		return fundMessage;
	}
	
	private void fundHistoryCheck(FundMessage fundMessage,FundReq fundReq) throws Exception{

		try
		{
			ApplicationContext context = RbsBatchApplication.getAppContext();
			FundDataProcessBS fundDataProcessBS = (FundDataProcessBS) context.getBean("fundDataProcessBS");
			FundHistory fundHistory = fundDataProcessBS.findFundHistoryObject(fundReq);
			if(fundHistory==null && fundReq.getOstCOF().getTransStatus().trim().equalsIgnoreCase("RELSD")){
				fundDataProcessBS.persistFundHistory(FundMapper.createFundHistoryObject(fundReq));
				
			}
			else if(fundReq.getOstCOF().getTransStatus().trim().equalsIgnoreCase("RELSD") && 
							    (fundReq.getOstCOF().getTransType().trim().equalsIgnoreCase("QRADJ") ||
								fundReq.getOstCOF().getTransType().trim().equalsIgnoreCase("QLRPR")||
								fundReq.getOstCOF().getTransType().trim().equalsIgnoreCase("QDRPR")||
								fundReq.getOstCOF().getTransType().trim().equalsIgnoreCase("DQADJ")))
			{
				fundDataProcessBS.updateFundHistory(fundReq,FundMapper.createFundHistoryObject(fundReq));	
			}
		}
		catch(Exception e)
		{		
			logger.error("Error in fundHistoryCheck() -"+e.getMessage());	
		}
	}

	private void calPortAllocForOUT(FundMessage fundMessage,FundReq fundReq) throws Exception{

		if(fundReq.getOstCOF().getTransStatus().trim().equalsIgnoreCase("RELSD")){
			try{
				ApplicationContext context = RbsBatchApplication.getAppContext();
				FundDataProcessBS fundDataProcessBS = (FundDataProcessBS) context.getBean("fundDataProcessBS");
					
				List<COFSharePercentageDTO> cofList = fundDataProcessBS.calculatePortAllocForOUT(fundReq);
				logger.debug("portfolio allocation list for outstanding --->"+cofList.size());

				
				for(COFSharePercentageDTO cofSharePercentageDTO : cofList){
					insertBaselinePortfolio(fundMessage,cofSharePercentageDTO);
				}
			}
			catch(Exception e){
				throw new Exception("Error in calculating portfolio allocation at outstanding Level for fund Mesage  "+fundMessage.toString(), e);
			}	
		}
	}
	
	private void insertBaselinePortfolio(FundMessage fundMessage, COFSharePercentageDTO cofSharePercentageDTO)throws Exception{
		try{
			ApplicationContext context = RbsBatchApplication.getAppContext();
			FundDataProcessBS fundDataProcessBS = (FundDataProcessBS) context.getBean("fundDataProcessBS");
		
			cofSharePercentageDTO.setOstRID(fundMessage.getOutstandingRID());
			cofSharePercentageDTO.setEffectiveDate(fundMessage.getTransEffDate());
			cofSharePercentageDTO.setAccuralCycleEndDate(fundMessage.getAccuralCycleEndDate());
			
			BaseLinePortfolio baselinePortfolio= null;
			BaseLinePortfolio newBaseLinePortfolio = null;
			
			baselinePortfolio =fundDataProcessBS.fetchBaselinePortfolio(cofSharePercentageDTO);
			
			logger.debug("baselinePortfolio object retrieved for given fund req"+baselinePortfolio);
			
			if(baselinePortfolio == null){
				newBaseLinePortfolio = FundMapper.createBaseLinePortfolio(cofSharePercentageDTO,fundMessage);
				newBaseLinePortfolio.setBptWssMapRef(fundMessage.getWssMapRef().trim());
				logger.debug("Inserting the portfolio Allocation record :: "+newBaseLinePortfolio.toString());
				fundDataProcessBS.insertPortfolioAllocRecord(newBaseLinePortfolio);
			}
		}
		catch(Exception e){
			throw new Exception("Error in calculating portfolio allocation at outstanding Level for fund Mesage  ", e);
		}
	}

}
