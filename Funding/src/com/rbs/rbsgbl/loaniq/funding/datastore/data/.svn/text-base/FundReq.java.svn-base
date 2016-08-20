/*
 * @class Name: FundReq.java  							                                                    	*
 * @description : Funding Request Object which holds the Outstanding Transaction as well as 
 * COF Transaction Shares																                        *   
 * @author : Manish.Gupta                                                                                     	*
 * @date : 28-May-2008                                                                                          *
 * Organization : RBS - IDC                                                                                     *
 * Modification History                                                                                         *
 * **************************************************************************************************************
 * Date 				Version			Modified By						Description				                *
 * **************************************************************************************************************
 * 28-May-2008           1.0            Manish k Gupta                  Initial Version.                        *
 * 
 */
package com.rbs.rbsgbl.loaniq.funding.datastore.data;

import org.apache.log4j.Logger;

import com.rbs.rbsgbl.loaniq.funding.constants.FundConstant;


public class FundReq implements Cloneable{
	
	private static Logger logger = Logger.getLogger("com.rbs.rbsgbl.loaniq.funding.datastore.data.FundReq");
	
	private OstCOF ostCOF;
	
	private String riskBookCode="";
	private String riskBookDesc="";
	
	public FundReq(OstCOF ostCOF){
		this.ostCOF=ostCOF;		
	}
	
	public FundReq(){		
	}
	
	public Object clone(){
		Object obj = null;
		try{
			 obj = super.clone();
		}
		catch(CloneNotSupportedException cloneException){
			logger.error("This should not occur since we implement Cloneable");
		}
		return obj;
	}
	
	public FundReq deepClone() {
        try {
            FundReq fundReqCopy = (FundReq)super.clone();
            fundReqCopy.setOstCOF((OstCOF)ostCOF.clone());
            return fundReqCopy;
        } catch (CloneNotSupportedException e) {
            throw new Error("This should not occur since we implement Cloneable");
        }
    }
	
	public FundReq getFundReqObjectClone(COFSharePercentageDTO cOFPercentageDTO){
		double txn_amount = 0.0;
		FundReq fundreq = this.deepClone();
		
		fundreq.getOstCOF().setTransBranch(cOFPercentageDTO.getTransBranch().trim());
		fundreq.getOstCOF().setTransExpense(cOFPercentageDTO.getTransExpense().trim());
		fundreq.getOstCOF().setTransPortfolio(cOFPercentageDTO.getTransPortfolio().trim());
		fundreq.getOstCOF().setTransRate(""+cOFPercentageDTO.getTransRate());
		fundreq.getOstCOF().setTransFundType(cOFPercentageDTO.getTransFundingType().trim());

		if(fundreq.getOstCOF().getTransClassType().trim().equalsIgnoreCase(FundConstant.FUNDING_NON_OST_TRANS))
			fundreq.getOstCOF().setTransAmount(cOFPercentageDTO.getPortAmount());
		
		else if(fundreq.getOstCOF().getTransClassType().trim().equalsIgnoreCase(FundConstant.FUNDING_OST_TRANS) && fundreq.getOstCOF().getTransClassType().trim().equalsIgnoreCase(""))
		{
			txn_amount = ((Double.parseDouble(cOFPercentageDTO.getPortAmount()))/(Double.parseDouble(fundreq.getOstCOF().getOstHBBankNet())))*
					(Double.parseDouble(fundreq.getOstCOF().getTransTotalAmt())); 
			fundreq.getOstCOF().setTransAmount(""+txn_amount);
		}
		else if(fundreq.getOstCOF().getFacTransCircleID()!=null && fundreq.getOstCOF().getFacTransCircleID().trim().length()!=0){
			txn_amount = ((Double.parseDouble(cOFPercentageDTO.getPortAmount()))*(Double.parseDouble(fundreq.getOstCOF().getTransTotalAmt())));
			fundreq.getOstCOF().setTransAmount(""+txn_amount);
		}
		return fundreq;
	}
		
	public OstCOF getOstCOF() {
		return ostCOF;
	}
	
	public void setOstCOF(OstCOF ostCOF) {
		this.ostCOF = ostCOF;
	}

	public String getRiskBookCode() {
		return riskBookCode;
	}

	public void setRiskBookCode(String riskBookCode) {
		this.riskBookCode = riskBookCode;
	}

	public String getRiskBookDesc() {
		return riskBookDesc;
	}

	public void setRiskBookDesc(String riskBookDesc) {
		this.riskBookDesc = riskBookDesc;
	}
}