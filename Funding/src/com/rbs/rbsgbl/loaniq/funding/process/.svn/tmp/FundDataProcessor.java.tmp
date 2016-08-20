/****************************************************************************************************************
 * @ClassName	:  FundDataProcessor.java
 * @Description	 : The Engine is the controlling class for the iterative cycle of checking for changes to the database 
 * 				   and generating funding messages throughout the day. Engine object should be created by the main class. 						                                                			 
 * @Author 		:  Manish Gupta                                                                                  		
 * @Date 		:  28 May 2008                                                                                   	
 * @Organization : RBS - IDC                                                                                     
 *																												
 * Modification History                                                                                         
 * **************************************************************************************************************
 * Date 			Version			Modified By	    		Description											
 * **************************************************************************************************************
 * 28 May 2008			1.0				Manish K Gupta																		
 * 18 Feb 2010		        1.1				Manish Jain			TD 802
 */
package com.rbs.rbsgbl.loaniq.funding.process;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import org.apache.log4j.Logger;

import com.rbs.rbsgbl.loaniq.funding.business.FundDataProcessBS;
import com.rbs.rbsgbl.loaniq.funding.business.FundMIGExcelObject;
import com.rbs.rbsgbl.loaniq.funding.constants.FundConstant;
import com.rbs.rbsgbl.loaniq.funding.datastore.data.FundMessage;
import com.rbs.rbsgbl.loaniq.funding.datastore.data.FundReq;
import com.rbs.rbsgbl.loaniq.funding.datastore.data.FundStaticParam;
import static com.rbs.rbsgbl.loaniq.funding.util.FundUtil.*;
import com.rbs.rbsgbl.loaniq.funding.process.messagesender.AutoFundMessageGenerator;
import com.rbs.rbsgbl.loaniq.funding.util.FundUtil;
import com.rbs.rbsgbl.loaniq.generic.application.RbsBatchApplication;
import com.rbs.rbsgbl.loaniq.generic.common.ExcelReadUtility;
import com.rbs.rbsgbl.loaniq.generic.data.AbstractFileObject;

public class FundDataProcessor extends RbsBatchApplication {

	private static Logger logger = Logger
			.getLogger("com.rbs.rbsgbl.loaniq.funding.process.FundDataProcessor");
	private static long numMillisecondsToSleep;
	private FundDataProcessBS fundDataProcessBS = null;
	public static boolean windowServiceStopRequest = false;
	public static HashMap<String, java.util.List<FundStaticParam>> fundStaticMap = null;
	public static boolean contextLoaded =false;
	private ExcelReadUtility excelReadUtility = null;
	List<FundReq> fundReqList = null; 
	
