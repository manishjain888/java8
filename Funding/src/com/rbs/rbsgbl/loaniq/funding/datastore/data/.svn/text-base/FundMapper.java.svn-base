/****************************************************************************************************************
 * @ClassName	:  FundMapper.java
 * @Description	 : The Engine is the controls the mapping of FundReq Object to FundMessage. 						                                                			 
 * @Author 		:  Manish Gupta                                                                                  		
 * @Date 		:  28 May 2008                                                                                   	
 * @Organization : RBS - IDC                                                                                     
 *																												
 * Modification History                                                                                         
 * **************************************************************************************************************
 * Date 			Version			Modified By	    		Description											
 * **************************************************************************************************************
 * 28 May 2008			1.0				Manish K Gupta		
 */
 
package com.rbs.rbsgbl.loaniq.funding.datastore.data;

import java.util.Date;

import org.apache.log4j.Logger;

import com.rbs.rbsgbl.loaniq.funding.constants.FundConstant;
import com.rbs.rbsgbl.loaniq.funding.process.FundDataProcessor;
import com.rbs.rbsgbl.loaniq.funding.util.FundUtil;
import com.rbs.rbsgbl.loaniq.generic.common.Util;

public class FundMapper {	
	
	
	private static Logger logger = Logger.getLogger("com.rbs.rbsgbl.loaniq.funding.datastore.data.FundMapper");
	/**
	 * Method will used to create the new Funding Mesasge Object
	 * @return    	void
	 * @throws Exception 
     * @exception 	None 
	*/
	public static FundMessage createFundMessageObject(FundReq objFundRequest) throws Exception{
		
		OstCOF objOstCOF = null;
		objOstCOF =objFundRequest.getOstCOF();
		FundMessage objFundMessage = new FundMessage();
		try{
			objFundMessage.setTransClassType(Util.checkNULLForString(objOstCOF.getTransClassType()));
			objFundMessage.setBranchCode(Util.checkNULLForString(objOstCOF.getTransBranch()));
			objFundMessage.setExpenseCode(Util.checkNULLForString(objOstCOF.getTransExpense()));
			objFundMessage.setPortfolioCode(Util.checkNULLForString(objOstCOF.getTransPortfolio()));
			objFundMessage.setFundAmount(Double.parseDouble((objOstCOF.getTransAmount())));
			objFundMessage.setPctRate(Double.parseDouble(objOstCOF.getTransRate()));
			
			objFundMessage.setDealPID(Util.checkNULLForString(objOstCOF.getTransDeal()));
			objFundMessage.setDealName(Util.checkNULLForString(objOstCOF.getTransDealName()));
			objFundMessage.setFacilityPID(Util.checkNULLForString(objOstCOF.getTransFacility()));
			objFundMessage.setFacilityName(Util.checkNULLForString(objOstCOF.getTransFacilityName()));
			objFundMessage.setCurrencyCode(Util.checkNULLForString(objOstCOF.getTransCurrency()));
			objFundMessage.setBorrowerCode(Util.checkNULLForString(objOstCOF.getTransBorrowwer()));
			if(Util.checkNULLForString(objOstCOF.getTransBorrowwerName()).length()>30)
				objFundMessage.setBorrowerFullName((Util.checkNULLForString(objOstCOF.getTransBorrowwerName())).substring(0, 29));
			else
				objFundMessage.setBorrowerFullName(Util.checkNULLForString(objOstCOF.getTransBorrowwerName()));
			if(Util.checkNULLForString(objOstCOF.getTransBorrowwerShortName()).length()>30)
				objFundMessage.setBorrowerShortName((Util.checkNULLForString(objOstCOF.getTransBorrowwerShortName())).substring(0, 29));
			else
				objFundMessage.setBorrowerShortName(Util.checkNULLForString(objOstCOF.getTransBorrowwerShortName()));
			objFundMessage.setBorrowerServiceGroup(Util.checkNULLForString(objOstCOF.getTransServGroup()));
			
			objFundMessage.setTransCOFRID(Util.checkNULLForString(objOstCOF.getTransCOFRID()));
			
			objFundMessage.setTransStatus(Util.checkNULLForString(objOstCOF.getTransStatus()));
			objFundMessage.setTransTypeCode(Util.checkNULLForString(objOstCOF.getTransType()));
			objFundMessage.setTransTypeName(Util.checkNULLForString(objOstCOF.getTransTypeDesc()));
			objFundMessage.setTransGroupType(Util.checkNULLForString(objOstCOF.getTransGroupType()));
			objFundMessage.setTransEffDate(objOstCOF.getTransEffDate());
			objFundMessage.setTransRepricingDate(objOstCOF.getTransRepriceDate());
			objFundMessage.setTransRID(Util.checkNULLForString(objOstCOF.getTransID()));
			objFundMessage.setTransLinkID(Util.checkNULLForString(objOstCOF.getTransLinkID()));
			objFundMessage.setTransGroupID(Util.checkNULLForString(objOstCOF.getTransGroupID()));
			objFundMessage.setFundingType(Util.checkNULLForString(objOstCOF.getTransFundType()));
			objFundMessage.setTransReviewCode(Util.checkNULLForString(objOstCOF.getTransReview()));
			objFundMessage.setTransComment(Util.checkNULLForString(objOstCOF.getTramsComment()));
			objFundMessage.setTransTotalAmount(Util.checkNullForDouble(objOstCOF.getTransTotalAmt()));
			objFundMessage.setTransUpdateTimestamp(objOstCOF.getTransTimeStamp());
			objFundMessage.setTransUpdateUserID(Util.checkNULLForString(objOstCOF.getTransUID()));
			objFundMessage.setRiskTypeCode(Util.checkNULLForString(objOstCOF.getTransRiskType()));
			objFundMessage.setEffectiveDate(objOstCOF.getOstEffDate());
			objFundMessage.setRepricingDate(objOstCOF.getOstRepriceDate());
			objFundMessage.setRepricingFreq(Util.checkNULLForString(objOstCOF.getOstRepriceFreq() ));
			objFundMessage.setOutstandingType(Util.checkNULLForString(objOstCOF.getOstType()));
			objFundMessage.setOutstandingRID(Util.checkNULLForString(objOstCOF.getOstRID()));
			objFundMessage.setPricingOptionCode(Util.checkNULLForString(objOstCOF.getOstPriceOpt()));
			objFundMessage.setSpreadRate(Util.checkNullForDouble(objOstCOF.getOstSpread()));
			objFundMessage.setHostBankrateBasis(Util.checkNULLForString(objOstCOF.getOstHBRateBasis()));
			objFundMessage.setWalLStreetBasisCode(FundUtil.statValue2FromStatTypeIDKeyVal1(FundDataProcessor.fundStaticMap, 
					FundConstant.FUNDING_STATIC_TYPE_ID_FNDO7,objOstCOF.getOstHBRateBasis()));//from Static_Details
			objFundMessage.setLoanAlias(Util.checkNULLForString(objOstCOF.getOstAlias()));
			objFundMessage.setMaturityDate(objOstCOF.getOstMatDate());
			objFundMessage.setEnrichAccrualPeriod(Util.checkNULLForString(objOstCOF.getOstAccuralPeriod()));
			objFundMessage.setEnrichAccuralRule(Util.checkNULLForString(objOstCOF.getOstAccuralRule()));
			objFundMessage.setNonBussDayPricingOption(Util.checkNULLForString(objOstCOF.getOstNonBussDayRule()));
			objFundMessage.setSetDaysFreq(Util.checkNullForInt((objOstCOF.getOstRateSetDaysInAdv())));
			objFundMessage.setCycleDueDate(objOstCOF.getOstAccuralCycleDue());
			objFundMessage.setAdjustDueDate(objOstCOF.getOstAccuralCycleAdj());
			
			logger.debug("objOstCOF.getOstAccuralCycleEnd()   "+objOstCOF.getOstAccuralCycleEnd());
			objFundMessage.setAccuralCycleEndDate(objOstCOF.getOstAccuralCycleEnd());
			objFundMessage.setHostBankNetShareAmt(Util.checkNullForDouble((objOstCOF.getOstHBBankNet())));
			objFundMessage.setFacilityCommitTransID(Util.checkNULLForString(objOstCOF.getFacTransID()));
			objFundMessage.setFacilityCommitTransType(Util.checkNULLForString(objOstCOF.getFacTransType()));
			objFundMessage.setFacilityCommitTransDesc(Util.checkNULLForString(objOstCOF.getFacTransTypeDesc()));
			objFundMessage.setCircleID(Util.checkNULLForString(objOstCOF.getFacTransCircleID()));
			
			objFundMessage.setCircleType(Util.checkNULLForString(objOstCOF.getFacTransCircleType()));
			
			objFundMessage.setWssTradeRef("");//Make Combination
			objFundMessage.setProcessQueueCode("");//To be set
			objFundMessage.setArgonMsgProcessIndicator("");//To be set
			objFundMessage.setBreakFundIndicator("");//To be set
			objFundMessage.setBreakFundingAmount(0);//Compute it
			objFundMessage.setDealerListIndicator("");//To be set
			objFundMessage.setVersionNum(1);
			objFundMessage.setAmendmentIndicator("");//To be set		//misiing amend status code : fst_cde_amend_status
			objFundMessage.setRiskBookCode(Util.checkNULLForString(objFundRequest.getRiskBookCode())); //To be Derived from Risk Book
			objFundMessage.setRiskBookDesc(Util.checkNULLForString(objFundRequest.getRiskBookDesc()));//To be Derived from Risk Book
			objFundMessage.setWssSystemID(Util.checkNULLForString(FundUtil.statValue1FromStatTypeIDKeyVal1(FundDataProcessor.fundStaticMap, FundConstant.FUNDING_STATIC_TYPE_ID_FNDO5, objOstCOF.getTransBranch())));//From Static Details
			objFundMessage.setWssCityID(Util.checkNULLForString(FundUtil.statValue2FromStatTypeIDKeyVal1KeyVal2(FundDataProcessor.fundStaticMap, FundConstant.FUNDING_STATIC_TYPE_ID_FNDO1, objOstCOF.getTransBranch(),objFundRequest.getRiskBookCode())));//From Static Details
			objFundMessage.setWssCounterPartyID(Util.checkNULLForString(FundUtil.statValue1FromStatTypeIDKeyVal1KeyVal2(FundDataProcessor.fundStaticMap, FundConstant.FUNDING_STATIC_TYPE_ID_FNDO1, objOstCOF.getTransBranch(),objFundRequest.getRiskBookCode())));//From Static Details
			logger.debug("CounterParty ID --got from static data  "+objFundMessage.getWssCounterPartyID());
			objFundMessage.setWssProductType(Util.checkNULLForString(FundUtil.statValue2FromStatTypeIDKeyVal1KeyVal2(FundDataProcessor.fundStaticMap, FundConstant.FUNDING_STATIC_TYPE_ID_FNDO3, objOstCOF.getTransBranch(),objOstCOF.getTransRiskType())));//From Static Details
			objFundMessage.setWssBussAreaCode(Util.checkNULLForString(FundUtil.statValue1FromStatTypeIDKeyVal1KeyVal2(FundDataProcessor.fundStaticMap, FundConstant.FUNDING_STATIC_TYPE_ID_FNDO2, objOstCOF.getTransBranch(),objOstCOF.getTransCurrency())));//From Static Details
			objFundMessage.setWssPortfolioCode(Util.checkNULLForString(FundUtil.statValue2FromStatTypeIDKeyVal1KeyVal2(FundDataProcessor.fundStaticMap, FundConstant.FUNDING_STATIC_TYPE_ID_FNDO2, objOstCOF.getTransBranch(),objOstCOF.getTransCurrency())));//From Static Details
			objFundMessage.setFundReqRID(" ");//Make Combination
			objFundMessage.setWssExternalTradeID(" ");//To be set
			objFundMessage.setPreviosBaseleineValue(" ");//Make Combination
			objFundMessage.setAmendStatusUID(" ");//To be set
			objFundMessage.setAmendStatusTimeStamp(new Date());//To be Set
			objFundMessage.setRecordLockIndicator(" ");//To be set
			objFundMessage.setWssMapRef(" ");
			objFundMessage.setCurrentBussDate(objOstCOF.getCurrentBussDate());				
			objFundMessage.setTeamCode(Util.checkNULLForString(objOstCOF.getDealAdministrator()));	
			objFundMessage.setIntAmount(Double.parseDouble(objOstCOF.getIntAmount()));
		}
		catch(Exception e){
			throw new Exception("Error in creating the fund message",e);
		}
		return objFundMessage;
	}	
	
