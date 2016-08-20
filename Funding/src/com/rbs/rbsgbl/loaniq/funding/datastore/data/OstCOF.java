/*
 * @class Name	: OstCOF.java  							                                       					*
 * @description : This class will represent the attribute of outstanding COF Transaction Shares					*   
 * @author 		: Manish.Gupta                                                                                 	*
 * @date 		: 30-May-2008                                                                                   *
 * Organization : RBS - IDC                                                                                     *
 * Modification History                                                                                         *
 * **************************************************************************************************************
 * Date 				Version			Modified By						Description				                *
 * **************************************************************************************************************
 * 30-May-2008           1.0            Manish K Gupta                  Initial Version.                        *
 * 
 */
package com.rbs.rbsgbl.loaniq.funding.datastore.data;

import java.util.Date;

public class OstCOF implements Cloneable{
	
	private String	transClassType	 	="";
	private String	transBranch	 		="";
	private String	transExpense	 	="";
	private String	transPortfolio	 	="";
	private String	transAmount	 		="";
	private String	transRate;
	private String	transDeal	 		="";
	private String	transDealName	 	="";
	private String	transFacility	 	="";
	private String	transFacilityName  	="";
	private String	transCurrency	 	="";
	private String	transBorrowwer	 	="";
	private String	transBorrowwerName 	="";
	private String	transBorrowwerShortName	 ="";
	private String	transServGroup	 	="";
	private String	transCOFRID	 		="";
	private String	transStatus	 		="";
	private String	transType	 		="";
	private String	transTypeDesc	 	="";
	private String	transGroupType	 	="";
	private Date	transEffDate;
	private Date	transRepriceDate;
	private String	transID	 			="";
	private String	transLinkID			="";
	private String	transGroupID	 	="";
	private String	transFundType    	="";
	private String	transReview	 		="";
	private String	tramsComment	 	="";
	private String	transTotalAmt;
	private Date	transTimeStamp;
	private String	transUID	 		="";
	private String	transRiskType	 	="";
	private Date	ostEffDate;
	private Date	ostRepriceDate;
	private String	ostRepriceFreq	 	="";
	private String	ostType    	 		="";
	private String	ostRID	 			="";
	private String	ostPriceOpt	 		="";
	private String	ostHBRateBasis	 	="";
	private String	ostAlias    	 	="";
	private Date	ostMatDate;
	private String	ostAccuralPeriod 	="";
	private String	ostAccuralRule	 	="";
	private String	ostNonBussDayRule 	="";
	private String	ostRateSetDaysInAdv;
	private Date	ostAccuralCycleDue;
	private Date	ostAccuralCycleAdj;
	private Date	ostAccuralCycleEnd;
	private String	ostHBBankNet;
	private String  dealAdministrator = "";
	private String 	ostSpread			="";
	private Date 	currentBussDate;
	private String	facTransID	 		="";
	private String	facTransType	 	="";
	private String	facTransTypeDesc 	="";
	private String	facTransCircleID 	="";
	private String  facTransCircleType  = "";
	private String  intAmount			= "";
	private String amendQueue		= "";

	public Object clone(){
		Object obj = null;
		try{
			 obj = super.clone();
		}
		catch(CloneNotSupportedException cloneException){}
		return obj;		
	}
	
	public String toString(){
		return " Fund Request ClassType : " + this.getTransClassType()+"| TransID :"+this.getTransID()+"| Branch Code :"+this.getTransBranch() + "| Expense Code : "+
			this.getTransExpense()+"| Portfolio Code :"+this.getTransPortfolio()+"| OstRID : "+this.getOstRID()  + "| COF RID  : " +this.getTransCOFRID();
	}
	
	public String getFacTransCircleID() {
		return facTransCircleID;
	}
	
	public void setFacTransCircleID(String facTransCircleID) {
		this.facTransCircleID = facTransCircleID;
	}
	
