/* @class Name: FundDataProcessDAO.java                                                                 		*
 * @description : DAO Interface Object will be exposed to the Business Layer. Used to fetch data from           *
 * 				  fetch data from LoanIQ table and store it into RBSGBL_FUNDING_LIQWALL_FUNDMSG and 
 * 				  RBSGBL_FUNDING_LIQWALL_FUNDHST table respectively.                                                               												*   
 * @author : Manish.Gupta                                                                              			*
 * @date : 03-Jun-2008                                                                                          *
 * Organization : RBS - IDC                                                                                     *
 * Modification History                                                                                         *
 * **************************************************************************************************************
 * Date 				Version			Modified By						Description				                *
 * **************************************************************************************************************
 * 03-Jun-2008           1.0            Manish G                        Initial Version.                        *
 * 
 */
package com.rbs.rbsgbl.loaniq.funding.datastore;

import java.util.Date;
import java.util.HashMap;
import java.util.List;

import com.rbs.rbsgbl.loaniq.funding.business.FundDataProcessBSImpl.FundHistoryParameter;
import com.rbs.rbsgbl.loaniq.funding.datastore.data.AmdTransComment;
import com.rbs.rbsgbl.loaniq.funding.datastore.data.AutoFund;
import com.rbs.rbsgbl.loaniq.funding.datastore.data.BaseLinePortfolio;
import com.rbs.rbsgbl.loaniq.funding.datastore.data.COFSharePercentageDTO;
import com.rbs.rbsgbl.loaniq.funding.datastore.data.FetchWSSExternalTradeDTO;
import com.rbs.rbsgbl.loaniq.funding.datastore.data.FundHistory;
import com.rbs.rbsgbl.loaniq.funding.datastore.data.FundMessage;
import com.rbs.rbsgbl.loaniq.funding.datastore.data.FundReq;
import com.rbs.rbsgbl.loaniq.funding.datastore.data.OstCOF;
import com.rbs.rbsgbl.loaniq.funding.datastore.data.WSSMapper;

public interface FundDataProcessDAO {
	
	public List fetchOstCOFData() throws Exception;
	
	public void persistFundMessage(FundMessage objFundMessage) throws Exception;
	
	public void persistFundHistory(FundHistory objFundHistory) throws Exception;

	public List<FundHistory> fetchFundHistoryList(FundHistoryParameter parameter)throws Exception;	

	public void updatePollTimestamp() throws Exception;

	public void updateFundMessage(FundMessage objFundMessage)throws Exception;
	
	public List loadFundStaticData(String staticTypeID) throws Exception;
	
	//public List fetchCircleData() throws Exception;
	
	public HashMap getFundPollerTime() throws Exception;
	
	public List<COFSharePercentageDTO> calculatePortfolioExpenseAllocation(FundReq fundReq,String circleString) throws Exception;
	
	public List<COFSharePercentageDTO> calculatePortAllocForOUT(FundReq fundReq) throws Exception;
	
	public void updateFundHistory(OstCOF ostCof) throws Exception;
	
	public HashMap fetchRiskBookDetails(FundReq fundReq) throws Exception;
	
	public HashMap  fetchRiskBookDetailsWithDepos(FundReq fundReq) throws Exception;
	
	public List findRepricingDateForRCMF(OstCOF ostCof) throws Exception;
		
	public HashMap findFundMessage(FundReq fundReq) throws Exception;
	
	public void updateFundMessageForRELSD(FundMessage objFundMessage) throws Exception;
	
	public BaseLinePortfolio fetchBaselinePortfolio(COFSharePercentageDTO cPercentageDTO) throws Exception;
	
	public void insertPortfolioAllocRecord(BaseLinePortfolio baseLinePortfolio) throws Exception;
	
	 public void updateWSSTradeRef(String wssTradeRef) throws Exception;
	 
	 public int findFundSeqID(FundMessage fundMessage) throws Exception;
	 
	 public int rollerSeqForWSSTradeRef(FundMessage fundMessage) throws Exception;
	 
	 public void persistAutoFundMessage(AutoFund autoFund) throws Exception;
	 
	 public List<FundReq> fetchAccuralRecords() throws Exception;
	 
	 public java.util.Date findBusinessDate(String transBranch) throws Exception;
	 
	 public void updateBaselinePortfolio(BaseLinePortfolio baseLinePortfolio) throws Exception;
	 
	 public void persistAmendComment(AmdTransComment amendComment) throws Exception;
	 
	 public HashMap findWSSTradeID(FundMessage fundMessage) throws Exception;
	 
	 public int checkAutoFundExist(AutoFund autoFund) throws Exception;
	 
	 public void insertWSSMapRef(WSSMapper wssMapper)  throws Exception;
	 
	 public int wssMapCount(FundMessage fundMessage) throws Exception;
	 
	 public void updateWSSMapRef(WSSMapper wssMapper)  throws Exception;
	 
	 public HashMap fetchWSSMapRef(FundMessage fundMessage) throws Exception;
	 
	 public boolean checkMigrationFlag() throws Exception;
	 
	 public List fetchMIGCOFData() throws Exception;
	 
	 public boolean checkDealMigrationStatus(String txnDealRID) throws Exception;
	 
	 public int checkPrepaidObject(HashMap hashmap) throws Exception;
	 
	 public HashMap fetchExcelAtrributes() throws Exception;
	 
	 public boolean persistExcelObjects(List excelObjects) throws Exception;
	 
	 //MECCT Change
	 
	 public void updateSettlementIndicator(FundMessage objFundMessage) throws Exception;
	 
	 //public Date fetchAutoFundStartDate(String aftOldWSSMapRef) throws Exception;
	 
	 public HashMap fetchPreviousLegInfo(FundMessage fundMessage) throws Exception;
	 
	 public String fetchBptExtTradeID(FetchWSSExternalTradeDTO fetchWSSExternalTradeDTO) throws Exception;

	public void updateWssStubRef(FundMessage fundMessage)throws Exception;
}
