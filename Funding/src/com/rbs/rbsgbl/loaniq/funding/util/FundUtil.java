package com.rbs.rbsgbl.loaniq.funding.util;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.ListIterator;

import org.apache.log4j.Logger;

import com.rbs.rbsgbl.loaniq.funding.constants.FundConstant;
import com.rbs.rbsgbl.loaniq.funding.datastore.data.FundHistory;
import com.rbs.rbsgbl.loaniq.funding.datastore.data.FundMessage;
import com.rbs.rbsgbl.loaniq.funding.datastore.data.FundReq;
import com.rbs.rbsgbl.loaniq.funding.datastore.data.FundStaticParam;

public class FundUtil {
	
	
	private static Logger logger = Logger.getLogger("com.rbs.rbsgbl.loaniq.funding.util.FundUtil");
	
	public static Timestamp ostPollerTime;
	public static Timestamp accrPollerTime;
	public static int pollTimeDiff;
	//public static Timestamp migrPollerTime;
	
	public static Date updateOstPollerTime;
	public static Date updateAccrPollerTime;
	
	
	public static boolean migrationFlag;
	
	public static boolean isRecordExistForStaticTypeIDKeyVal1KeyVal2(HashMap<String, List<FundStaticParam>> fundStaticMap,
			String staticTypeId,String keyValue1, String keyValue2){

		logger.debug("/\t\t\t  Check in Static Table ::  Parameters are staticTypeId " +staticTypeId + " ,keyValue1 " + keyValue1 + " ,keyValue2  "+keyValue2);

		ArrayList<FundStaticParam> list  = (ArrayList)fundStaticMap.get(staticTypeId.trim());
		if(list!=null && list.size()>0){
			for(FundStaticParam fundStaticParam: list){
				if(fundStaticParam.getKeyValue1().trim().equalsIgnoreCase(keyValue1.trim()) 
					&& fundStaticParam.getKeyValue2().trim().equalsIgnoreCase(keyValue2.trim()))
				{
					logger.debug("/\t\t\t  RecordExist in Static Table ::True");
					return true;
				}
			}
		}
		logger.debug("/\t\t\t  RecordExist in Static Table ::False");
		return false;
	}	
	
	public static String statValue2FromStatTypeIDKeyVal1(HashMap<String, List<FundStaticParam>> fundStaticMap,
			String staticTypeId,String keyValue1){
		List<FundStaticParam> list  =  fundStaticMap.get(staticTypeId);
		if(list!=null && list.size()>0){
			ListIterator<FundStaticParam> iterator = list.listIterator();
			while(iterator.hasNext()){
				FundStaticParam fundStaticParam = (FundStaticParam)iterator.next();
				if(fundStaticParam.getKeyValue1().trim().equalsIgnoreCase(keyValue1.trim())) 
				{
					return fundStaticParam.getStaticValue2();
				}
			}
		}
		return " ";
	}
	
	public static String statValue1FromStatTypeIDKeyVal1(HashMap<String, List<FundStaticParam>> fundStaticMap,
			String staticTypeId,String keyValue1){
		List<FundStaticParam> list  =  fundStaticMap.get(staticTypeId);
		if(list!=null && list.size()>0){
			ListIterator<FundStaticParam> iterator = list.listIterator();
			while(iterator.hasNext()){
				FundStaticParam fundStaticParam = (FundStaticParam)iterator.next();
				if(fundStaticParam.getKeyValue1().trim().equalsIgnoreCase(keyValue1.trim())) 
				{
					return fundStaticParam.getStaticValue1();
				}
			}
		}
		return " ";
	}
	
	public static String statValue2FromStatTypeIDKeyVal1KeyVal2(HashMap<String, List<FundStaticParam>> fundStaticMap,
			String staticTypeId,String keyValue1,String keyValue2){
		List<FundStaticParam> list  =  fundStaticMap.get(staticTypeId);
		if(list!=null && list.size()>0){
			ListIterator<FundStaticParam> iterator = list.listIterator();
			while(iterator.hasNext()){
				FundStaticParam fundStaticParam = (FundStaticParam)iterator.next();
				if(fundStaticParam.getKeyValue1().trim().equalsIgnoreCase(keyValue1.trim()) &&
					fundStaticParam.getKeyValue2().trim().equalsIgnoreCase(keyValue2.trim()))
				{
					return fundStaticParam.getStaticValue2();
				}
			}
		}
		return " ";
	}
	