	public String getFacTransID() {
		return facTransID;
	}
	public void setFacTransID(String facTransID) {
		this.facTransID = facTransID;
	}
	public String getFacTransType() {
		return facTransType;
	}
	public void setFacTransType(String facTransType) {
		this.facTransType = facTransType;
	}
	public String getFacTransTypeDesc() {
		return facTransTypeDesc;
	}
	public void setFacTransTypeDesc(String facTransTypeDesc) {
		this.facTransTypeDesc = facTransTypeDesc;
	}
	public Date getOstAccuralCycleAdj() {
		return ostAccuralCycleAdj;
	}
	public void setOstAccuralCycleAdj(Date ostAccuralCycleAdj) {
		this.ostAccuralCycleAdj = ostAccuralCycleAdj;
	}
	public Date getOstAccuralCycleDue() {
		return ostAccuralCycleDue;
	}
	public void setOstAccuralCycleDue(Date ostAccuralCycleDue) {
		this.ostAccuralCycleDue = ostAccuralCycleDue;
	}
	public Date getOstAccuralCycleEnd() {
		return ostAccuralCycleEnd;
	}
	public void setOstAccuralCycleEnd(Date ostAccuralCycleEnd) {
		this.ostAccuralCycleEnd = ostAccuralCycleEnd;
	}
	public String getOstAccuralPeriod() {
		return ostAccuralPeriod;
	}
	public void setOstAccuralPeriod(String ostAccuralPeriod) {
		this.ostAccuralPeriod = ostAccuralPeriod;
	}
	public String getOstAccuralRule() {
		return ostAccuralRule;
	}
	public void setOstAccuralRule(String ostAccuralRule) {
		this.ostAccuralRule = ostAccuralRule;
	}
	public String getOstAlias() {
		return ostAlias;
	}
	public void setOstAlias(String ostAlias) {
		this.ostAlias = ostAlias;
	}
	public Date getOstEffDate() {
		return ostEffDate;
	}
	public void setOstEffDate(Date ostEffDate) {
		this.ostEffDate = ostEffDate;
	}
	public String getOstHBBankNet() {
		return ostHBBankNet;
	}
	public void setOstHBBankNet(String ostHBBankNet) {
		this.ostHBBankNet = ostHBBankNet;
	}
	public String getOstHBRateBasis() {
		return ostHBRateBasis;
	}
	public void setOstHBRateBasis(String ostHBRateBasis) {
		this.ostHBRateBasis = ostHBRateBasis;
	}
	public Date getOstMatDate() {
		return ostMatDate;
	}
	public void setOstMatDate(Date ostMatDate) {
		this.ostMatDate = ostMatDate;
	}
	public String getOstNonBussDayRule() {
		return ostNonBussDayRule;
	}
	public void setOstNonBussDayRule(String ostNonBussDayRule) {
		this.ostNonBussDayRule = ostNonBussDayRule;
	}
	public String getOstPriceOpt() {
		return ostPriceOpt;
	}
	public void setOstPriceOpt(String ostPriceOpt) {
		this.ostPriceOpt = ostPriceOpt;
	}
	public String getOstRateSetDaysInAdv() {
		return ostRateSetDaysInAdv;
	}
	public void setOstRateSetDaysInAdv(String ostRateSetDaysInAdv) {
		this.ostRateSetDaysInAdv = ostRateSetDaysInAdv;
	}
	public Date getOstRepriceDate() {
		return ostRepriceDate;
	}
	public void setOstRepriceDate(Date ostRepriceDate) {
		this.ostRepriceDate = ostRepriceDate;
	}
	public String getOstRepriceFreq() {
		return ostRepriceFreq;
	}
	public void setOstRepriceFreq(String ostRepriceFreq) {
		this.ostRepriceFreq = ostRepriceFreq;
	}
	public String getOstRID() {
		return ostRID;
	}
	public void setOstRID(String ostRID) {
		this.ostRID = ostRID;
	}
	public String getOstType() {
		return ostType;
	}
	public void setOstType(String ostType) {
		this.ostType = ostType;
	}
	public String getTramsComment() {
		return tramsComment;
	}
	public void setTramsComment(String tramsComment) {
		this.tramsComment = tramsComment;
	}
	public String getTransAmount() {
		return transAmount;
	}
	public void setTransAmount(String transAmount) {
		this.transAmount = transAmount;
	}
	public String getTransBorrowwer() {
		return transBorrowwer;
	}
	public void setTransBorrowwer(String transBorrowwer) {
		this.transBorrowwer = transBorrowwer;
	}
	public String getTransBorrowwerName() {
		return transBorrowwerName;
	}
	public void setTransBorrowwerName(String transBorrowwerName) {
		this.transBorrowwerName = transBorrowwerName;
	}
	public String getTransBorrowwerShortName() {
		return transBorrowwerShortName;
	}
	public void setTransBorrowwerShortName(String transBorrowwerShortName) {
		this.transBorrowwerShortName = transBorrowwerShortName;
	}
	public String getTransBranch() {
		return transBranch;
	}
	public void setTransBranch(String transBranch) {
		this.transBranch = transBranch;
	}
	public String getTransClassType() {
		return transClassType;
	}
	public void setTransClassType(String transClassType) {
		this.transClassType = transClassType;
	}
	public String getTransCOFRID() {
		return transCOFRID;
	}
	public void setTransCOFRID(String transCOFRID) {
		this.transCOFRID = transCOFRID;
	}
	public String getTransCurrency() {
		return transCurrency;
	}
	public void setTransCurrency(String transCurrency) {
		this.transCurrency = transCurrency;
	}
	public String getTransDeal() {
		return transDeal;
	}
	public void setTransDeal(String transDeal) {
		this.transDeal = transDeal;
	}
	public String getTransDealName() {
		return transDealName;
	}
	public void setTransDealName(String transDealName) {
		this.transDealName = transDealName;
	}
	public Date getTransEffDate() {
		return transEffDate;
	}
	public void setTransEffDate(Date transEffDate) {
		this.transEffDate = transEffDate;
	}
	public String getTransExpense() {
		return transExpense;
	}
	public void setTransExpense(String transExpense) {
		this.transExpense = transExpense;
	}
	public String getTransFacility() {
		return transFacility;
	}
	public void setTransFacility(String transFacility) {
		this.transFacility = transFacility;
	}
	public String getTransFacilityName() {
		return transFacilityName;
	}
	public void setTransFacilityName(String transFacilityName) {
		this.transFacilityName = transFacilityName;
	}
	public String getTransFundType() {
		return transFundType;
	}
	public void setTransFundType(String transFundType) {
		this.transFundType = transFundType;
	}
	public String getTransGroupID() {
		return transGroupID;
	}
	public void setTransGroupID(String transGroupID) {
		this.transGroupID = transGroupID;
	}
	public String getTransGroupType() {
		return transGroupType;
	}
	public void setTransGroupType(String transGroupType) {
		this.transGroupType = transGroupType;
	}
	public String getTransID() {
		return transID;
	}
	public void setTransID(String transID) {
		this.transID = transID;
	}
	public String getTransPortfolio() {
		return transPortfolio;
	}
	public void setTransPortfolio(String transPortfolio) {
		this.transPortfolio = transPortfolio;
	}
	public String getTransRate() {
		return transRate;
	}
	public void setTransRate(String transRate) {
		this.transRate = transRate;
	}
	public Date getTransRepriceDate() {
		return transRepriceDate;
	}
	public void setTransRepriceDate(Date transRepriceDate) {
		this.transRepriceDate = transRepriceDate;
	}
	public String getTransReview() {
		return transReview;
	}
	public void setTransReview(String transReview) {
		this.transReview = transReview;
	}
	public String getTransRiskType() {
		return transRiskType;
	}
	public void setTransRiskType(String transRiskType) {
		this.transRiskType = transRiskType;
	}
	public String getTransServGroup() {
		return transServGroup;
	}
	public void setTransServGroup(String transServGroup) {
		this.transServGroup = transServGroup;
	}
	public String getTransStatus() {
		return transStatus;
	}
	public void setTransStatus(String transStatus) {
		this.transStatus = transStatus;
	}
	public Date getTransTimeStamp() {
		return transTimeStamp;
	}
	public void setTransTimeStamp(Date transTimeStamp) {
		this.transTimeStamp = transTimeStamp;
	}
	