	List<FundReq>  accuralRecordList = null;
	
	
	public static void main(String args[]) {
		
		logger.debug("/------------------------------------------------------------------------------------------------------/");
		logger.debug("/\t\t\t\tFunding Application Started /");
		logger.debug("/------------------------------------------------------------------------------------------------------/");
		if (args.length < 1 && args.length > 3) {
			logger.error("You need to specify the name of the Spring Configuration file you want to use");
			logger.error("Usage : ");
			logger.error("Example : ");
			System.exit(1);
		}
		numMillisecondsToSleep = Long.parseLong(args[2]);
		String[] configFiles = { "", "" };
		configFiles[0] = args[0];
		configFiles[1] = args[1];
		if (!contextLoaded) {
			logger.debug("Context Loading has Started.....");
			loadCombinedNonTxnContext(configFiles);
		} else {
			logger.debug("Context Already Loaded");
		}
		FundDataProcessor fundDataProcessor = (FundDataProcessor) appContext.getBean("fundDataProcessor");
		AutoFundMessageGenerator autoFundMessageGenerator = (AutoFundMessageGenerator) appContext.getBean("AutoFundMessageGenerator");

				
		
		try {
			if (!contextLoaded) {
				if (fundStaticMap == null || fundStaticMap.size() == 0) {
					fundDataProcessor.fetchFundStaticData();
				}
				contextLoaded = true;
			}
			while (!windowServiceStopRequest) {
				fundDataProcessor.checkMigrationFlag();
				
				if(FundUtil.migrationFlag){
					fundDataProcessor.processExcelData();
				}
				fundDataProcessor.initiateExtractionProcess();
				if(FundUtil.migrationFlag==false)
				{
					//fundDataProcessor.initiateAccuralCycleProcess(); Tech Spec ver 1.10 and also jerry mail of 22/01/2009
					fundDataProcessor.updatePollTimestamp();
				}
				autoFundMessageGenerator.argonConnect();

				if (!windowServiceStopRequest) {
					try {
						logger.debug("/----------  Pausing for "+numMillisecondsToSleep+ " milliseconds before the rerun of FundDataProcessor ---------  /");
						Thread.sleep(numMillisecondsToSleep);
					} catch (InterruptedException e) {
						logger.debug(e);
					}
				}
			}
			autoFundMessageGenerator.disconnectArgon();
			return;
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		logger.debug("/\t\t\t\tFunding Application Cycle Completed /");
	}

	/**
	 * Method is blank as context is fully loaded once doProcessing() Completes and 
	 * context is needed to get the bean anywhere in the application.
	 * 
	 * @return void
	 * @exception None
	 */
	public void doProcessing() {
		logger.debug("Context Loading has completed.....");
		// Do Nothing
	}
	
	public void processExcelData() throws Exception{
		HashMap<String,String> prePaidLoanDataMap = new HashMap<String,String>();
		HashMap<String, Integer> statDataMap = fundDataProcessBS.fetchExcelAtrributes();
		
		List exclDataLst = excelReadUtility.readFileObjects(statDataMap, "com.rbs.rbsgbl.loaniq.funding.business.FundMIGExcelObject");
		
		if(exclDataLst!=null  && exclDataLst.size()!=0)
		{
			Iterator<FundMIGExcelObject> itr = exclDataLst.iterator();
			List<FundMIGExcelObject> prePaidList = new ArrayList<FundMIGExcelObject>();
			while(itr.hasNext()){
				FundMIGExcelObject fundMIGObj = itr.next();
				prePaidLoanDataMap.put("mplOstRID", fundMIGObj.getMplOstRID());
				prePaidLoanDataMap.put("mplTranRID", fundMIGObj.getMplTranRID());
				if(fundDataProcessBS.checkPrepaidObject(prePaidLoanDataMap)==0)
					prePaidList.add(fundMIGObj);
			}
			boolean readSuccess = false;
			if(prePaidList!=null && prePaidList.size()>0)
				readSuccess = fundDataProcessBS.persistExcelObjects(prePaidList);
			if(readSuccess){
				excelReadUtility.archiveExcelSheet();
			}
		}
	}
	
	public void checkMigrationFlag() throws Exception{
		try{
			FundUtil.migrationFlag = fundDataProcessBS.checkMigrationFlag();
		}
		catch(Exception e){
			throw new Exception("Error in checking whether Migration Flag is ON or OFF "+e);
		}
		
	}
	
	public boolean checkDealMigrationStatus(FundReq fundReq) throws Exception{
		boolean dealMIGStatus = false;
		try{
			
			dealMIGStatus = fundDataProcessBS.checkDealMigrationStatus(fundReq.getOstCOF().getTransDeal());
		}
		catch(Exception e){
			throw new Exception("Error in checking deal conversion status for Migration "+e);
		}
		return dealMIGStatus;
	}
	
	public void initiateExtractionProcess() throws Exception
	{
		try
		{
			if(FundUtil.migrationFlag==false)
				this.setFundPollerTime();
			this.fetchFundReqData();
			this.loadFundHistoryData();
			this.processFundRequestData();
		}
		catch(Exception e){
			throw new Exception("Error in initiating Extraction Process"+e);
		}
	}
	
	public void initiateAccuralCycleProcess() throws Exception{
		try{
			
			this.fetchAccuralRecords();

			if(this.getAccuralRecordList()!=null && this.getAccuralRecordList().size()>0)
			{
				logger.debug("/------------------------------------------------------------------------------------------------------/");
				logger.debug("\t\t\t Total Accural Request to be Processed :: "+this.getAccuralRecordList().size());
				for(FundReq fundReq : this.getAccuralRecordList())
				{
					fundDataProcessBS.accuralCycleWorkflow(fundReq);			
				}
				logger.debug("/------------------------------------------------------------------------------------------------------/");
			}
			else{
				logger.debug("No Records to be processed for Accural Cycle");
			}
		}
		catch(Exception e){
		}
	}
	
	/**
	 * Method is the start point for Funding application.It will define the
	 * complete business flow of application.
	 * @return    	void
	 * @throws Exception 
     * @exception 	None 
	*/
	
	public void setFundPollerTime() throws Exception
	{
		try{
			logger.debug("/------------------------------------------------------------------------------------------------------/");
			logger.debug("/\t\t\t\tPoller Time");
			fundDataProcessBS.setFundPollerTime();
			logger.debug("Funding Request will be fetched from time ::: "+" OST PollerTime ::  "+ostPollerTime +  " Accural PollerTime :: "+accrPollerTime);
			logger.debug("/------------------------------------------------------------------------------------------------------/");
		}
		catch(Exception e){
			//throw new Exception("Error in setting the fund poller time");
		}
	}
	
	public void fetchFundStaticData() throws Exception {
		try{
			logger.debug("/------------------------------------------------------------------------------------------------------/");
			logger.debug("\t\t\tLoading Static Data has started from table RBSGBL_STATIC_DETAILS");
			logger.debug("/------------------------------------------------------------------------------------------------------/");
			fundStaticMap =  fundDataProcessBS.loadFundStaticData();
			logger.debug("Loading Static Data has been completed from table RBSGBL_STATIC_DETAILS");
			logger.debug("/------------------------------------------------------------------------------------------------------/");
		}
		catch(Exception e){
			logger.error("Loading of static data disrupted -  Terminating Program");
			System.exit(0);
		}
	}
	
	@SuppressWarnings("unused")
	public void fetchFundReqData() throws Exception
	{
		try
		{
			logger.debug("Migration Flag :: " +FundUtil.migrationFlag );
			logger.debug("/------------------------------------------------------------------------------------------------------/");
			this.setFundReqList(fundDataProcessBS.fetchFundReqData());
			
			logger.debug("Total Funding Request(OSTTrans + NON-OSTTrans) to be Processed :: "+this.getFundReqList().size());
			logger.debug("/------------------------------------------------------------------------------------------------------/");

		}
		catch(Exception e){
			logger.error("Error in fetching the fund req list "+e)
		}
	}
	
	public void loadFundHistoryData() throws Exception{
		try
		{
			logger.debug("/------------------------------------------------------------------------------------------------------/");
			ArrayList<String> tranRIDsList = getRIDsList(this.getFundReqList());
			if(tranRIDsList!=null && tranRIDsList.size()!=0){
				fundDataProcessBS.loadFundHistoryData(tranRIDsList);
				logger.debug("\t\t\tLoading History Data has been completed from table RBSGBL_BASELINE_IMAGE");
			}
			logger.debug("/------------------------------------------------------------------------------------------------------/");
		}
		catch(Exception e){
			logger.error("Error in loading the fund history data " +e);
		}
	}
	
	public void processFundRequestData()throws Exception{
		ListIterator<FundReq> iterator = null;
		
		if(this.getFundReqList()!=null && this.getFundReqList().size()>0)
		{
			iterator  = this.getFundReqList().listIterator();
			while(iterator.hasNext()){
				try{
					FundReq fundReq  = iterator.next();
					
					if(fundReq.getOstCOF().getTransDeal()==null) 
						continue;
					if((fundReq.getOstCOF().getTransDeal()!=null && fundReq.getOstCOF().getTransDeal().length()!=0
							&& checkDealMigrationStatus(fundReq)==false ))
					{
						logger.info("Ignoring the Deal || Migration Conversion Status for the Deal :: N || Deal RID :: "+
								fundReq.getOstCOF().getTransDeal());
						continue;
					}
					if(fundReq.getOstCOF().getOstPriceOpt().trim().equalsIgnoreCase("FIXLT") && FundUtil.migrationFlag)
					{
						logger.info("Ignoring the Deal ||  Disregard this record as long fixed term loans " +
								"will not be migrated using the automated route to WallStreet || Deal RID :: "+
								fundReq.getOstCOF().getTransDeal());
						continue;
						
					}
					
					FundMessage fundMessage = null;
					HashMap rskBkDtlMp = null;
					
					if(fundReq.getOstCOF().getTransClassType().trim().equalsIgnoreCase(FundConstant.FUNDING_NON_OST_TRANS)){
						
						logger.debug("Processing Started for Funding Type :: "+ FundConstant.FUNDING_NON_OST_TRANS + " OST RID :: "+fundReq.getOstCOF().getOstRID());
						logger.debug("/------------------------------------------------------------------------------------------------------/");
						if(!fundDataProcessBS.checkSignificantChange(fundReq)){
							logger.debug("Record SKIPPED Since there is NO SIGNIFICANT CHANGE  in RBSGBL_BASELINE_IMAGE against :: "+fundReq.getOstCOF().getOstRID());
							continue;
						}
						
						List<FundReq> fundReqList =  calculatePortExpenseAllocation(fundReq);
						for(FundReq childFundReq: fundReqList){
							logger.debug("/-----------------------------------Child Fund Request NON OST Trans Record----------------------------/");
							rskBkDtlMp = fundDataProcessBS.fetchRiskBookDetails(childFundReq);
							if(rskBkDtlMp!=null){
								childFundReq.setRiskBookCode((String)rskBkDtlMp.get("RISK_BOOK_CDE"));
								childFundReq.setRiskBookDesc((String)rskBkDtlMp.get("RISK_BOOK_DSC"));
								logger.debug("Risk Book Code ::: "+childFundReq.getRiskBookCode()+"Risk Book Desc ::: "+childFundReq.getRiskBookDesc());
							}
							logger.debug("Transaction amount for txn record"+childFundReq.getOstCOF().getTransAmount());
							
							if(childFundReq.getOstCOF().getTransAmount()!=null && Double.valueOf(childFundReq.getOstCOF().getTransAmount().trim())!=0.0)
								fundMessage = fundDataProcessBS.initiateWorkflow(childFundReq);
							else{
								logger.debug("Skipping the FundReq with OSTRID ::: "+fundReq.getOstCOF().getOstRID() + " as transaction Amount is not Valid.");
								continue;
							}
							logger.debug("/-----------------------------------Child Fund Request END NON OST Trans Record---------------------------/");
						}
						continue;						
					}
					
					else if(fundReq.getOstCOF().getTransClassType().trim().equalsIgnoreCase(FundConstant.FUNDING_OST_TRANS)){
						logger.debug("Processing Started for Type :: "+ FundConstant.FUNDING_OST_TRANS + " OST RID :: "+fundReq.getOstCOF().getOstRID());
						logger.debug("/------------------------------------------------------------------------------------------------------/");
						if(!fundDataProcessBS.checkValidTransactionType(fundReq)){
							logger.debug("------Record SKIPPED Since there is TRANSACTION TYPE IS NOT VALID for Fund Req RID :: "+fundReq.getOstCOF().getOstRID()+"------/");
							continue;
						}
						logger.debug("/-------------TRANSACTION TYPE IS VALID for Fund Req RID - "+fundReq.getOstCOF().getOstRID()+"-------/");
						if(!(isValueExists(fundReq.getOstCOF().getTransBranch()) && isValueExists(fundReq.getOstCOF().getTransExpense()) &&
								isValueExists(fundReq.getOstCOF().getTransPortfolio())))
						{
							logger.debug("\t\t\tEither Branch, Portfolio or Expense does not Exist");
							List<FundReq> fundReqList =  calculatePortExpenseAllocation(fundReq);
							for(FundReq childFundReq: fundReqList)
							{
								logger.debug("/-----------------------------------Child Fund Request OST Trans----------------------------/");
								logger.debug("Transaction amount for txn record"+childFundReq.getOstCOF().getTransAmount());
								rskBkDtlMp = fundDataProcessBS.fetchRiskBookDetails(childFundReq);
								if(rskBkDtlMp!=null){
									childFundReq.setRiskBookCode((String)rskBkDtlMp.get("RISK_BOOK_CDE"));
									childFundReq.setRiskBookDesc((String)rskBkDtlMp.get("RISK_BOOK_DSC"));
								}
								if(childFundReq.getOstCOF().getTransAmount()!=null && Double.valueOf(childFundReq.getOstCOF().getTransAmount().trim())!=0.0)
									fundMessage = fundDataProcessBS.initiateWorkflow(childFundReq);
								else{
									logger.debug("Skipping the FundReq with OSTRID ::: "+fundReq.getOstCOF().getOstRID() + " as transaction Amount is not Valid.");
									continue;
								}
								logger.debug("/-----------------------------------Child Fund Request END OST Trans-------------------------/");
							}
							continue;
						}
					}
					if(fundReq.getOstCOF().getTransAmount()!=null && Double.valueOf(fundReq.getOstCOF().getTransAmount().trim())!=0.0){
						rskBkDtlMp = fundDataProcessBS.fetchRiskBookDetails(fundReq);
						if(rskBkDtlMp!=null){
							fundReq.setRiskBookCode((String)rskBkDtlMp.get("RISK_BOOK_CDE"));
							fundReq.setRiskBookDesc((String)rskBkDtlMp.get("RISK_BOOK_DSC"));
							logger.debug("Risk Book Code ::: "+fundReq.getRiskBookCode()+"Risk Book Desc ::: "+fundReq.getRiskBookDesc());
						}
						fundMessage = fundDataProcessBS.initiateWorkflow(fundReq);
					}
					else
					{
						logger.debug("Skipping the FundReq with OSTRID ::: "+fundReq.getOstCOF().getOstRID() + " as transaction Amount is not Valid.");
						continue;
					}
					if(fundMessage!=null){
						logger.debug("isValidAutoFund(fundMessage) :::  "+isValidAutoFund(fundMessage));
						if(isValidAutoFund(fundMessage))
							initiateAutoFundingEngine(fundMessage);
					}
					logger.debug("/------------------------------------------------------------------------------------------------------/");
				}catch(Exception exception){
					logger.error("Error in processing the fund request data  "+exception);
				}
				continue;
				}
		}		
	}	
	
	private boolean isValidAutoFund(FundMessage fundMessage){
		logger.debug("ArgonMsgProcessIndicator:::: "+fundMessage.getArgonMsgProcessIndicator().trim()+
		"fundMessage.getTransStatus().trim() ::: " +fundMessage.getTransStatus().trim() + " fundMessage.getProcessQueueCode() :: "+fundMessage.getProcessQueueCode());
		
		if(fundMessage!=null && FundUtil.migrationFlag == true && fundMessage.getArgonMsgProcessIndicator().trim()=="Y")
			return false;

		if(fundMessage!=null && (!fundMessage.getArgonMsgProcessIndicator().trim().equalsIgnoreCase("Y"))
			&& (fundMessage.getTransStatus().trim().equalsIgnoreCase("LWREL")||(fundMessage.getTransStatus().trim().equalsIgnoreCase("RELSD"))) 
			&& (fundMessage.getProcessQueueCode().trim().equalsIgnoreCase(FundConstant.FUNDING_PROCESS_QUE_CDE_AUTO))){
			return true;
		}
		return false;
	}
	
	private List<FundReq> calculatePortExpenseAllocation(FundReq fundReq) throws Exception{
		List<FundReq> subFundReqList = null;
		try{
			subFundReqList = fundDataProcessBS.calculatePortfolioExpenseAllocation(fundReq);
			logger.debug("NO of records returned after calculating Portfolio Expense Allocation ::" +subFundReqList.size()+"for record"+fundReq.getOstCOF().getTransID());
		}
		catch(Exception exception){
			//throw new Exception("Error in calculating Portortfolio Expense allocation");
		}
		
		return subFundReqList;
	}
	
	public void initiateAutoFundingEngine(FundMessage fundMessage) throws Exception{
		try{
			fundDataProcessBS.autoFundWorkflowEngine(fundMessage);
		}
		catch(Exception exception){
			//throw new Exception("Error in initiating the auto funding engine");
		}
	}
	
	public void fetchAccuralRecords() throws Exception{
		try
		{
			logger.debug("/------------------------------------------------------------------------------------------------------/");
			List list = fundDataProcessBS.fetchAccuralRecords();
			logger.debug("Total Accural Funding Request(OSTTrans + NON-OSTTrans) to be Processed :: "+this.getFundReqList().size());
			logger.debug("/------------------------------------------------------------------------------------------------------/");
			this.setAccuralRecordList(list);
			updateAccrPollerTime =  new Date();
		}
		catch(Exception exception){
			//throw new Exception("Error in fetching the accural records");
		}
	}
	
	public void updatePollTimestamp() throws Exception{
		try{
			if(FundUtil.migrationFlag==false)
			{
				fundDataProcessBS.updatePollTimestamp();
				logger.debug("/------------The OST Poller and Accural Time has been updated in RBSGBL_FUNDING_ENV table------/");
				accrPollerTime = null;
				ostPollerTime = null;
				updateAccrPollerTime = null;
				updateOstPollerTime = null;
			}
		}
		catch(Exception exception){
			//throw new Exception("Error in updating the Poll time");
		}
	}
	
	public void setFundDataProcessBS(FundDataProcessBS fundDataProcessBS) {
		this.fundDataProcessBS = fundDataProcessBS;
	}

	public List<FundReq> getFundReqList() {
		return fundReqList;
	}

	public void setFundReqList(List<FundReq> fundReqList) {
		this.fundReqList = fundReqList;
	}

	public List<FundReq> getAccuralRecordList() {
		return accuralRecordList;
	}

	public void setAccuralRecordList(List<FundReq> accuralRecordList) {
		this.accuralRecordList = accuralRecordList;
	}

	public ExcelReadUtility getExcelReadUtility() {
		return excelReadUtility;
	}

	public void setExcelReadUtility(ExcelReadUtility excelReadUtility) {
		this.excelReadUtility = excelReadUtility;
	}
}