package com.rbs.rbsgbl.loaniq.funding.datastore.data;

import java.util.Date;

public class AmdTransComment {

	private String  actFundReqRID = "";
	private String  actRIDComment= "";
	private String  actDSCComment= "";
	private Date  actRecCreateTSP;
	private String  actRecCreateUID= "";
	
	public String getActDSCComment() {
		return actDSCComment;
	}
	public void setActDSCComment(String actDSCComment) {
		this.actDSCComment = actDSCComment;
	}
	public String getActFundReqRID() {
		return actFundReqRID;
	}
	public void setActFundReqRID(String actFundReqRID) {
		this.actFundReqRID = actFundReqRID;
	}
	public String getActRecCreateUID() {
		return actRecCreateUID;
	}
	public void setActRecCreateUID(String actRecCreateUID) {
		this.actRecCreateUID = actRecCreateUID;
	}
	public String getActRIDComment() {
		return actRIDComment;
	}
	public void setActRIDComment(String actRIDComment) {
		this.actRIDComment = actRIDComment;
	}
	public Date getActRecCreateTSP() {
		return actRecCreateTSP;
	}
	public void setActRecCreateTSP(Date actRecCreateTSP) {
		this.actRecCreateTSP = actRecCreateTSP;
	}

}