	public String getTransType() {
		return transType;
	}
	public void setTransType(String transType) {
		this.transType = transType;
	}
	public String getTransTypeDesc() {
		return transTypeDesc;
	}
	public void setTransTypeDesc(String transTypeDesc) {
		this.transTypeDesc = transTypeDesc;
	}
	public String getTransUID() {
		return transUID;
	}
	public void setTransUID(String transUID) {
		this.transUID = transUID;
	}
	public String getTransTotalAmt() {
		return transTotalAmt;
	}
	public void setTransTotalAmt(String transTotalAmt) {
		this.transTotalAmt = transTotalAmt;
	}

	public String getOstSpread() {
		return ostSpread;
	}
	
	public void setOstSpread(String ostSpread) {
		this.ostSpread = ostSpread;
	}

	public String getFacTransCircleType() {
		return facTransCircleType;
	}

	public void setFacTransCircleType(String facTransCircleType) {
		this.facTransCircleType = facTransCircleType;
	}

	public String getDealAdministrator() {
		return dealAdministrator;
	}

	public void setDealAdministrator(String dealAdministrator) {
		this.dealAdministrator = dealAdministrator;
	}

	public String getTransLinkID() {
		return transLinkID;
	}

	public void setTransLinkID(String transLinkID) {
		this.transLinkID = transLinkID;
	}

	public Date getCurrentBussDate() {
		return currentBussDate;
	}

	public void setCurrentBussDate(Date currentBussDate) {
		this.currentBussDate = currentBussDate;
	}

	public String getIntAmount() {
		return intAmount;
	}

	public void setIntAmount(String intAmount) {
		this.intAmount = intAmount;
	}

	public String getAmendQueue() {
		return amendQueue;
	}

	public void setAmendQueue(String amendQueue) {
		this.amendQueue = amendQueue;
	}
}
