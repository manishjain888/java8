/****************************************************************************************************************
 * @ClassName	:  FundDataProcessBS.java
 * @Description	 : This interface will holds all business methods which need to be implemented by Target class 						                                                			 
 * @Author 		:  Manish Gupta                                                                                  		
 * @Date 		:  28 May 2008                                                                                   	
 * @Organization : RBS - IDC                                                                                     
 *																												
 * Modification History                                                                                         
 * **************************************************************************************************************
 * Date 			Version			Modified By	    		Description											
 * **************************************************************************************************************
 * 28 May 2008			1.0				Manish K Gupta																		
 * 
 */
package com.rbs.rbsgbl.loaniq.funding.business;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import com.rbs.rbsgbl.loaniq.funding.datastore.data.AutoFund;
import com.rbs.rbsgbl.loaniq.funding.datastore.data.BaseLinePortfolio;
import com.rbs.rbsgbl.loaniq.funding.datastore.data.COFSharePercentageDTO;
import com.rbs.rbsgbl.loaniq.funding.datastore.data.FetchWSSExternalTradeDTO;
import com.rbs.rbsgbl.loaniq.funding.datastore.data.FundHistory;
import com.rbs.rbsgbl.loaniq.funding.datastore.data.FundMessage;
import com.rbs.rbsgbl.loaniq.funding.datastore.data.FundReq;
import com.rbs.rbsgbl.loaniq.funding.datastore.data.FundStaticParam;
import com.rbs.rbsgbl.loaniq.funding.datastore.data.OstCOF;
import com.rbs.rbsgbl.loaniq.funding.datastore.data.WSSMapper;

public interface FundDataProcessBS {
	
	public List<FundReq> fetchFundReqData() throws Exception;
	
	public void updatePollTimestamp() throws Exception;

	public void loadFundHistoryData(ArrayList<String> NonOstRiDsList)  throws Exception;
	
	public void persistFundHistory(FundHistory objFundHistory) throws Exception;
	
	public void updateFundHistory(FundReq fundReq,FundHistory fundHistory)  throws Exception;
	
	public HashMap<String, java.util.List<FundStaticParam>> loadFundStaticData() throws Exception;
	
	public void setFundPollerTime() throws Exception;
	
	public boolean checkSignificantChange(FundReq fundReq) throws Exception;
	
	public boolean checkValidTransactionType(FundReq fundReq) throws Exception;
	
	public List<FundReq> calculatePortfolioExpenseAllocation(FundReq fundReq) throws Exception;
		
	public FundMessage initiateWorkflow(FundReq fundReq) throws Exception;
		
	public HashMap fetchRiskBookDetails(FundReq fundReq) throws Exception;
	
	public void persistFundMessage(FundMessage fundMessage) throws Exception;
	
	public List findRepricingDateForRCMF(OstCOF ostCof) throws Exception;
	
	public HashMap findFundMessage(FundReq fundReq) throws Exception;
	
	public void updateFundMessageForRELSD(FundMessage objFundMessage) throws Exception;
	
	public BaseLinePortfolio fetchBaselinePortfolio(COFSharePercentageDTO cofSharePercentageDTO) throws Exception;
	
	public List<COFSharePercentageDTO> calculatePortAllocForOUT(FundReq fundReq) throws Exception;
	
	public void insertPortfolioAllocRecord(BaseLinePortfolio baseLinePortfolio) throws Exception;
	
	public void autoFundWorkflowEngine(FundMessage fundMessage) throws Exception;
	
	public int findFundSeqID(FundMessage fundMessage) throws Exception;
	
	public int findQuickRepriceFund(FundMessage fundMessage) throws Exception;
	
	public void persistAutoFundMessage(AutoFund autoFund) throws Exception;
	
	public List<FundReq> fetchAccuralRecords() throws Exception;
	
	public void accuralCycleWorkflow(FundReq fundReq) throws Exception;
	
	public void updateFundMessage(FundMessage objFundMessage) throws Exception;
	
	public java.util.Date findBusinessDate(String transBranch) throws Exception;
	 
	public FundHistory findFundHistoryObject(FundReq fundReq) throws Exception;
	
	public void updateBaselinePortfolio(BaseLinePortfolio baseLinePortfolio) throws Exception;
	
	public HashMap findWSSTradeID(FundMessage fundMessage) throws Exception;
	
	public int checkAutoFundExist(AutoFund autoFund) throws Exception;
	
	public void insertWSSMapRef(WSSMapper wssMapper)  throws Exception;
	
	public int wssMapCount(FundMessage fundMessage) throws Exception;
	
	public void updateWSSMapRef(WSSMapper wssMapper)  throws Exception;
	
	public HashMap fetchWSSMapRef(FundMessage fundMessage) throws Exception;
	
	public boolean checkMigrationFlag() throws Exception;
	
	public boolean checkDealMigrationStatus(String txnDealRID) throws Exception;
	
	public HashMap fetchExcelAtrributes() throws Exception;
	
	public boolean persistExcelObjects(List excelObjects) throws Exception;
	
	public int checkPrepaidObject(HashMap hashmap) throws Exception;
	
	public void updateSettlementIndicator(FundMessage objFundMessage) throws Exception;
	
//	public Date fetchAutoFundStartDate(String aftOldWSSMapRef) throws Exception;
	
	public HashMap fetchPreviousLegInfo(FundMessage fundMessage) throws Exception;
	
	public String fetchBptExtTradeID(FetchWSSExternalTradeDTO fetchWSSExternalTradeDTO) throws Exception;

	public void updateWssStubRef(FundMessage fundMessage)throws Exception;
	 
}