	/**
	 * Method will used to create the new Funding History Object
	 * @return    	void
	 * @throws Exception 
     * @exception 	None 
	*/
	public static FundHistory createFundHistoryObject(FundReq objFundRequest) throws Exception{
		
		OstCOF objOstCOF =	objFundRequest.getOstCOF();
		FundHistory objFundHistory = new FundHistory();	
		try{
			objFundHistory.setBptOutTransRID(objOstCOF.getOstRID().trim());
			objFundHistory.setBptNameAlias(objOstCOF.getOstAlias().trim());
			objFundHistory.setBotCodeHBRtBasis(objFundRequest.getOstCOF().getOstHBRateBasis().trim());
			objFundHistory.setBptDatematurity(objFundRequest.getOstCOF().getOstMatDate());
			objFundHistory.setBptCodeAccrperiod(objFundRequest.getOstCOF().getOstAccuralPeriod().trim());
			objFundHistory.setBptDateCycleDue(objFundRequest.getOstCOF().getOstAccuralCycleDue());
			objFundHistory.setBptDateAdjCycle(objFundRequest.getOstCOF().getOstAccuralCycleAdj());
			objFundHistory.setBptDateCycleEnd(objFundRequest.getOstCOF().getOstAccuralCycleEnd());
			objFundHistory.setBptCodeEndDtRule(objFundRequest.getOstCOF().getOstAccuralRule().trim());
			objFundHistory.setBptLastRepriceDate(objFundRequest.getOstCOF().getOstEffDate());
			objFundHistory.setBptNumver(1);
		}
		catch(Exception e){
			throw new Exception("Error in creating the fund history Object",e);
		}
		return objFundHistory;
	}
	
