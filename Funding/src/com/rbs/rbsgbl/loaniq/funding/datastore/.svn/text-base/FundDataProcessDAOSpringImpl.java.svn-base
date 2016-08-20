/**
 * @class Name: FundDataProcessDAOSpringImpl.java  							                              *
 * @description : FundDataProcessDAOSpringImpl DAO class implements FundDataProcessDAO and 	extends			  *
 * SqlMapClientDaoSupport interfaces.              														  *   
 * @author : Manish k Gupta                                                                                     *
 * @date : 05-June-2008                                                                                    *
 * Organization : RBS - IDC                                                                               *
 * Modification History                                                                                   *
 * ********************************************************************************************************
 * Date 				Version			Modified By						Description				          *
 * ********************************************************************************************************
 * 05-June-2008           1.0            Manish k Gupta                        Initial Version.                  *
 * 23-July-2009		  1.1		 Manish Jain				TD-802
 */
package com.rbs.rbsgbl.loaniq.funding.datastore;

import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

import org.apache.commons.net.ntp.TimeStamp;
import org.apache.log4j.Logger;
import org.springframework.dao.DataAccessException;
import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapException;
import com.rbs.rbsgbl.loaniq.funding.business.FundMIGExcelObject;
import com.rbs.rbsgbl.loaniq.funding.business.FundDataProcessBSImpl.FundHistoryParameter;
import com.rbs.rbsgbl.loaniq.funding.datastore.data.AmdTransComment;
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
import com.rbs.rbsgbl.loaniq.funding.util.FundUtil;
import com.rbs.rbsgbl.loaniq.generic.data.TrsMIGExcelObject;