	public static String statValue1FromStatTypeIDKeyVal1KeyVal2(HashMap<String, List<FundStaticParam>> fundStaticMap,
			String staticTypeId,String keyValue1,String keyValue2){
		logger.debug("staticTypeId  - "+staticTypeId + " keyValue1 - "+keyValue1+"  keyValue2 "+keyValue2);
		List<FundStaticParam> list  =  fundStaticMap.get(staticTypeId);
		if(list!=null && list.size()>0){
			ListIterator<FundStaticParam> iterator = list.listIterator();
			while(iterator.hasNext()){
				FundStaticParam fundStaticParam = (FundStaticParam)iterator.next();
				if(fundStaticParam.getKeyValue1().trim().equalsIgnoreCase(keyValue1.trim()) &&
					fundStaticParam.getKeyValue2().trim().equalsIgnoreCase(keyValue2.trim()))
				{
					return fundStaticParam.getStaticValue1();
				}
			}
		}
		return " ";
	}

	public static ArrayList<String> getRIDsList(List<FundReq> fundReqList){
		ListIterator<FundReq> fundReqListIterator = fundReqList.listIterator();
		ArrayList<String> tranRIDList =new ArrayList<String>();
		
		while(fundReqListIterator.hasNext()){
			FundReq fundReq = fundReqListIterator.next();
			/*TD#2472. OST and non OST records will be in cache */
			//	if(fundReq.getOstCOF().getTransClassType().trim().equalsIgnoreCase(FundConstant.FUNDING_NON_OST_TRANS))
			/* TD#802 Null Check in OST_RID*/
			if(fundReq.getOstCOF().getOstRID()!= null){
				if(!tranRIDList.contains(fundReq.getOstCOF().getOstRID().trim()))
					tranRIDList.add(fundReq.getOstCOF().getOstRID().trim());
			}
			else{
				logger.debug("OST RID is NULL in Fund Request  :: " + fundReq.getOstCOF().toString());
			}		
		}
		return tranRIDList;
	}
	
	public static boolean checkSignificantChange(FundReq fundReq, FundHistory fundHistory){
		
		boolean chkSigChg=
		!(fundReq.getOstCOF().getOstAlias().trim().equalsIgnoreCase(fundHistory.getBptNameAlias().trim()))
		||
		!(fundReq.getOstCOF().getOstHBRateBasis().trim().equalsIgnoreCase(fundHistory.getBotCodeHBRtBasis().trim()))
		||
		!(FundUtil.dateCompare(fundReq.getOstCOF().getOstMatDate(),fundHistory.getBptDateMaturity())==0)
		||
		!(fundReq.getOstCOF().getOstAccuralPeriod().trim().equalsIgnoreCase(fundHistory.getBptCodeAccrperiod().trim()))
		||
		!(FundUtil.dateCompare(fundReq.getOstCOF().getOstAccuralCycleDue(),fundHistory.getBptDateCycleDue())==0)
		||
		!(FundUtil.dateCompare(fundReq.getOstCOF().getOstAccuralCycleAdj(),fundHistory.getBptDateAdjCycle())==0)
		||
		!(FundUtil.dateCompare(fundReq.getOstCOF().getOstAccuralCycleEnd(),fundHistory.getBptDateCycleEnd())==0)
		||
		!(fundReq.getOstCOF().getOstAccuralRule().trim().equalsIgnoreCase(fundHistory.getBptCodeEndDtRule().trim()));	
		
		logger.debug("Significant Changes for fundReq OstRID " +fundReq.getOstCOF().getOstRID() + "  Status --->"+chkSigChg); 
		
		return chkSigChg;
	}
	
	public static FundHistory findBaselineRecord(FundReq fundReq, List<FundHistory> fundHistoryList){
		if(fundHistoryList!=null && fundHistoryList.size()>0){
			for(FundHistory fundHistory: fundHistoryList)
			{
				if(fundHistory.getBptOutTransRID().trim().equalsIgnoreCase(fundReq.getOstCOF().getOstRID().trim()))
					return fundHistory;
			}
		}
		return null;
	}
	
	public static boolean isValueExists(String str){
		if(str!=null && str.trim().length()!=0){
			return true;
		}
		return false;
	}
	
	public static int dateCompare(Date date1, Date date2){//date1-date2
		long date1Time = date1.getTime();
		long date2Time = date2.getTime();
		if(date1Time<date2Time)
			return -1;
		else if(date1Time==date2Time)
			return 0;
		else
			return 1;
	}	
	
