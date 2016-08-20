/*
 * @class Name: FundDataProcessBSImpl.java                                                                    	*
 * @description : Target class which will implement the all business method and interact with DAO layer			*   
 * @author : Yashwant Singh                                                                                       *
 * @date : 10-Jun-2008                                                                                          *
 * Organization : RBS - IDC                                                                                     *
 * Modification History                                                                                         *
 * **************************************************************************************************************
 * Date 				Version			Modified By						Description				                *
 * **************************************************************************************************************
 * 10-Jun-2008           1.0            Yashwant Singh                        Initial Version.                    *
 * 22-July-2009		 1.1		Manish Jain			      TD-802
 */
package com.rbs.rbsgbl.loaniq.funding.business;

import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import org.apache.log4j.Logger;

import com.rbs.rbsgbl.loaniq.funding.constants.FundConstant;
import com.rbs.rbsgbl.loaniq.funding.datastore.FundDataProcessDAO;
import com.rbs.rbsgbl.loaniq.funding.datastore.data.AutoFund;
import com.rbs.rbsgbl.loaniq.funding.datastore.data.BaseLinePortfolio;
import com.rbs.rbsgbl.loaniq.funding.datastore.data.COFSharePercentageDTO;
import com.rbs.rbsgbl.loaniq.funding.datastore.data.FetchWSSExternalTradeDTO;
import com.rbs.rbsgbl.loaniq.funding.datastore.data.FundHistory;
import com.rbs.rbsgbl.loaniq.funding.datastore.data.FundMapper;
import com.rbs.rbsgbl.loaniq.funding.datastore.data.FundMessage;
import com.rbs.rbsgbl.loaniq.funding.datastore.data.FundReq;
import com.rbs.rbsgbl.loaniq.funding.datastore.data.FundStaticParam;
import com.rbs.rbsgbl.loaniq.funding.datastore.data.OstCOF;
import com.rbs.rbsgbl.loaniq.funding.datastore.data.WSSMapper;
import com.rbs.rbsgbl.loaniq.funding.process.FundDataProcessor;
import com.rbs.rbsgbl.loaniq.funding.util.FundUtil;

public class FundDataProcessBSImpl implements FundDataProcessBS{	
	
	private static Logger logger = Logger.getLogger("com.rbs.rbsgbl.loaniq.funding.business.FundDataProcessBSImpl");
	
	private FundDataProcessDAO fundDataProcessDAO;
	private Poller ostCofPoller;
	private Poller circlePoller;
	private Poller migrationPoller;
	private List<FundHistory> fundHistoryList 					=	new ArrayList<FundHistory>();
	private OstTransWorkflowEngine ostTransWorkflowEngine 		=	null;
	private NonOstTransWorkflowEngine nonOstTransWorkflowEngine =	null;
	private AutoFundingWorkflowEngine autoFundingWorkflowEngine = 	null;
	private AccuralWorflowEngine accuralWorflowEngine = null;
	private int staticDataCodeCount = 0;	
	
	/**
	 * Method will fetch all the funding Static Date 
	 * applied
	 * @return    	HashMap
	 * @throws Exception 
     * @exception 	None 
	*/

	@SuppressWarnings("unchecked")
	public HashMap<String, java.util.List<FundStaticParam>> loadFundStaticData() throws Exception{
		
		
		List<FundStaticParam> list = null;
		HashMap<String, java.util.List<FundStaticParam>> fundStaticMap = new HashMap();;
		
		StringBuilder strStaticTypeID= new StringBuilder("FND0");
		
		for(int i=1;i<=staticDataCodeCount;i++)
		{				
			strStaticTypeID.append(i);
			logger.debug("Loading Funding Static Data    - " + strStaticTypeID);
			list = fundDataProcessDAO.loadFundStaticData("LOANIQ_STATIC_DETAILS.StaticList"+strStaticTypeID);
			if(list!=null && list.size()>0)
				fundStaticMap.put(strStaticTypeID.toString(), list);
			strStaticTypeID.deleteCharAt(strStaticTypeID.toString().length()-1);
		}
		return fundStaticMap;
	}

	
	/**
	 * Method will fetch all the funding request with no filter 
	 * applied
	 * @return    	void
	 * @throws Exception 
     * @exception 	None 
	*/
	
