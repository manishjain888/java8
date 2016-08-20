/**
 * 
 */
package com.rbs.rbsgbl.loaniq.funding.business;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.context.ApplicationContext;

import com.rbs.rbsgbl.loaniq.funding.datastore.FundDataProcessDAO;
import com.rbs.rbsgbl.loaniq.funding.datastore.data.FundReq;
import com.rbs.rbsgbl.loaniq.funding.util.FundUtil;
import com.rbs.rbsgbl.loaniq.generic.application.RbsBatchApplication;

/**
 * @author jainmf
 *
 */
public class MigrationPoller implements Poller {

	
	private static Logger logger = Logger
	.getLogger("com.rbs.rbsgbl.loaniq.funding.business.MigrationPoller");
	
	List<FundReq> fundReqList = new ArrayList();;
	
	ArrayList<String> filterFundReqIds = null;
	
	

	/* (non-Javadoc)
	 * @see com.rbs.rbsgbl.loaniq.funding.business.Poller#poll()
	 */
	public void poll() throws Exception {
		try{
			ApplicationContext appCtx = null;
			FundDataProcessDAO fundDao = null;
	
			appCtx = RbsBatchApplication.getAppContext();
			if (appCtx != null) {
				fundDao = (FundDataProcessDAO) appCtx.getBean("fundDataProcessDAO");
				List migrationList = fundDao.fetchMIGCOFData();
				
				logger.debug("#########  migrationList ##########  "+migrationList.size());
				
				Iterator<FundReq> iterator= migrationList.iterator();
				while(iterator.hasNext()){
					FundReq fundreq = iterator.next();
					if(fundDao.checkDealMigrationStatus(fundreq.getOstCOF().getTransDeal())==false)
						continue;
					else
						fundReqList.add(fundreq);
				}
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
