package com.rbs.rbsgbl.loaniq.funding.business;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.context.ApplicationContext;

import com.rbs.rbsgbl.loaniq.funding.datastore.FundDataProcessDAO;
import com.rbs.rbsgbl.loaniq.funding.datastore.data.FundReq;
import com.rbs.rbsgbl.loaniq.funding.util.FundUtil;
import com.rbs.rbsgbl.loaniq.generic.application.RbsBatchApplication;

public class CirclePoller implements Poller {

	private static Logger logger = Logger
	.getLogger("com.rbs.rbsgbl.loaniq.funding.business.CirclePoller");
	
	List<FundReq> circleList = null;
	
	ArrayList<String> filterFundReqIds = null; // return the list of fund req ids which are which pass the first level filter
	
	/**
	 * Method will poll the funding request list 
	 * @return    	void
	 * @throws Exception 
     * @exception 	None 
	*/
	@SuppressWarnings("unchecked")
	public void poll() throws Exception{
		try{
			ApplicationContext appCtx = null;
			FundDataProcessDAO fundDao = null;
	
			appCtx = RbsBatchApplication.getAppContext();
			if (appCtx != null) {
				fundDao = (FundDataProcessDAO) appCtx.getBean("fundDataProcessDAO");
				//circleList = fundDao.fetchCircleData();
				//logger.debug("no of fund records returned from poll--->"+ circleList.size());
//				/FundUtil.updateCirclePollerTime =  new Date();
			}
		}
		catch(Exception e){
			throw new Exception("Error in fetching Circle records",e);
		}
	}
	public List<FundReq> getObjectlist() {
		return circleList;
	}

	public void setObjectList(List<FundReq> fundReqList) {
		this.circleList = fundReqList;
	}	
	
	
	public ArrayList<String> getFilterFundReqIds(){
		return null;
	}
	
	public void setFilterFundReqIds(ArrayList<String> filterFundReqIds){
		
	}
}
