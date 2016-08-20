package com.rbs.rbsgbl.loaniq.funding.datastore.data;

import java.util.Date;

import com.rbs.rbsgbl.loaniq.funding.util.FundUtil;

public class WSSMapper {

	public int wssGenCount ;
	public String wssMapRef = "";
	public Date wssTransUpdateTSP;
	
	public WSSMapper(Date transUpdateTimeStamp, int wssMapCount) {
		super();
		this.wssGenCount = wssMapCount;
		this.wssMapRef = FundUtil.wssMapRef(transUpdateTimeStamp,wssGenCount);
		this.wssTransUpdateTSP = FundUtil.convertDate(transUpdateTimeStamp);
	}
	
	public Date getWssTransUpdateTSP() {
		return wssTransUpdateTSP;
	}
	public void setWssTransUpdateTSP(Date wssTransUpdateTSP) {
		this.wssTransUpdateTSP = wssTransUpdateTSP;
	}
	
	public String toString(){
		return "WSS Gen Count - " + this.getWssGenCount()+" | Trans Update Timestamp - "+ getWssTransUpdateTSP()  ;
	}

	public int getWssGenCount() {
		return wssGenCount;
	}

	public void setWssGenCount(int wssGenCount) {
		this.wssGenCount = wssGenCount;
	}

	public String getWssMapRef() {
		return wssMapRef;
	}

	public void setWssMapRef(String wssMapRef) {
		this.wssMapRef = wssMapRef;
	}


	
}