	public static  AutoFund createAutoFundObject(FundMessage fundMessage)  throws Exception{
		AutoFund autoFund = new AutoFund();
		try{
			autoFund.setAftWSSTradeRef(Util.checkNULLForString(fundMessage.getWssTradeRef()));
			autoFund.setAftWSSIntID(fundMessage.getWssSystemID());
			autoFund.setAftCityCode(fundMessage.getWssCityID());
			autoFund.setAftMsgType("M");
			autoFund.setAftTradeTypeCode(" ");
			autoFund.setAftAmendTypeCode(" ");
			autoFund.setAftWSSProdType(fundMessage.getWssProductType());
			autoFund.setAftWSSBusArea(fundMessage.getWssBussAreaCode());
			autoFund.setAftWSSPortfolio(fundMessage.getWssPortfolioCode());
			autoFund.setAftCurrencyCode(fundMessage.getCurrencyCode());
			autoFund.setAftPctRate(fundMessage.getPctRate());
			autoFund.setAftRateTypeCode("1");
			autoFund.setAftFundAmount(fundMessage.getFundAmount());
			autoFund.setAftIndIntFlag(" ");
			autoFund.setAftStartDate(fundMessage.getTransEffDate());
			if(fundMessage.getTransTypeCode().trim().equalsIgnoreCase("MIG"))
				autoFund.setAftTradeDate(fundMessage.getTransEffDate());
			else
				autoFund.setAftTradeDate(fundMessage.getCurrentBussDate());
			
			/*if(fundMessage.getMaturityDate()!=null)
				autoFund.setAftMaturityDate(fundMessage.getMaturityDate());
			else
				autoFund.setAftMaturityDate(fundMessage.getRepricingDate());*/
			autoFund.setAftMaturityDate(fundMessage.getAccuralCycleEndDate());//TD 1907
			
			autoFund.setAftWSSCounterPartyID(Util.checkNULLForString(fundMessage.getWssCounterPartyID())); 
			autoFund.setAftWSSRateBasisCode(Util.checkNULLForString(fundMessage.getWalLStreetBasisCode()));
			autoFund.setAftCodeRateIndex("FI");
			
			if(fundMessage.getTransTypeCode().trim().equalsIgnoreCase("MIG"))
				autoFund.setAftWSSTraderID("LQM");
			else
				autoFund.setAftWSSTraderID("LQI");
			
			autoFund.setAftCustRefRID(fundMessage.getLoanAlias());
			autoFund.setAftDSCRemark2(fundMessage.getBorrowerShortName().trim());
			autoFund.setAftDSCRemark1(" ");
			autoFund.setAftDSCRemark3(fundMessage.getBranchCode()+fundMessage.getPortfolioCode()+fundMessage.getExpenseCode());
			autoFund.setAftDSCCancelReason(" ");
			autoFund.setAftFeeBFCode(" ");
			autoFund.setAftFeeBFDate(" ");
			autoFund.setAftFeeBFNum(0);
			autoFund.setAftWSSPrevID(" ");
			autoFund.setAftSeqIDRID(" ");
			autoFund.setAftAppIDRID(" ");
			autoFund.setAftMSGStatusCode(" ");
			autoFund.setAftACKStatusCode(" ");
			autoFund.setAftWSSIntTradeID(" ");
			autoFund.setAftWSSExtTradeID(" ");
			autoFund.setAftFundReqRID(fundMessage.getFundReqRID());
			autoFund.setAftExcludeInd(" ");
			autoFund.setAftRecUpdateUID(fundMessage.getTransUpdateUserID());
			autoFund.setAftRecUpdateTSP(fundMessage.getTransUpdateTimestamp());
			autoFund.setAftWssMapRef(fundMessage.getWssMapRef());
			autoFund.setTeamCode(Util.checkNULLForString(fundMessage.getTeamCode()));
			
			//MECCT CHANGE
			autoFund.setAftOldWSSMapRef(fundMessage.getFstWSSPrevTradeRef());
			autoFund.setAftWssCustRef(fundMessage.getWssStubRef());
			
		}catch(Exception e){
			throw new Exception("Error in creating the Auto Fund Object",e);
		}
		return autoFund;
	}
	
