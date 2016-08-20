/****************************************************************************************************************
 * @ClassName	:  Poller.java
 * @Description	 : Every Poling class needs to be implementted this interface as it will declare methods which is related
 * 				   to polling tha data. The purpose of creating this class is to make sure that core classes need not be changed
 * 				   when new poller class is added to fetch funding related data. 						                                                			 
 * @Author 		:  Manish Gupta                                                                                  		
 * @Date 		:  30 May 2008                                                                                   	
 * @Organization : RBS - IDC                                                                                     
 *																												
 * Modification History                                                                                         
 * **************************************************************************************************************
 * Date 			Version			Modified By	    		Description											
 * **************************************************************************************************************
 * 30 May 2008			1.0				Manish K Gupta																		
 * 
 */
package com.rbs.rbsgbl.loaniq.funding.business;

import java.util.ArrayList;
import java.util.List;
import com.rbs.rbsgbl.loaniq.funding.datastore.data.FundReq;

public interface Poller {
	
	// poll the data from LoanIQ funding tables
	public void poll() throws Exception;
	
	// return the list of fund request object
	public List<FundReq> getObjectlist();
	
	public void setObjectList(List<FundReq> fundReqList);
	
	public ArrayList<String> getFilterFundReqIds();
	
	public void setFilterFundReqIds(ArrayList<String> filterFundReqIds);

}