	public void setFundPollerTime() throws Exception{
		
		HashMap pollTimeMap 		= fundDataProcessDAO.getFundPollerTime();
		FundUtil.pollTimeDiff = ((BigDecimal)pollTimeMap.get("POLL_TIME_DIFF")).intValue();
		FundUtil.ostPollerTime 		= (Timestamp)pollTimeMap.get("OST_POLLER_TIME");
		FundUtil.accrPollerTime 	= (Timestamp)pollTimeMap.get("ACCR_CYCLE_POLLER_TIME");
	}
	
	public java.util.Date findBusinessDate(String transBranch) throws Exception {
		java.util.Date date  = fundDataProcessDAO.findBusinessDate(transBranch);
		return date;
	}
	
	public List<FundReq> fetchFundReqData() throws Exception {
		List<FundReq> fundReqList =null;
		if(FundUtil.migrationFlag)
		{
			logger.debug("Executing Migration Poller Query ..... ");
			migrationPoller.poll();
			fundReqList  = migrationPoller.getObjectlist();
		}
		else
		{
			logger.debug("Executing OST Poller Query ..... ");
			 ostCofPoller.poll();
			 fundReqList  = ostCofPoller.getObjectlist();
		}
		
		return fundReqList;
	}
	
	public HashMap fetchRiskBookDetails(FundReq fundReq) throws Exception{
		logger.debug("------------------------- RISK Book Details ---------------------/" );
		logger.debug("Parameters :: Expense Code "+fundReq.getOstCOF().getTransExpense() +" and Portfolio Code ::"+fundReq.getOstCOF().getTransPortfolio());
		HashMap rskBkDtlMp = new HashMap();
		if(fundReq.getOstCOF().getOstType()!=null && 
				fundReq.getOstCOF().getOstType().trim().equalsIgnoreCase("DEPOS"))
		{
			rskBkDtlMp = fundDataProcessDAO.fetchRiskBookDetailsWithDepos(fundReq);
		}
		else
		{
			rskBkDtlMp = fundDataProcessDAO.fetchRiskBookDetails(fundReq);
		}
		
		if(rskBkDtlMp==null){
			logger.debug("No RISK Book Details Found for Fund Request RID::: "+fundReq.getOstCOF().getOstRID());
		}
		return rskBkDtlMp;
	}	
	
	public boolean checkSignificantChange(FundReq fundReq) throws Exception{
		FundHistory fundHistory = null;
		if(this.getFundHistoryList()!=null && this.getFundHistoryList().size()!=0){
			fundHistory = FundUtil.findBaselineRecord(fundReq, fundHistoryList);
		}
		if(fundHistory!=null)
			return FundUtil.checkSignificantChange(fundReq, fundHistory);
		
		return true;// in case compared record does not exist in baseline image table		
	}
	
	public FundHistory findFundHistoryObject(FundReq fundReq) throws Exception{
		return  FundUtil.findBaselineRecord(fundReq, fundHistoryList);
	}
	
	public boolean checkValidTransactionType(FundReq fundReq) throws Exception{
		
		if(FundUtil.isValueExists(fundReq.getOstCOF().getTransBranch()) && 
				FundUtil.isValueExists(fundReq.getOstCOF().getTransType()))
			return FundUtil.isRecordExistForStaticTypeIDKeyVal1KeyVal2(FundDataProcessor.fundStaticMap, FundConstant.FUNDING_STATIC_TYPE_ID_FNDO6,
				fundReq.getOstCOF().getTransBranch().trim(),fundReq.getOstCOF().getTransType().trim());
		
		return false;
	}
	