public class FundDataProcessDAOSpringImpl extends SqlMapClientDaoSupport
		implements FundDataProcessDAO {

	private static Logger logger = Logger.getLogger("com.rbs.rbsgbl.loaniq.funding.datastore.FundDataProcessDAOSpringImpl");
	
	/**
	 * Method which fetch fund req object list which is added or updated after a given time period 
	 * @param String fundReqIds
	 * @return List<FundHistory>
	 * @exception handle Exception
	 */
	@SuppressWarnings("unchecked")
	public List loadFundStaticData(String staticTypeID) throws Exception{
		List list = null;
		try{
			list = getSqlMapClient().queryForList(staticTypeID);
		}
		catch(DataAccessException e) {
			throw new SqlMapException("Error while loading the static data with ID - "+staticTypeID ,e);
		}catch(Exception e) {
			throw new Exception("Error while loading the static data - "+staticTypeID,e);
		}
		return list;
	}
	
	
	/**
	 * Method which fetch the time from which the records will be picked from poller queries 
	 * @param 
	 * @return HashMap
	 * @exception handle Exception
	 */
	public HashMap getFundPollerTime() throws Exception {
		HashMap  pollTimeMap = null;		
		try{
			pollTimeMap = (HashMap)getSqlMapClientTemplate().queryForObject("LoanIQ_FundMessage.fetchPollTime");
		}
		catch(DataAccessException e) {
			throw new SqlMapException("Error Poll Date Selected for the current cycle is",e);
		}catch(Exception e) {
			throw new Exception("Error Poll Date Selected for the current cycle is--->",e);
		}
		return pollTimeMap;
	}
	
	
	/**
	 * Method which fetch the Current Business Date compared with the transaction effective 
	 * date to check if the transaction is back dated ot not 
	 * @param String
	 * @return Date
	 * @exception handle Exception
	 */
	public Date findBusinessDate(String transBranch) throws Exception{
		HashMap<String,String> dateMap = new HashMap<String,String>();
		dateMap.put("transBranch", transBranch);
		Date date = null;
		try{
			date = (Date)getSqlMapClient().queryForObject("LoanIQ_FundMessage.currentSystemDate", dateMap);
		}
		catch(DataAccessException e) {
			throw new SqlMapException("Error while fetching Business Date fetchFundHistoryList() method having Branch "+transBranch,e);
		}catch(Exception e) {
			throw new Exception("Error while fetching Business Date fetchFundHistoryList() method having Branch "+transBranch,e);
		}
		return date;
	}
	
	
	/**
	 * Method which fetch the history data from RBSGBL_BASELINE_IMAGE used to compare record 
	 * if exist in history, if not we insert the record in the table 
	 * @param FundHistoryParameter
	 * @return  List<FundHistory>
	 * @exception handle Exception
	 */
	public List<FundHistory> fetchFundHistoryList(FundHistoryParameter parameter)  throws Exception{ 
		List<FundHistory> gblFundHistoryList = new ArrayList<FundHistory>(); 
		List<FundHistory> lclFundHistoryList = new ArrayList<FundHistory>(); 
		try { 
			Integer length = 990; 
			ArrayList<List<String>>        list =         splitList(parameter.getFundReqIds(),length);
			
			for (Iterator i = list.iterator(); i.hasNext(); ) { 
				parameter.setFundReqIds((ArrayList)i.next()); 
				lclFundHistoryList = getSqlMapClient().queryForList("LoanIQ_FundMessage.fetchFundHistoryObject",parameter); 
				gblFundHistoryList.addAll(lclFundHistoryList); 
			} 
			lclFundHistoryList = null; 

		}catch(DataAccessException e) { 
			throw new SqlMapException("Error while fetching fund history list from fetchFundHistoryList() method--->",e); 
		}catch(Exception e) { 
			throw new Exception("Error while fetching fund history list from fetchFundHistoryList() method--->",e); 
		} 
			return gblFundHistoryList; 
		} 
		
	/**
	 * Method which split the original List into discrete set of Lists based on  
	 * parameter subListNumber. 
	 * @param List<String> orgList,int subListNumber
	 * @return  ArrayList<List<String>>
	 * @exception None
	 */
	public  static ArrayList<List<String>> splitList(List<String> orgList,    
			int subListNumber) {  
		
		if(orgList.size()<subListNumber)
			subListNumber = orgList.size();
		
		int subListSize = orgList.size() / subListNumber + ((orgList.size() % subListNumber)>0?1:0);   
		int index = 0;    
		int stopIndex = subListNumber;  
		ArrayList<List<String>> resultList =new ArrayList<List<String>>();
		
		for (int i = 1; i <= subListSize; i++) {   
			resultList.add(new ArrayList<String>(orgList.subList(index, stopIndex))); 
			index = stopIndex;  
			stopIndex =  ((stopIndex +subListNumber) > orgList.size()) ? orgList.size() : stopIndex+subListNumber;  
		}
		return resultList;
	}	
	
	/**
	 * Method which fetch the data from OST COF Poller Query
	 * @param fetchOstCOFData
	 * @return  List<FundReq>
	 * @exception handle Exception
	 */
	public List fetchOstCOFData() throws Exception{

		List fundReqList = null;
		HashMap<String,Timestamp> prmMap  = new HashMap<String,Timestamp>();
		logger.debug(" FundUtil.migrationFlag ::  "+FundUtil.migrationFlag);
		
		try {					
			if(FundUtil.migrationFlag == false)
			{
				Timestamp times =  FundUtil.subtractSecsFromDate(FundUtil.ostPollerTime,FundUtil.pollTimeDiff);
				logger.debug("Poller Time :::::"+ times);
				prmMap.put("pollerTime", times);
				if(FundUtil.ostPollerTime!=null)
					fundReqList = getSqlMapClientTemplate().queryForList("LOANIQ_FUNDING.fetchFundRequestObjList",prmMap);
			}
			else{
				fundReqList = getSqlMapClientTemplate().queryForList("LOANIQ_FUND_MIG.fetchFundRequestMIGObjList");
			}
		}catch (DataAccessException e) {
			throw new SqlMapException("DataAccessException while fetching fund Req list from fetchFundReqData--->",e);
		}catch (Exception e) {
			throw new Exception("Error while fetching fund Req list from fetchFundReqData--->",e);
		}
		return fundReqList;
	}

	/**
	 * Method which fetch the Risk book details and populate in the fundMessage,also used to find 
	 * details from Static table 
	 * @param FundReq
	 * @return  HashMap
	 * @exception handle Exception
	 */
	public HashMap fetchRiskBookDetails(FundReq fundReq) throws Exception{
		HashMap rskDtlMap = null;
		try{
			logger.debug("Expense Code "+fundReq.getOstCOF().getTransExpense()
					 + "Branch Code "+fundReq.getOstCOF().getTransBranch());
			if(fundReq.getOstCOF().getTransExpense()!=null && fundReq.getOstCOF().getTransBranch()!=null)
				rskDtlMap  = (HashMap)getSqlMapClientTemplate().queryForObject("LoanIQ_FundMessage.riskBookSQL", fundReq.getOstCOF());
		}catch (DataAccessException e) {
			throw new SqlMapException("Error while executing fetchRiskBookDetails - Parameter FundRq - "+fundReq.getOstCOF().toString(),e);
		}catch (Exception e) {
			throw new Exception("Error while executing fetchRiskBookDetails - Parameter FundRq - "+fundReq.getOstCOF().toString(),e);
		}
		return rskDtlMap;
	}
	
	public HashMap  fetchRiskBookDetailsWithDepos(FundReq fundReq) throws Exception{
		HashMap rskDtlMap = null;
		try{
			logger.debug("Expense Code "+fundReq.getOstCOF().getTransExpense()
					 + "Branch Code "+fundReq.getOstCOF().getTransBranch());
			if(fundReq.getOstCOF().getTransExpense()!=null && fundReq.getOstCOF().getTransBranch()!=null)
				rskDtlMap  = (HashMap)getSqlMapClientTemplate().queryForObject("LoanIQ_FundMessage.riskBookSQLWithDepos", fundReq.getOstCOF());
		}catch (DataAccessException e) {
			throw new SqlMapException("Error while executing fetchRiskBookDetails for Depos- Parameter FundRq - "+fundReq.getOstCOF().toString(),e);
		}catch (Exception e) {
			throw new Exception("Error while executing fetchRiskBookDetails for Depos- Parameter FundRq - "+fundReq.getOstCOF().toString(),e);
		}
		return rskDtlMap;
	}
	
	/**
	 * Method which calculate the portfolio expense allocation depending upon circle id is empty or has value
	 * @param FundReq
	 * @param String
	 * @return  HashMap
	 * @exception handle Exception
	 */
	public List<COFSharePercentageDTO> calculatePortfolioExpenseAllocation(FundReq fundReq,String circleString) throws Exception{
		HashMap<String,String> paramMap  = new HashMap<String,String>();
		List<COFSharePercentageDTO> cofList = null;
		paramMap.put("ostRID", fundReq.getOstCOF().getOstRID().trim());
		try{
			cofList = getSqlMapClientTemplate().queryForList("LoanIQ_FundMessage."+circleString,paramMap);
		}catch (DataAccessException e) {
			throw new SqlMapException("Error while executing calculatePortfolioExpenseAllocation parameter FundReq - "+fundReq.getOstCOF().toString(),e);
		}catch (Exception e) {
			throw new Exception("Error while executing calculatePortfolioExpenseAllocation parameter FundReq - "+fundReq.getOstCOF().toString(),e);
		}
		return cofList;
	}
	
	/**
	 * Method which calculate the portfolio expense allocation not dependent upon circle id 
	 * @param FundReq
	 * @param String
	 * @return  HashMap
	 * @exception handle Exception
	 */
	public List<COFSharePercentageDTO> calculatePortAllocForOUT(FundReq fundReq) throws Exception{
		List<COFSharePercentageDTO> portAllocList = null;
		try{
			logger.debug("CalculatePortAllocForOUT for FundReq -  "+fundReq.getOstCOF().toString());
			portAllocList = getSqlMapClientTemplate().queryForList("LoanIQ_FundMessage.ostTranCOFSharePercentageQuery",fundReq.getOstCOF());
		}catch (DataAccessException e) {
			throw new SqlMapException("DataAccessException while fetching calculatePortfolioExpenseAllocation for FundReq  - "+fundReq.getOstCOF().toString(),e);
		}catch (Exception e) {
			throw new Exception("Error while fetching calculatePortfolioExpenseAllocation record for FundReq  - "+fundReq.getOstCOF().toString(),e);
		}
		return  portAllocList;
		
	}
	
	/**
	 * Method which the WSS Trade id 
	 * @param FundMessage
	 * @return  HashMap
	 * @exception handle Exception
	 */
	public HashMap findWSSTradeID(FundMessage fundMessage) throws Exception{
		HashMap wssTradeMap =null;
		try{
			logger.debug("Search FundMessage record with details --> "+fundMessage.toString());
			wssTradeMap = (HashMap)getSqlMapClientTemplate().queryForObject("LoanIQ_FundMessage.findWSSTradeID",fundMessage);
		}catch (DataAccessException e) {
			throw new SqlMapException("DataAccessException while fetching WSSTradeID for fundMessage - "+fundMessage.toString(),e);
		}catch (Exception e) {
			throw new Exception("Error while fetching WSSTradeID for fundMessage - "+fundMessage.toString(),e);
		}
		return wssTradeMap;
	}
	
	/**
	 * Method uses to save the History Record
	 * @param FundHistory
	 * @return  void
	 * @exception handle Exception
	 */
	public void persistFundHistory(FundHistory objFundHistory) throws Exception{

		try {
			logger.debug("Fund History Object Before Inserting :: "+objFundHistory.toString());
			getSqlMapClientTemplate().insert("LoanIQ_FundMessage.persistFundHistory", objFundHistory);
			logger.debug("Fund history created successfully in persistFundHistory() call");
		}catch(DataAccessException e) {
			throw new SqlMapException("\nError while persisting Fund History --->"+objFundHistory.toString()+ " and error is",e);
		}catch(Exception e) {
			throw new Exception("Error while persisting Fund History --->\n"+objFundHistory.toString()+" and error is",e);
			
		}
	}
	
	/**
	 * Method uses to update the History Record
	 * @param FundHistory
	 * @return  void
	 * @exception handle Exception
	 */
	public void updateFundHistory(OstCOF ostCof) throws Exception{
		
			getSqlMapClientTemplate().update("LoanIQ_FundMessage.updateFundHistoryObject", ostCof);
			logger.debug("Fund history updated successfully in updateFundHistory() call");
		
	}
	
	/**
	 * Method uses to fetch the repricing Date for the case if TXN_TYPE='RCMF' for OST Trans
	 * @param OstCOF
	 * @return  java.util.Date
	 * @exception handle Exception
	 */
	public List findRepricingDateForRCMF(OstCOF ostCof) throws Exception{
		
		List<Date> list = new ArrayList<Date>();
		try {
			 list = (List)getSqlMapClientTemplate().queryForList("LoanIQ_FundMessage.repricingDateForRCMF",ostCof);
		}catch(DataAccessException e) {
			throw new SqlMapException("\nError in findRepricingDateForRCMF() Parameter OstCOF - "+ostCof.toString());
		}catch(Exception e) {
			throw new Exception("\nError in findRepricingDateForRCMF() Parameter OstCOF - "+ostCof.toString());
		}
		return list;
	}
	
	/**
	 * Method uses to find Existing Fund Message in case we need to update or insert the record
	 * @param FundHistory
	 * @return  void
	 * @exception handle Exception
	 */
	public HashMap findFundMessage(FundReq fundReq) throws Exception{
		HashMap hashMap = null;
		logger.debug(" Find FundMessage details - "+fundReq.getOstCOF().toString());
		try {
			hashMap = (HashMap)getSqlMapClientTemplate().queryForObject("LoanIQ_FundMessage.findFundMessage",fundReq.getOstCOF());
			logger.debug("         FundMap       "+hashMap);
		}catch(DataAccessException e) {
			throw new SqlMapException("\nError in findFundMessage() Parameter fundReq - "+fundReq.getOstCOF().toString());
		}catch(Exception e) {
			throw new Exception("\nError in findFundMessage() Parameter fundReq - "+fundReq.getOstCOF().toString());
		}
		return hashMap;
	}
	
	/**
	 * Method uses to save the record in RBSGBL_BASELINE_PORTFOLIO
	 * @param BaseLinePortfolio
	 * @return  void
	 * @exception handle Exception
	 */
	public void insertPortfolioAllocRecord(BaseLinePortfolio baseLinePortfolio) throws Exception{
		
		try{	
			logger.debug("Baseline Portfolio before insering - "+baseLinePortfolio.toString());
			getSqlMapClientTemplate().insert("LoanIQ_FundMessage.insertPortfolioAllocRecord", baseLinePortfolio);			
		}
		catch(DataAccessException e){
			logger.error("Error in inserting Baseline Portfolio - "+baseLinePortfolio.toString(), e);
		}
		catch(Exception e){
			logger.error("Error in inserting Baseline Portfolio - "+baseLinePortfolio.toString(), e);
		}			
	}
	
	public void insertWSSMapRef(WSSMapper wssMapper)  throws Exception{
		try{	
			logger.debug("WSS Mapping Record before insering - "+wssMapper.toString());
			getSqlMapClientTemplate().insert("LoanIQ_FundMessage.insertWSSMapRef", wssMapper);			
		}
		catch(DataAccessException e){
			logger.error("Error in inserting WSS Mapping Record - "+wssMapper.toString(), e);
		}
		catch(Exception e){
			logger.error("Error in inserting WSS Mapping Record - "+wssMapper.toString(), e);
		}	
	}
	
	public void updateWSSMapRef(WSSMapper wssMapper)  throws Exception{
		try{	
			logger.debug("WSS Mapping Record before updating - "+wssMapper.toString());
			getSqlMapClientTemplate().update("LoanIQ_FundMessage.updateWSSMapRef", FundUtil.convertDateAsString(wssMapper.getWssTransUpdateTSP()));			
		}
		catch(DataAccessException e){
			logger.error("Error in updating WSS Mapping Record - "+wssMapper.toString(), e);
		}
		catch(Exception e){
			logger.error("Error in updating WSS Mapping Record - "+wssMapper.toString(), e);
		}	
	}
	
	/**
	 * Method which insert record into FundMessage table
	 * 
	 * @param FundMessage
	 * @return void
	 * @exception Exception
	 */
	public void persistFundMessage(FundMessage objFundMessage) throws Exception {
		try {			
			logger.debug("Fund Message Before inserting -  "+objFundMessage.toString());
			getSqlMapClientTemplate().insert("LoanIQ_FundMessage.persistFundMessage",objFundMessage);
		}catch (DataAccessException e) {
			throw new SqlMapException("\nError while persisting Fund Message with ost Rid--->"+ objFundMessage.getTransRID()+" and error is",e);
		}catch (Exception e) {
			throw new Exception("\nError while persisting Fund Message with ost Rid--->"+ objFundMessage.getTransRID(),e);
		}
	}
	
	
	public int checkAutoFundExist(AutoFund autoFund) throws Exception{
		BigDecimal bigDecimal = null;
		try {
			 logger.debug("checkAutoFundExist - "+autoFund.toString());
			 HashMap map = (HashMap)getSqlMapClientTemplate().queryForObject("LoanIQ_FundMessage.checkAutoFundExist",autoFund);
			 bigDecimal = (BigDecimal)map.get("AUTOFUNDCOUNT");
			 logger.debug("AutoFundCount  ---  "+bigDecimal);
		}catch (DataAccessException e) {
			throw new SqlMapException("\nError while finding Auto Fund message with Wss Trade Ref--->"+ autoFund.getAftWSSTradeRef()+" and error is",e);
		}catch (Exception e) {
			throw new Exception("\nError while finding Auto Fund message with Wss Trade Ref--->"+ autoFund.getAftWSSTradeRef()+" and error is",e);
		}
		if(bigDecimal==null)
			return 0;
		return bigDecimal.intValue();
	}
	
	/**
	 * Method which insert record into RBSGBL_AUTO_FUND table after filtering records from RBSGBL_FUNDING_STAGE table
	 * 
	 * @param AutoFund
	 * @return void
	 * @exception Exception
	 */
	public void persistAutoFundMessage(AutoFund autoFund) throws Exception{
		try {
			logger.debug("inserting Auto Fund Record with details :: "+autoFund.toString());
			getSqlMapClientTemplate().insert("LoanIQ_FundMessage.persistAutoFundMessage",autoFund);
			logger.debug("Auto Fund message created successfully in persistAutoFundMessage() call");
		}catch (DataAccessException e) {
			throw new SqlMapException("\nError while Auto Fund message with ost Rid--->"+ autoFund.getAftFundReqRID()+" and error is",e);
		}catch (Exception e) {
			throw new Exception("\nError while Auto Fund message with ost Rid--->"+ autoFund.getAftFundReqRID()+" and error is",e);
		}
	}

	/**Method used to update record of FundMessage in case Transaction is Released
	 * @param FundMessage
	 * @return void
	 * @exception Exception
	*/
	public void updateFundMessageForRELSD(FundMessage objFundMessage) throws Exception{
		try {			
			logger.debug("Updating updateFundMessageFor RELSD transaction with Fund Message :: "+objFundMessage.toString());
			getSqlMapClientTemplate().update("LoanIQ_FundMessage.updateFundMessageForRELSD",objFundMessage);
		}catch(DataAccessException e) {
			throw new SqlMapException("Error while updating Fund Message For RELSD with key --->\n"+ objFundMessage.getFundReqRID()+" and error is",e);
		}catch(Exception e){
			throw new Exception("Error while updating Fund Message For RELSD with key --->\n"+ objFundMessage.getFundReqRID()+" and error is",e);
		}
	}
	
	/**Method used to update record of FundMessage 
	 * @param FundMessage
	 * @return void
	 * @exception Exception
	*/
	public void updateFundMessage(FundMessage objFundMessage) throws Exception{
		try {			
			logger.debug("Updating fund Message with Fund Message :: "+objFundMessage.toString());
			getSqlMapClientTemplate().update("LoanIQ_FundMessage.updateFundMessage",objFundMessage);
		}catch(DataAccessException e) {
			throw new SqlMapException("Error while updating Fund Message with key --->\n"+ objFundMessage.getFundReqRID()+" and error is",e);
		}catch(Exception e){
			throw new Exception("Error while updating Fund Message with key --->\n"+ objFundMessage.getFundReqRID()+" and error is",e);
		}
	}
	
	/**Method used to check whether Baseline Portfolio Object Exist or not
	 * @param COFSharePercentageDTO
	 * @return void
	 * @exception Exception
	*/
	public BaseLinePortfolio fetchBaselinePortfolio(COFSharePercentageDTO cPercentageDTO) throws Exception{
		BaseLinePortfolio baselinePortObj = null;
		try {
			Object obj  = getSqlMapClientTemplate().queryForObject("LoanIQ_FundMessage.baselinePortfolio",cPercentageDTO);
			if(obj!=null)
				baselinePortObj = (BaseLinePortfolio)obj;
		} catch(DataAccessException e) {
			throw new SqlMapException("Error while updating BaseLinePortfolio with key --->\n"+ baselinePortObj.getBptOutTransRID()+" and error is",e);
		}catch(Exception e){
			throw new Exception("Error while updating BaseLinePortfolio with key --->\n"+ baselinePortObj.getBptOutTransRID()+" and error is",e);
		}
		return baselinePortObj;
	}
	
	/**Method used to update record in RBSGBL_BASELINE_PORTFOLIO
	 * @param BaseLinePortfolio
	 * @return void
	 * @exception Exception
	*/
	public void updateBaselinePortfolio(BaseLinePortfolio baseLinePortfolio) throws Exception {
		try {	
			logger.debug("Before updating Baseline Portfolio  - "+baseLinePortfolio.toString());
			getSqlMapClientTemplate().update("LoanIQ_FundMessage.updateBaselinePort",baseLinePortfolio);
		}catch(DataAccessException e) {
			throw new SqlMapException("Error while updating BaseLinePortfolio with key --->\n"+ baseLinePortfolio.getBptOutTransRID()+" and error is",e);
		}catch(Exception e){
			throw new Exception("Error while updating BaseLinePortfolio with key --->\n"+ baseLinePortfolio.getBptOutTransRID()+" and error is",e);
		}
	}	
	
	/**Method used to update Wall Street Trade ref in RBSGBL_FUNDING_STAGE
	 * @param String
	 * @return void
	 * @exception Exception
	*/
	public void updateWSSTradeRef(String wssTradeRef) throws Exception{
		 HashMap<String,String> paramMap = new HashMap<String,String>();
		try {	
			paramMap.put("wssTradeRef", wssTradeRef);
			getSqlMapClientTemplate().update("LoanIQ_FundMessage.updateFundMessage",paramMap);
		}catch(DataAccessException e) {
			throw new SqlMapException("Error while updating WSSTradeRef --->\n"+wssTradeRef+ "and error is",e);
		}catch(Exception e){
			throw new Exception("Error while updating WSSTradeRef --->\n"+ wssTradeRef+" and error is",e);
		}
	 }
	 
	/**Method used to get Count of FundMesage objects with same transId, Expense,Branch and Portfolio
	 * @param FundMessage
	 * @return void
	 * @exception Exception
	*/
	 public int findFundSeqID(FundMessage fundMessage) throws Exception{
		 BigDecimal bigDecimal = null;
		 try {
			 HashMap map = (HashMap)getSqlMapClientTemplate().queryForObject("LoanIQ_FundMessage.fundSeqID",fundMessage);
			 bigDecimal = (BigDecimal)map.get("FUNDSEQID");
		 }catch(DataAccessException e) {
			throw new SqlMapException("Error while executing findFundSeqID() --->\n"+fundMessage.toString()+ "and error is",e);
		 }catch(Exception e){
			throw new Exception("Error while executing findFundSeqID() --->\n"+ fundMessage.toString()+"and error is",e);
		}
		 return bigDecimal.intValue();
	 }
	 
	 public int wssMapCount(FundMessage fundMessage) throws Exception{
		 Integer integer =null;
		 try {
			 logger.debug("transUpdateTimestamp  "+FundUtil.convertDateAsString(fundMessage.getTransUpdateTimestamp()));
			 String transUpdateTimestamp =FundUtil.convertDateAsString(fundMessage.getTransUpdateTimestamp());
			 integer = (Integer)getSqlMapClientTemplate().queryForObject("LoanIQ_FundMessage.wssMapCount",transUpdateTimestamp);
			logger.debug("integer --  "+integer);
			 if(integer==null)
				 return 0;
		 }catch(DataAccessException e) {
			throw new SqlMapException("Error while executing wssMapCount() --->\n"+fundMessage.getTransUpdateTimestamp()+ "and error is",e);
		 }catch(Exception e){
			throw new Exception("Error while executing wssMapCount() --->\n"+ fundMessage.getTransUpdateTimestamp()+"and error is",e);
		}
		 return integer.intValue();
	 }
	 
	 public HashMap fetchWSSMapRef(FundMessage fundMessage) throws Exception{
		HashMap hashMap = null;
		try {
			hashMap = (HashMap)getSqlMapClientTemplate().queryForObject("LoanIQ_FundMessage.fetchWSSMapRef",fundMessage);
			
			logger.debug("RBSGBL_BASELINE_PORTFOLIO  HashMap  : "+hashMap);
		}catch(DataAccessException e) {
			throw new SqlMapException("\nError in fetchWSSMapRef() Parameter fundMessage - "+fundMessage.toString());
		}catch(Exception e) {
			throw new Exception("\nError in fetchWSSMapRef() Parameter fundMessage - "+fundMessage.toString());
		}
		return hashMap;
	}
	 
	 
	/**Method used to get Count of transaction of type 'QRADJ' having same alias,
	 *  branch,portfolio, expense and seqID. Only for transactions which are deemed as AUTO funded.
	 * @param FundMessage
	 * @return void
	 * @exception Exception
	*/
	 public int rollerSeqForWSSTradeRef(FundMessage fundMessage) throws Exception{
		 BigDecimal bigDecimal =null;
		 try {
			 HashMap map = (HashMap)getSqlMapClientTemplate().queryForObject("LoanIQ_FundMessage.wssRollover",fundMessage);
			 bigDecimal  = (BigDecimal)map.get("WSSROLLOVER");
		 }catch(DataAccessException e) {
			throw new SqlMapException("Error while executing findFundSeqID() --->\n"+fundMessage.toString()+ "and error is",e);
		}catch(Exception e){
			throw new Exception("Error while executing findFundSeqID() --->\n"+ fundMessage.toString()+ " and error is",e);
		}
		 return bigDecimal.intValue();
	 }
	 

	/**Method used fetch list of Accural records based on last updated Timestamp
	 * @param 
	 * @return void
	 * @exception Exception
	*/
	 public List<FundReq> fetchAccuralRecords() throws Exception{
		List<FundReq> accuralRecordList = null;
		HashMap<String,Timestamp> pollerTimeMap  = new HashMap<String,Timestamp>();
		pollerTimeMap.put("accPollerTime", FundUtil.accrPollerTime);
		try {			
			accuralRecordList = getSqlMapClientTemplate().queryForList("LOANIQ_ACCURAL.fetchAccuralList",pollerTimeMap);
			logger.debug("accuralRecordList  Size  "+accuralRecordList.size());
		}catch (DataAccessException e) {
			throw new SqlMapException("DataAccessException while fetching Accural Records list from fetchAccuralRecords--->",e);
		}catch (Exception e) {
			throw new Exception("Error while fetching Accural Records list from fetchAccuralRecords--->",e);
		}
		return accuralRecordList;
	 }
	 
		/**Method used persist Amend Comment regarding User details who has done amandments
		 * @param FundMessage
		 * @return void
		 * @exception Exception
		*/
	 public void persistAmendComment(AmdTransComment amendComment) throws Exception{
		 try {
			getSqlMapClientTemplate().insert("LoanIQ_FundMessage.persistAmendComments",amendComment);
			logger.debug("Amend Comment created successfully in persistFundMessage() call");
		 }catch (DataAccessException e) {
			throw new SqlMapException("\nError while persisting Amend Comment with Rid--->"+ amendComment.getActFundReqRID()+" and error is",e);
		 }catch (Exception e) {
			throw new Exception("\nError while persisting Amend Comment with Rid--->"+ amendComment.getActFundReqRID()+" and error is",e);
		}
	 }
	 
	/**
	 * Method which update poll timestamp in funding env table for next Funding cycle run
	 * @param None
	 * @return None
	 * @exception handle Exception
	*/
	public void updatePollTimestamp() throws Exception{
		HashMap<String, Date> map = new HashMap<String, Date>();
		try {
			if(FundUtil.updateOstPollerTime!=null)
				map.put("ostPollerTime", FundUtil.updateOstPollerTime);
			/*if(FundUtil.updateAccrPollerTime!=null)
				map.put("accrCyclePollerTime", FundUtil.updateAccrPollerTime);*/
			getSqlMapClientTemplate().update("LoanIQ_FundMessage.updatePollTimestamp",map);
		} catch(DataAccessException e) {
			throw new SqlMapException("Error while updating polltime in RBSGBL_FUNDING_ENV table",e);
		}catch(Exception e){
			throw new Exception("Error while updating polltime in RBSGBL_FUNDING_ENV table",e);
		}		
	}
	
	public boolean checkMigrationFlag() throws Exception{
		
		String migString = (String)getSqlMapClientTemplate().queryForObject("LoanIQ_FundMessage.fetchMIGInd");
		
		boolean migFlag = false;
		if(migString.trim().equalsIgnoreCase("Y"))
			 migFlag = true;
		else if(migString.trim().equalsIgnoreCase("N"))
			migFlag = false;
		return migFlag;
	}
	
	
	public boolean checkDealMigrationStatus(String txnDealRID) throws Exception{
		
		String dealMigString = "";
		boolean dealMigFlag = false;
		
		
		if(FundUtil.migrationFlag)
			dealMigString = (String)getSqlMapClientTemplate().queryForObject("LoanIQ_FundMessage.fetchDealMIGInd",txnDealRID);
		else		
			dealMigString = (String)getSqlMapClientTemplate().queryForObject("LoanIQ_FundMessage.fetchDealMIGIndForOSTPoller",txnDealRID);
		
		
		if(dealMigString.trim().equalsIgnoreCase("Y"))
			dealMigFlag = true;
		else if(dealMigString.trim().equalsIgnoreCase("N"))
			dealMigFlag = false;
		
		return dealMigFlag;
	}
	/**
	 * Method which fetch the data from Mgration Poller Query
	 * @param fetchMIGCOFData
	 * @return  List<FundReq>
	 * @exception handle Exception
	 */
	public List fetchMIGCOFData() throws Exception{

		List fundReqList = null;
		HashMap<String,Timestamp> prmMap  = new HashMap<String,Timestamp>();
		
		try {					
			//prmMap.put("Migration pollerTime", FundUtil.migrPollerTime);
			//if(FundUtil.migrPollerTime!=null)
				fundReqList = getSqlMapClientTemplate().queryForList("LOANIQ_FUND_MIG.fetchFundRequestMIGObjList",prmMap);
		}catch (DataAccessException e) {
			throw new SqlMapException("DataAccessException while fetching MIG fund Req list --->",e);
		}catch (Exception e) {
			throw new Exception("Error while fetching fund Req list from fetchFundReqData--->",e);
		}
		return fundReqList;
	}
	
	public HashMap fetchExcelAtrributes() throws Exception{
		HashMap<String,Integer> attributeMap  = new HashMap<String,Integer>();
		Iterator<FundStaticParam> itr = null;
		List<FundStaticParam> fundStaticParamList = null;
			
		try{
			fundStaticParamList =  getSqlMapClientTemplate().queryForList("LOANIQ_STATIC_DETAILS.StaticListForExcel");
			itr = fundStaticParamList.iterator();
			while(itr.hasNext()){
				FundStaticParam fundStaticParam = itr.next();
				attributeMap.put(fundStaticParam.getKeyValue1(),Integer.parseInt(fundStaticParam.getStaticValue1()));
			}
		}catch(Exception ex){
			logger.error("Error while fetching static list for funding excel data"+ex);
		}		
		return attributeMap;
	}	
	
	
	public int checkPrepaidObject(HashMap hashmap) throws Exception{
		Integer count = (Integer)getSqlMapClientTemplate().queryForObject("LoanIQ_FundMessage.fetchPrePaidLoanObj",hashmap);
		return count.intValue();
	}
	
	@SuppressWarnings("finally")
	public boolean persistExcelObjects(List excelObjects) throws Exception{
		
		SqlMapClient sqlMap = getSqlMapClientTemplate().getSqlMapClient();
		try{
			sqlMap.startBatch();
			for(int i=0;i<excelObjects.size();i++){
				FundMIGExcelObject fundMIGExcelObject = (FundMIGExcelObject)excelObjects.get(i);
				
				getSqlMapClient().insert("LoanIQ_FundMessage.insertFundExcelObject",fundMIGExcelObject );
			}
			sqlMap.executeBatch();			
			
		}catch(Exception e){
			return false;
		}
		return true;
	}		

	
	public void batchInsert(List<FundMIGExcelObject> list) throws Exception{
		SqlMapClient sqlMap = getSqlMapClientTemplate().getSqlMapClient();
		sqlMap.startBatch();
		for(int j=0;j<list.size();j++ ){
			FundMIGExcelObject fundMIGExcelObject= list.get(j);						
			try {
				getSqlMapClient().insert("insertFundExcelObject",fundMIGExcelObject);
			}catch (DataAccessException e) {
				throw new SqlMapException("DataAccessException while Inserting Fund Excel Object --->",e);
			}catch (Exception e) {
				throw new Exception("Error while while Inserting Fund Excel Object--->",e);
			}
		}
	
		sqlMap.executeBatch();	
	}
	
	public void updateSettlementIndicator(FundMessage objFundMessage) throws Exception{
		try {	
			getSqlMapClientTemplate().update("LoanIQ_FundMessage.updateSettlementIndicator", objFundMessage);
			logger.debug("Fund history updated successfully in updateSettlementIndicator() call");
		}catch(DataAccessException e) {
			throw new SqlMapException("\nError while updating SettlementIndicator - "+" and error is",e);
		}catch(Exception e) {
			throw new Exception("\nnError while updating SettlementIndicator - "+" and error is",e);
		}
	}
	
	/*public Date fetchAutoFundStartDate(String aftOldWSSMapRef) throws Exception{
			return (Date)getSqlMapClientTemplate().queryForObject("LoanIQ_FundMessage.fetchAutoFundStartDate",aftOldWSSMapRef);
	}*/
	
	public HashMap fetchPreviousLegInfo(FundMessage fundMessage) throws Exception {
		return (HashMap)getSqlMapClientTemplate().queryForObject("LoanIQ_FundMessage.fetchPreviousLegInfo",fundMessage);
	}
	
	public String fetchBptExtTradeID(FetchWSSExternalTradeDTO fetchWSSExternalTradeDTO) throws Exception {
		return (String)getSqlMapClientTemplate().queryForObject("LoanIQ_FundMessage.fetchBptExtTradeID",fetchWSSExternalTradeDTO);
	}

	public void updateWssStubRef(FundMessage fundMessage) throws Exception {
		getSqlMapClientTemplate().update("LoanIQ_FundMessage.updateWssStubRef", fundMessage);
		
	}	
}