	public static AmdTransComment createAmendComment(FundMessage fundMessage) throws Exception{
		AmdTransComment amendComment = new AmdTransComment();
		try
		{
			logger.debug("fundMessage.getFundReqRID() "+fundMessage.getFundReqRID()
					+" fundMessage.getAmendStatusTimeStamp() " + fundMessage.getAmendStatusTimeStamp()
					+ "  fundMessage.getAmendStatusUID() "+fundMessage.getAmendStatusUID()
					+"  fundMessage.getTransComment() "+ fundMessage.getTransComment());
			
			amendComment.setActFundReqRID(fundMessage.getFundReqRID());
			amendComment.setActRecCreateTSP(fundMessage.getAmendStatusTimeStamp());
			amendComment.setActRecCreateUID(fundMessage.getTransUpdateUserID());
			//amendComment.setActRIDComment(" ");
			amendComment.setActDSCComment(" ");
		}catch(Exception e){
			throw new Exception("Error in creating the Amend Comment Object",e);
		}
		return amendComment;
	}
	
	
	/*
	 * This Function is used when Fund Req does not have the Expense/Branch/Portfolio information
	 */
	public static BaseLinePortfolio createBaseLinePortfolio(COFSharePercentageDTO cSharePercentageDTO, 
					FundMessage fundMessage) throws Exception
	{
		BaseLinePortfolio baseLinePortfolio = new BaseLinePortfolio();
		try{
			baseLinePortfolio.setBptBranchCode(cSharePercentageDTO.getTransBranch().trim());
			baseLinePortfolio.setBptExpenseCode(cSharePercentageDTO.getTransExpense().trim());
			baseLinePortfolio.setBptOutstandRID(fundMessage.getOutstandingRID());
			baseLinePortfolio.setBptOutTransRID(" ");
			baseLinePortfolio.setBptPortfolioCode(cSharePercentageDTO.getTransPortfolio().trim());
			//baseLinePortfolio.setBptCycleStartDate(fundMessage.getTransEffDate()); TD # 1595
			
			baseLinePortfolio.setBptCycleStartDate(fundMessage.getEffectiveDate());
			baseLinePortfolio.setBptCycleEndDate(fundMessage.getAccuralCycleEndDate());
			baseLinePortfolio.setBptWssExtTradeID("");
			baseLinePortfolio.setBptPctRate(cSharePercentageDTO.getTransRate());
			baseLinePortfolio.setBptWssMapRef(" ");
		}catch(Exception e){
			throw new Exception("Error in creating the Baseline Portfolio Object",e);
		}
		return baseLinePortfolio;
	}
	