	public List<FundReq> calculatePortfolioExpenseAllocation(FundReq fundReq) throws Exception{
		List<COFSharePercentageDTO> cofPortExpAllocList =null;
		
		if(FundUtil.isValueExists(fundReq.getOstCOF().getFacTransCircleID()))
			cofPortExpAllocList = fundDataProcessDAO.calculatePortfolioExpenseAllocation(fundReq,"ostTranCOFSharePercentageWithCircleID");	
		else
			cofPortExpAllocList = fundDataProcessDAO.calculatePortfolioExpenseAllocation(fundReq,"ostTranCOFSharePercentageWithoutCircleID");
		
		ArrayList<FundReq> fundReqList = new ArrayList<FundReq>();
		if(cofPortExpAllocList!=null && cofPortExpAllocList.size()>0){
			for (COFSharePercentageDTO cofShareObject : cofPortExpAllocList){
				fundReqList.add(fundReq.getFundReqObjectClone(cofShareObject));
			}
		}
		return fundReqList;
	}
	
	public List<COFSharePercentageDTO> calculatePortAllocForOUT(FundReq fundReq) throws Exception{
		return fundDataProcessDAO.calculatePortAllocForOUT(fundReq);
	}
	
	public HashMap findWSSTradeID(FundMessage fundMessage) throws Exception{
		return fundDataProcessDAO.findWSSTradeID(fundMessage);
	}
	
	public FundMessage initiateWorkflow(FundReq fundReq) throws Exception{
		if(fundReq!=null)
		{
			FundMessage fundMessage = null;
			if(fundReq.getOstCOF().getTransClassType().trim().equalsIgnoreCase(FundConstant.FUNDING_NON_OST_TRANS)){
				fundMessage = nonOstTransWorkflowEngine.processFundReq(fundReq, this.getFundHistoryList());
				return fundMessage;
			}
			else if(fundReq.getOstCOF().getTransClassType().trim().equalsIgnoreCase(FundConstant.FUNDING_OST_TRANS)){
				fundMessage =ostTransWorkflowEngine.processFundReq(fundReq);
				return fundMessage;
			}
		}
		return null;
	}
	
	
	public void autoFundWorkflowEngine(FundMessage fundMessage) throws Exception{
		autoFundingWorkflowEngine.processFundMessages(fundMessage);
	}
	
	public void accuralCycleWorkflow(FundReq fundReq) throws Exception {
		if(fundReq!=null){
			accuralWorflowEngine.processAccuralRecord(fundReq);
		}
		else{
			logger.debug("Accural record is NULL ");
		}
	}
	
	public void updateFundMessage(FundMessage objFundMessage) throws Exception{
		if(objFundMessage!=null)
		{
			FundMessage amendedFundMessage = amendmentQueueProcess(objFundMessage);
			if(amendedFundMessage!=null)
				fundDataProcessDAO.updateFundMessage(amendedFundMessage);
			else
				fundDataProcessDAO.updateFundMessage(objFundMessage);
		}
	}
	
	public void insertPortfolioAllocRecord(BaseLinePortfolio baseLinePortfolio) throws Exception{
		fundDataProcessDAO.insertPortfolioAllocRecord(baseLinePortfolio);
	}
	
	public void updateWSSMapRef(WSSMapper wssMapper)  throws Exception{
		fundDataProcessDAO.updateWSSMapRef(wssMapper);
	}
	
	public void insertWSSMapRef(WSSMapper wssMapper)  throws Exception{
		fundDataProcessDAO.insertWSSMapRef(wssMapper);
	}

	
	public void persistFundHistory(FundHistory objFundHistory) throws Exception{
		try
		{
			if(objFundHistory!=null)
			{
				logger.debug("Inserting FundHistory  ...." );
				fundDataProcessDAO.persistFundHistory(objFundHistory);
				boolean flag =false;
					flag = this.getFundHistoryList().add(objFundHistory);
					if(flag)
						logger.debug("Successfully updated the fundhistory with id  :::: "+objFundHistory.getBptOutTransRID());
				logger.debug("Inserted FundHistory  done...." );
			}
		}		
		catch(Exception e){
			logger.error("Exception occured in persisting FundHistory Record "+objFundHistory.toString());
		}
	}
	