	public static String wallStreetTradeRef(FundMessage fundMessage, int quckRePrcFundCnt, int fundSeqID,String qradjStr){	
		StringBuffer wssTradeRef = new StringBuffer(fundMessage.getLoanAlias());
		wssTradeRef.append(generateUnqID(fundMessage));
		
		if(fundSeqID>0){
			wssTradeRef.append(fundSeqID+1);
		}
		else{
			wssTradeRef.append(1);
		}
		if(qradjStr.trim().equalsIgnoreCase("QRADJ"))
			wssTradeRef.append("/"+quckRePrcFundCnt);

		logger.debug("Generated wallStreetTradeRef ::: "+wssTradeRef.toString());
		return wssTradeRef.toString();
	}
	
	public static String accWallStreetTradeRef(FundMessage fundMessage){
		StringBuffer wssTradeRef = new StringBuffer(fundMessage.getLoanAlias());
		wssTradeRef.append(generateUnqID(fundMessage));
		wssTradeRef.append(1);
		return wssTradeRef.toString();
	}
	
	public static String fundSeqID(FundMessage fundMessage,int fundSeqID){	
		StringBuffer fundReqRID = new StringBuffer(fundMessage.getTransRID());
		fundReqRID.append(generateUnqID(fundMessage));
		if(fundSeqID>0){
			fundReqRID.append(fundSeqID+1);
		}
		else{
			fundReqRID.append(1);
		}
		logger.debug("Generated fundReqRID ::: "+fundReqRID.toString());
		return fundReqRID.toString();
	}
	
	public static String nonOSTWallStreetTradeRef(FundMessage fundMessage,int quckRePrcFundCnt,int versionNum){
		StringBuffer wssTradeRef = generateUnqID(fundMessage);
		wssTradeRef.append(versionNum);
		
		if(quckRePrcFundCnt>0){
			wssTradeRef.append("/"+quckRePrcFundCnt+1);
		}
		else{
			wssTradeRef.append("");
		}
		
		return wssTradeRef.toString();
	}
	
	public static String nonOSTFundSeqID(FundMessage fundMessage,int versionNum){	
		StringBuffer fundSeqID = new StringBuffer(fundMessage.getTransRID());
		fundSeqID.append(generateUnqID(fundMessage));
		fundSeqID.append(versionNum);
		return fundSeqID.toString();
	}

	
	private static StringBuffer generateUnqID(FundMessage fundMessage){
		StringBuffer strBuff = new StringBuffer("");
		//strBuff.append(fundMessage.getTransRID());
		strBuff.append(fundMessage.getBranchCode());
		strBuff.append(fundMessage.getExpenseCode());
		strBuff.append(fundMessage.getPortfolioCode());
		return strBuff;
	}
	
	public static String wssMapRef(Date transUpdateTimeStamp, int wssMapCount){
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("ddMMyy");
		String wssMapRef = simpleDateFormat.format(transUpdateTimeStamp);
		wssMapCount++;
		int wssMapRefLength =new String(wssMapRef+ wssMapCount).length();
		String zeros = "";
		for(int i=0;i<FundConstant.AFT_WSS_MAP_REF_LENGTH - wssMapRefLength;i++){
			zeros = zeros+"0";
		}
		logger.debug("wssMapRef+zeros+wssGenCount  -- "+wssMapRef+zeros+wssMapCount);
		return wssMapRef+zeros+wssMapCount;
	}

	public static Date convertDate(Date date){
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd/MM/yyyy");
		String dateStr = simpleDateFormat.format(date);
		Date date1 = null;
		try{
			 date1 =simpleDateFormat.parse(dateStr);
		}
		catch(Exception e){
			logger.debug("Unable to parse Date ");
		}
		return date1;
	}
	
	public static String convertDateAsString(Date date){
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd/MM/yyyy");
		String dateStr = simpleDateFormat.format(date);
		return dateStr;
	}
	
	public static Timestamp subtractSecsFromDate(Timestamp pollTime, int pollTimeDiff){
		logger.debug("Orignal Poll Time :: "+pollTime);
		long pollTimeInMS = pollTime.getTime();  
		long before2Sec = pollTimeInMS - (pollTimeDiff * 1000);   
		logger.debug("After Sub Time ::"+new Timestamp(before2Sec));
		return new Timestamp(before2Sec);
		
	}
		
}
