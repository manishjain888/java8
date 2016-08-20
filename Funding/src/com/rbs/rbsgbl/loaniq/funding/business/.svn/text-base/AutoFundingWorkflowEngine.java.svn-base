package com.rbs.rbsgbl.loaniq.funding.business;

import java.util.Date;

import org.apache.log4j.Logger;
import org.springframework.context.ApplicationContext;

import com.rbs.rbsgbl.loaniq.funding.datastore.data.AutoFund;
import com.rbs.rbsgbl.loaniq.funding.datastore.data.FundMapper;
import com.rbs.rbsgbl.loaniq.funding.datastore.data.FundMessage;
import com.rbs.rbsgbl.loaniq.generic.application.RbsBatchApplication;

public class AutoFundingWorkflowEngine {

	private static Logger logger = Logger.getLogger("com.rbs.rbsgbl.loaniq.funding.business.AutoFundingWorkflowEngine");
	
	public AutoFundingWorkflowEngine() {
		super();
		// TODO Auto-generated constructor stub
	}

	public void processFundMessages(FundMessage fundMessage) throws Exception
	{		
		try{
			AutoFund autoFund = FundMapper.createAutoFundObject(fundMessage);
			
			if(checkAutoFundExist(autoFund)==0)
			{
				//	MECCT CHANGE
				if(fundMessage.getFundAmount()<0){
					autoFund.setAftTradeTypeCode("B");
					//autoFund.setAftStartDate(fetchAutoFundStartDate(autoFund));//TD#828 //TD#1046
				}
				else
				{
					autoFund.setAftTradeTypeCode(" ");
					//autoFund.setAftStartDate(fundMessage.getTransEffDate());
					autoFund.setAftOldWSSMapRef("");//TD#828 
				}				
				insertAutoFundRecord(autoFund);
				
			}
			else{
				//logger.error("Auto Fund Insertion Failed -"+fundMessage.getWssTradeRef()+" Already Exists in auto fund table");
				logger.info("Auto Fund Insertion Skipping as -"+fundMessage.getWssTradeRef()+" Already Exists in auto fund table");
			}
		}catch(Exception e){
			throw new Exception("Error in processing the Auto Fund Message in Auto Workflow Engine",e);
		}
	}
	
	
	private int  checkAutoFundExist(AutoFund autoFund) throws Exception{
		ApplicationContext context = RbsBatchApplication.getAppContext();
		FundDataProcessBS fundDataProcessBS = (FundDataProcessBS) context.getBean("fundDataProcessBS");
		int autoFundCount = 0;
		try{
			autoFundCount = fundDataProcessBS.checkAutoFundExist(autoFund);
		}
		catch(Exception e){
			throw new Exception("Error while checking the AutoFund record for "+autoFund.getAftWSSTradeRef()+" in auto fund table");
		}
		return autoFundCount;
	}
	
	private void insertAutoFundRecord(AutoFund autoFund) throws Exception{
		ApplicationContext context = RbsBatchApplication.getAppContext();
		FundDataProcessBS fundDataProcessBS = (FundDataProcessBS) context.getBean("fundDataProcessBS");
		try{
			fundDataProcessBS.persistAutoFundMessage(autoFund);
		}
		catch(Exception e){
			throw new Exception("Error in inserting the AutoFund");
		}		
	}
	
	/*private Date fetchAutoFundStartDate(AutoFund autoFund) throws Exception{
		ApplicationContext context = RbsBatchApplication.getAppContext();
		FundDataProcessBS fundDataProcessBS = (FundDataProcessBS) context.getBean("fundDataProcessBS");
		return fundDataProcessBS.fetchAutoFundStartDate(autoFund.getAftOldWSSMapRef());
	}*/
}
