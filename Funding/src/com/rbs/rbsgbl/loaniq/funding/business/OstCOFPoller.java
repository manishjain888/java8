/****************************************************************************************************************
 * @ClassName		: OstCOFPoller.java
 * @Description	 	: This class is responsible for poll the funding related data from LoanIQ tables based upon the 
 * 				   	  given input. 						                                                			 
 * @Author 			: Manish Gupta                                                                                  		
 * @Date 			: 28 May 2008                                                                                   	
 * @Organization 	: RBS - IDC                                                                                     
 *																												
 * Modification History                                                                                         
 * **************************************************************************************************************
 * Date 			Version			Modified By	    		Description											
 * **************************************************************************************************************
 * 28 May 2008		1.0				Manish K Gupta																		
 * 
 */
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

public class OstCOFPoller implements Poller {

	private static Logger logger = Logger
			.getLogger("com.rbs.rbsgbl.loaniq.funding.business.OstCOFPoller");

	List<FundReq> fundReqList = null;
	
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
				FundUtil.updateOstPollerTime =  new Date();
				fundReqList = fundDao.fetchOstCOFData();
			}
		}
		catch(Exception e){
			 throw new  Exception("Error in Ost Cof polling the records",e);
		}
	}	
	
	public ArrayList<String> getFilterFundReqIds() {
		return filterFundReqIds;
	}

	@SuppressWarnings("unchecked")
	public void setFilterFundReqIds(ArrayList filterFundReqIds) {
		this.filterFundReqIds = filterFundReqIds;
	}

	public List<FundReq> getObjectlist() {
		return fundReqList;
	}

	public void setObjectList(List<FundReq> fundReqList) {
		this.fundReqList = fundReqList;
	}

}
