package com.rbs.rbsgbl.loaniq.funding.datastore.data;

import java.text.SimpleDateFormat;
import java.util.Date;
import com.rbs.rbsgbl.loaniq.generic.common.Util;

public class FundHistory {

	private String 	bptOutTransRID="";
	private int  	bptNumver;
	private String 	bptNameAlias="";
	private Date	bptDateMaturity;
	private Date	bptDateCycleEnd;
	private Date	bptDateCycleDue;//Actual Due Date
	private Date 	bptDateAdjCycle;//Adjusted Due Date
	private String 	botCodeHBRtBasis="";
	private String 	bptCodeEndDtRule="";
	private String 	bptCodeAccrperiod="";
	private Date 	bptLastRepriceDate;

	public String getBotCodeHBRtBasis() {
		return botCodeHBRtBasis;
	}
	public void setBotCodeHBRtBasis(String botCodeHBRtBasis) {
		this.botCodeHBRtBasis = botCodeHBRtBasis;
	}
	public String getBptCodeAccrperiod() {
		return bptCodeAccrperiod;
	}
	public void setBptCodeAccrperiod(String bptCodeAccrperiod) {
		this.bptCodeAccrperiod = bptCodeAccrperiod;
	}
	public String getBptCodeEndDtRule() {
		return bptCodeEndDtRule;
	}
	public void setBptCodeEndDtRule(String bptCodeEndDtRule) {
		this.bptCodeEndDtRule = bptCodeEndDtRule;
	}
	public Date getBptDateAdjCycle() {
		return bptDateAdjCycle;
	}
	public void setBptDateAdjCycle(Date bptDateAdjCycle) {
		this.bptDateAdjCycle = bptDateAdjCycle;
	}
	public Date getBptDateCycleDue() {
		return bptDateCycleDue;
	}
	public void setBptDateCycleDue(Date bptDateCycleDue) {
		this.bptDateCycleDue = bptDateCycleDue;
	}
	public Date getBptDateCycleEnd() {
		return bptDateCycleEnd;
	}
	public void setBptDateCycleEnd(Date bptDateCycleEnd) {
		this.bptDateCycleEnd = bptDateCycleEnd;
	}
	public Date getBptDateMaturity() {
		return bptDateMaturity;
	}
	public void setBptDatematurity(Date bptDatematurity) {
		this.bptDateMaturity = bptDatematurity;
	}
	public String getBptNameAlias() {
		return bptNameAlias;
	}
	public void setBptNameAlias(String bptNameAlias) {
		this.bptNameAlias = bptNameAlias;
	}
	public int getBptNumver() {
		return bptNumver;
	}
	public void setBptNumver(int bptNumver) {
		this.bptNumver = bptNumver;
	}
	public String getBptOutTransRID() {
		return bptOutTransRID;
	}
	public void setBptOutTransRID(String bptOutTransRID) {
		this.bptOutTransRID = bptOutTransRID;
	}
	
	public String toString()
	{
		StringBuffer histDataStr =  new StringBuffer("");
		SimpleDateFormat simpleDateFormat  =  new SimpleDateFormat("dd/MM/yyyy");
		histDataStr.append(this.getBptNameAlias()+"|");
		histDataStr.append(this.getBotCodeHBRtBasis()+"|");
		histDataStr.append(Util.checkNULLForString(simpleDateFormat.format(this.getBptDateMaturity()))+"|");
		histDataStr.append(this.getBptCodeAccrperiod()+"|");
		histDataStr.append(Util.checkNULLForString(simpleDateFormat.format(this.getBptDateCycleDue()))+"|");
		histDataStr.append(Util.checkNULLForString(simpleDateFormat.format(this.getBptDateAdjCycle()))+"|");
		histDataStr.append(Util.checkNULLForString(simpleDateFormat.format(this.getBptDateCycleEnd()))+"|");
		histDataStr.append(this.getBptCodeEndDtRule());
		return histDataStr.toString();
	}
	public void setBptDateMaturity(Date bptDateMaturity) {
		this.bptDateMaturity = bptDateMaturity;
	}
	public Date getBptLastRepriceDate() {
		return bptLastRepriceDate;
	}
	public void setBptLastRepriceDate(Date bptLastRepriceDate) {
		this.bptLastRepriceDate = bptLastRepriceDate;
	}

}