	/*
	 * This Function is used when Fund Req have the Expense/Branch/Portfolio information
	 */
	public static BaseLinePortfolio createBaseLinePortfolio(FundMessage fundMessage) throws Exception
	{
		BaseLinePortfolio baseLinePortfolio = new BaseLinePortfolio();
		try{
			baseLinePortfolio.setBptBranchCode(fundMessage.getBranchCode().trim());
			baseLinePortfolio.setBptExpenseCode(fundMessage.getExpenseCode().trim());
			baseLinePortfolio.setBptOutstandRID(fundMessage.getOutstandingRID());
			baseLinePortfolio.setBptOutTransRID(fundMessage.getTransRID());
			baseLinePortfolio.setBptPortfolioCode(fundMessage.getPortfolioCode().trim());
			//baseLinePortfolio.setBptCycleStartDate(fundMessage.getTransEffDate());
			baseLinePortfolio.setBptCycleStartDate(fundMessage.getEffectiveDate());
			baseLinePortfolio.setBptCycleEndDate(fundMessage.getAccuralCycleEndDate());
			
			baseLinePortfolio.setBptWssExtTradeID("");
			baseLinePortfolio.setBptPctRate(fundMessage.getPctRate());
			baseLinePortfolio.setBptWssMapRef(" ");
			baseLinePortfolio.setBptIndSettle("N");
		}catch(Exception e){
			throw new Exception("Error in creating the Baseline Portfolio Object",e);
		}
		return baseLinePortfolio;
	}
	
	/**
	 * Method will used to create the Wall Street Trade ref 
	 * @return    	void
	 * @throws Exception 
     * @exception 	None 
	*/
	private static String getWallStTradeRef(OstCOF objOstCOF) {
		String wallSttradeRef =null;
		
		String loanAlias =Util.checkNULLForString(objOstCOF.getOstAlias());
		String branch = Util.checkNULLForString(objOstCOF.getTransBranch());
		String expence = Util.checkNULLForString(objOstCOF.getTransExpense());
		String portfolio = Util.checkNULLForString(objOstCOF.getTransPortfolio());
		
		long sequenceID = 0;//need to modify
		
		wallSttradeRef = loanAlias+branch+portfolio+expence+sequenceID+sequenceID;
		return wallSttradeRef;
	}	

}
