package com.rbs.rbsgbl.loaniq.funding.business;

import org.apache.log4j.Logger;
import com.rbs.rbsgbl.loaniq.generic.data.AbstractFileObject;
public class FundMIGExcelObject extends  AbstractFileObject {

	@SuppressWarnings("unused")
	private static Logger logger = Logger.getLogger("com.rbs.rbsgbl.loaniq.funding.business.FundMIGExcelObject");

	private String mplOstRID = ""; 
	private String mplEffDate ; 
	private String mplTranRID = "";
	private String mplIntAmt = "";
	
	public FundMIGExcelObject() {
		super();
	}

	public String getMplEffDate() {
		return mplEffDate;
	}

	public void setMplEffDate(String mplEffDate) {
		this.mplEffDate = mplEffDate;
	}

	public String getMplIntAmt() {
		return mplIntAmt;
	}

	public void setMplIntAmt(String mplIntAmt) {
		this.mplIntAmt = mplIntAmt;
	}

	public String getMplOstRID() {
		return mplOstRID;
	}

	public void setMplOstRID(String mplOstRID) {
		this.mplOstRID = mplOstRID;
	}

	public String getMplTranRID() {
		return mplTranRID;
	}

	public void setMplTranRID(String mplTranRID) {
		this.mplTranRID = mplTranRID;
	}
	
	public String toString(){
		return "mplOstRID  -- " + mplOstRID + " | mplEffDate  -- " + mplEffDate + " |loanRID -- "+ mplTranRID ;
	}
}
