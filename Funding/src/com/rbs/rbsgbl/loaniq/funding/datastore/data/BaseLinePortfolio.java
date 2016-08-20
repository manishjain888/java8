package com.rbs.rbsgbl.loaniq.funding.datastore.data;

import java.util.Date;

public class BaseLinePortfolio {

	private String bptOutstandRID ="";
	private String bptOutTransRID ="";
	private String bptBranchCode ="";
	private String bptExpenseCode="";
	private String bptPortfolioCode="";
	private String bptWssExtTradeID="";
	private double bptPctRate=0.0;
	private Date bptCycleStartDate;
	private Date bptCycleEndDate;
	private String bptWssMapRef="";
	private String bptIndSettle = "N";

	
	public String toString(){
		return this.getBptOutstandRID()+"|"+this.getBptBranchCode()+"|"+this.getBptExpenseCode() + "|"+
			this.getBptPortfolioCode()+"|"+this.getBptPctRate()+"|"+this.getBptOutTransRID() +"|"+this.getBptWssMapRef();
	}
	
	public String getBptBranchCode() {
		return bptBranchCode;
	}
	public void setBptBranchCode(String bptBranchCode) {
		this.bptBranchCode = bptBranchCode;
	}
	public String getBptExpenseCode() {
		return bptExpenseCode;
	}
	public void setBptExpenseCode(String bptExpenseCode) {
		this.bptExpenseCode = bptExpenseCode;
	}
	public String getBptOutstandRID() {
		return bptOutstandRID;
	}
	public void setBptOutstandRID(String bptOutstandRID) {
		this.bptOutstandRID = bptOutstandRID;
	}
	public String getBptOutTransRID() {
		return bptOutTransRID;
	}
	public void setBptOutTransRID(String bptOutTransRID) {
		this.bptOutTransRID = bptOutTransRID;
	}
	public String getBptPortfolioCode() {
		return bptPortfolioCode;
	}
	public void setBptPortfolioCode(String bptPortfolioCode) {
		this.bptPortfolioCode = bptPortfolioCode;
	}
	public String getBptWssExtTradeID() {
		return bptWssExtTradeID;
	}
	public void setBptWssExtTradeID(String bptWssExtTradeID) {
		this.bptWssExtTradeID = bptWssExtTradeID;
	}
	/*public String getBptAmtAmount() {
		return bptAmtAmount;
	}
	public void setBptAmtAmount(String bptAmtAmount) {
		this.bptAmtAmount = bptAmtAmount;
	}*/
	public double getBptPctRate() {
		return bptPctRate;
	}
	public void setBptPctRate(double bptPctRate) {
		this.bptPctRate = bptPctRate;
	}

	public Date getBptCycleEndDate() {
		return bptCycleEndDate;
	}

	public void setBptCycleEndDate(Date bptCycleEndDate) {
		this.bptCycleEndDate = bptCycleEndDate;
	}

	public Date getBptCycleStartDate() {
		return bptCycleStartDate;
	}

	public void setBptCycleStartDate(Date bptCycleStartDate) {
		this.bptCycleStartDate = bptCycleStartDate;
	}

	public String getBptWssMapRef() {
		return bptWssMapRef;
	}

	public void setBptWssMapRef(String bptWssMapRef) {
		this.bptWssMapRef = bptWssMapRef;
	}

	public String getBptIndSettle() {
		return bptIndSettle;
	}

	public void setBptIndSettle(String bptIndSettle) {
		this.bptIndSettle = bptIndSettle;
	}

}