	public void updateFundHistory(FundReq fundReq,FundHistory fundHistory)  throws Exception{
		
		logger.debug("fundHistory before inserting -- "+fundHistory.toString());
		fundDataProcessDAO.updateFundHistory(fundReq.getOstCOF());
		List<FundHistory> fundHistoryList  = this.getFundHistoryList();
		int indexOfFundHist =0; 
		for(FundHistory fundHist : fundHistoryList){
			if(fundHist.getBptOutTransRID().trim().equalsIgnoreCase(fundHistory.getBptOutTransRID().trim()))
			{
				indexOfFundHist = fundHistoryList.indexOf(fundHist);
				
				fundHist.setBptNumver(fundHist.getBptNumver()+1);				
				fundHist.setBptNameAlias(fundReq.getOstCOF().getOstAlias());
				fundHist.setBotCodeHBRtBasis(fundReq.getOstCOF().getOstHBRateBasis());
				fundHist.setBptDatematurity(fundReq.getOstCOF().getOstMatDate());
				fundHist.setBptCodeAccrperiod(fundReq.getOstCOF().getOstAccuralPeriod());
				fundHist.setBptDateCycleDue(fundReq.getOstCOF().getOstAccuralCycleDue());
				fundHist.setBptDateAdjCycle(fundReq.getOstCOF().getOstAccuralCycleAdj());
				fundHist.setBptDateCycleEnd(fundReq.getOstCOF().getOstAccuralCycleEnd());
				fundHist.setBptCodeEndDtRule(fundReq.getOstCOF().getOstAccuralRule());
				break;
			}
		}
		fundHistoryList.set(indexOfFundHist, fundHistory);
		
		logger.debug("Successfully updated the fundhistory with id  :::: "+fundHistory.getBptOutTransRID());
	}
	
	public List findRepricingDateForRCMF(OstCOF ostCof) throws Exception{
		return fundDataProcessDAO.findRepricingDateForRCMF(ostCof);
	}

	public void updateFundMessageForRELSD(FundMessage objFundMessage) throws Exception{
		fundDataProcessDAO.updateFundMessageForRELSD(objFundMessage);
	}
	
	public HashMap findFundMessage(FundReq fundReq) throws Exception{
		return fundDataProcessDAO.findFundMessage(fundReq);
	}
	
	public int findFundSeqID(FundMessage fundMessage) throws Exception{
		return fundDataProcessDAO.findFundSeqID(fundMessage);
	}
	
	public int findQuickRepriceFund(FundMessage fundMessage) throws Exception{
		return fundDataProcessDAO.rollerSeqForWSSTradeRef(fundMessage);
	}
	
	public void persistFundMessage(FundMessage fundMessage) throws Exception{
		FundMessage amendedFundMessage = amendmentQueueProcess(fundMessage);
		
		if(amendedFundMessage!=null)
		{
			fundDataProcessDAO.persistFundMessage(amendedFundMessage);
			fundDataProcessDAO.persistAmendComment(FundMapper.createAmendComment(fundMessage));
		}
		else
			fundDataProcessDAO.persistFundMessage(fundMessage);
	}
	
