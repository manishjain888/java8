package com.rbs.rbsgbl.loaniq.funding.datastore.data;

import java.util.Date;

public class FetchWSSExternalTradeDTO {

	private String preLegBranch = "";
	private String prelegExpense = "";
	private String preLegPortfolio = "";
	private double preLegPctRate ;
	private String currLegOstRID = "";
	private Date currLegEffDate;
	private Date currLegOstAccEndDate;
	
	public Date getCurrLegEffDate() {
		return currLegEffDate;
	}
	public void setCurrLegEffDate(Date currLegEffDate) {
		this.currLegEffDate = currLegEffDate;
	}
	public Date getCurrLegOstAccEndDate() {
		return currLegOstAccEndDate;
	}
	public void setCurrLegOstAccEndDate(Date currLegOstAccEndDate) {
		this.currLegOstAccEndDate = currLegOstAccEndDate;
	}
	public String getCurrLegOstRID() {
		return currLegOstRID;
	}
	public void setCurrLegOstRID(String currLegOstRID) {
		this.currLegOstRID = currLegOstRID;
	}
	public String getPreLegBranch() {
		return preLegBranch;
	}
	public void setPreLegBranch(String preLegBranch) {
		this.preLegBranch = preLegBranch;
	}
	public String getPrelegExpense() {
		return prelegExpense;
	}
	public void setPrelegExpense(String prelegExpense) {
		this.prelegExpense = prelegExpense;
	}

	public String getPreLegPortfolio() {
		return preLegPortfolio;
	}
	public void setPreLegPortfolio(String preLegPortfolio) {
		this.preLegPortfolio = preLegPortfolio;
	}
	public double getPreLegPctRate() {
		return preLegPctRate;
	}
	public void setPreLegPctRate(double preLegPctRate) {
		this.preLegPctRate = preLegPctRate;
	}
	
}