	private FundMessage amendmentQueueProcess(FundMessage fundMessage) throws Exception {		
		
		if(fundMessage.getProcessQueueCode()!= null && 
			fundMessage.getProcessQueueCode().trim().equalsIgnoreCase(FundConstant.FUNDING_PROCESS_QUE_CDE_AMEND) )
		{
			if(fundMessage.getTransStatus().trim().equalsIgnoreCase("CNCLD") ||fundMessage.getTransStatus().trim().equalsIgnoreCase("CNPRM")){
				fundMessage.setAmendmentIndicator("CANCELLED");
			}
			else if((fundMessage.getAmendmentIndicator()==null || fundMessage.getAmendmentIndicator().trim().length()==0)){
		
				if(	fundMessage.getTransStatus().trim().equalsIgnoreCase("LWREL") ||
						fundMessage.getTransStatus().trim().equalsIgnoreCase("RELSD"))
				{
				
					if(fundMessage.getBreakFundIndicator().trim().equalsIgnoreCase("Y")){
						fundMessage.setAmendmentIndicator("BREAK_FUNDED");
					}
					else{
						fundMessage.setAmendmentIndicator("PENDING");
					}
				}
				//Exclude the sign for the negative amount only at the amendment queue level 
				fundMessage.setFundAmount(fundMessage.getFundAmount());
				fundMessage.setTransTotalAmount(Double.valueOf(fundMessage.getTransTotalAmount()));
				}
			
		}
		else {
			return null;
		}
		return fundMessage;
	}
	
	public int  checkAutoFundExist(AutoFund autoFund)throws Exception{
		return fundDataProcessDAO.checkAutoFundExist(autoFund);
	}
	
	public void persistAutoFundMessage(AutoFund autoFund) throws Exception {
		logger.debug("persistAutoFundMessage call(");
		fundDataProcessDAO.persistAutoFundMessage(autoFund);
	}
	
	/**
	 * Method will fetch all data from the History Table and store all the history 
	 * objects in the static map 
	 * @param 	None
	 * @return  void
	 * @throws  Exception 
    */
	public void loadFundHistoryData(ArrayList<String> tranRiDsList) throws Exception{
		this.setFundHistoryList(null);
		FundHistoryParameter  parameter = new FundHistoryParameter();
		parameter.setFundReqIds(tranRiDsList);
		
		logger.debug("\t\t No of FundHistoryData w.r.t NON-OSTRID  "+tranRiDsList.size());
		this.setFundHistoryList(fundDataProcessDAO.fetchFundHistoryList(parameter));
	}
	
	public void updateSettlementIndicator(FundMessage objFundMessage) throws Exception{
		fundDataProcessDAO.updateSettlementIndicator(objFundMessage);
	}
	
	/*public Date fetchAutoFundStartDate(String aftOldWSSMapRef) throws Exception{
		return fundDataProcessDAO.fetchAutoFundStartDate(aftOldWSSMapRef);
	}*/
	
	public HashMap fetchPreviousLegInfo(FundMessage fundMessage) throws Exception {
		return fundDataProcessDAO.fetchPreviousLegInfo(fundMessage);
	}
	
	public String fetchBptExtTradeID(FetchWSSExternalTradeDTO fetchWSSExternalTradeDTO) throws Exception{
		return fundDataProcessDAO.fetchBptExtTradeID(fetchWSSExternalTradeDTO);
	}

	public void updateWssStubRef(FundMessage fundMessage) throws Exception {
		fundDataProcessDAO.updateWssStubRef(fundMessage);
	}
	
	public BaseLinePortfolio fetchBaselinePortfolio(COFSharePercentageDTO cPercentageDTO) throws Exception{
		return fundDataProcessDAO.fetchBaselinePortfolio(cPercentageDTO);
	}
	
	public void updateBaselinePortfolio(BaseLinePortfolio baseLinePortfolio) throws Exception{
		fundDataProcessDAO.updateBaselinePortfolio(baseLinePortfolio);
	}
	
	public List<FundReq> fetchAccuralRecords() throws Exception{
		return fundDataProcessDAO.fetchAccuralRecords();
	}
	
	public HashMap fetchExcelAtrributes() throws Exception{
		return fundDataProcessDAO.fetchExcelAtrributes();
	}
	
	/**
	 * Update the last polled data time stamp from loaniq tables 
	 * @return    	void
	 * @throws 		Exception 
     * @exception 	None 
	*/
	public void updatePollTimestamp() throws Exception{
		fundDataProcessDAO.updatePollTimestamp();		
	}
	
	public int wssMapCount(FundMessage fundMessage) throws Exception{
		return fundDataProcessDAO.wssMapCount(fundMessage);
	}
	
	public HashMap fetchWSSMapRef(FundMessage fundMessage) throws Exception{
		return fundDataProcessDAO.fetchWSSMapRef(fundMessage);
	}
	
	public int checkPrepaidObject(HashMap hashmap) throws Exception{
		return fundDataProcessDAO.checkPrepaidObject(hashmap);
	}
	
	public boolean persistExcelObjects(List excelObjects) throws Exception{
		return fundDataProcessDAO.persistExcelObjects(excelObjects);
	}
	
	public Poller getOstCofPoller() {
		return ostCofPoller;
	}

	public void setOstCofPoller(Poller ostCofPoller) {
		this.ostCofPoller = ostCofPoller;
	}
	
	public FundDataProcessDAO getFundDataProcessDAO() {
		return fundDataProcessDAO;
	}

	public void setFundDataProcessDAO(FundDataProcessDAO fundDataProcessDAO) {
		this.fundDataProcessDAO = fundDataProcessDAO;
	}

	/*
	 * This class will act as a Parameter holder class required to 
	 * iterate the ids inside the iBatis Query 
	*/
	
	public class FundHistoryParameter {
		public ArrayList<String> fundReqIds;

		public ArrayList<String> getFundReqIds() {
			return fundReqIds;
		}

		public void setFundReqIds(ArrayList<String> fundReqIds) {
			this.fundReqIds = fundReqIds;
		}
	}

	public Poller getCirclePoller() {
		return circlePoller;
	}

	public void setCirclePoller(Poller circlePoller) {
		this.circlePoller = circlePoller;
	}

	public List<FundHistory> getFundHistoryList() {
		
		return fundHistoryList;
	}

	public void setFundHistoryList(List<FundHistory> fundHistoryList) {
		this.fundHistoryList = fundHistoryList;
	}

	public NonOstTransWorkflowEngine getNonOstTransWorkflowEngine() {
		return nonOstTransWorkflowEngine;
	}

	public void setNonOstTransWorkflowEngine(
			NonOstTransWorkflowEngine nonOstTransWorkflowEngine) {
		this.nonOstTransWorkflowEngine = nonOstTransWorkflowEngine;
	}

	public OstTransWorkflowEngine getOstTransWorkflowEngine() {
		return ostTransWorkflowEngine;
	}

	public void setOstTransWorkflowEngine(
			OstTransWorkflowEngine ostTransWorkflowEngine) {
		this.ostTransWorkflowEngine = ostTransWorkflowEngine;
	}

	public int getStaticDataCodeCount() {
		return staticDataCodeCount;
	}

	public void setStaticDataCodeCount(int staticDataCodeCount) {
		this.staticDataCodeCount = staticDataCodeCount;
	}


	public AccuralWorflowEngine getAccuralWorflowEngine() {
		return accuralWorflowEngine;
	}


	public void setAccuralWorflowEngine(AccuralWorflowEngine accuralWorflowEngine) {
		this.accuralWorflowEngine = accuralWorflowEngine;
	}


	public AutoFundingWorkflowEngine getAutoFundingWorkflowEngine() {
		return autoFundingWorkflowEngine;
	}


	public void setAutoFundingWorkflowEngine(
			AutoFundingWorkflowEngine autoFundingWorkflowEngine) {
		this.autoFundingWorkflowEngine = autoFundingWorkflowEngine;
	}
	
	public boolean checkMigrationFlag() throws Exception{
		return fundDataProcessDAO.checkMigrationFlag();
	}
	
	public boolean checkDealMigrationStatus(String txnDealRID) throws Exception{
		return fundDataProcessDAO.checkDealMigrationStatus(txnDealRID);
	}


	public Poller getMigrationPoller() {
		return migrationPoller;
	}


	public void setMigrationPoller(Poller migrationPoller) {
		this.migrationPoller = migrationPoller;
	}

}
