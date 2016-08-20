/****************************************************************************************************************
 * @ClassName	:  FundValidator.java
 * @Description	 : The class will filter out the fund request object at transaction level.Logic for filter out the 
 * 				   record will be defined in filter method. 						                                                			 
 * @Author 		:  Manish Jain                                                                                  		
 * @Date 		:  14 July 2008                                                                                   	
 * @Organization : RBS - IDC                                                                                     
 *																												
 * Modification History                                                                                         
 * **************************************************************************************************************
 * Date 			Version			Modified By	    		Description											
 * **************************************************************************************************************
 * 30 May 2008			1.0			Manish Jain																		
 * 
 */

package com.rbs.rbsgbl.loaniq.funding.business;

import org.apache.log4j.Logger;

import com.rbs.rbsgbl.loaniq.funding.constants.FundConstant;
import com.rbs.rbsgbl.loaniq.funding.datastore.data.FundReq;
import com.rbs.rbsgbl.loaniq.funding.process.FundDataProcessor;
import com.rbs.rbsgbl.loaniq.funding.util.FundUtil;

public class FundValidator {

	private static Logger logger = Logger.getLogger("com.rbs.rbsgbl.loaniq.funding.business.FundValidator");
	
	/**
	* Function will validate whether records need to be filter out based upon filter criteria defined for the same transaction
	* @param  		filter
	* @return 		boolean
	* @exception 	None
 	*/
	public static boolean Validate(FundReq fundReq){

		logger.debug("/------------------- FundValidation Routine---------------------------/");
		if(isMatchFunded(fundReq) && isValidRiskBook(fundReq) && isValidWallStreetAreaPortfolio(fundReq) &&
				isValidRiskType(fundReq) && isValidPricingOption(fundReq))
		{
			
			logger.debug("/-----------------------FundValidation Routine Passed--------------------------/");
			return true;
		}
		logger.debug("/-----------------------FundValidation Routine Failed-------------------------------/");
		return false;
	}
	
	private static boolean isMatchFunded(FundReq fundReq){
		boolean matchFunded = fundReq.getOstCOF().getTransFundType().trim().equalsIgnoreCase("MF");
		logger.debug(":::  FundValidation Routine -->isMatchFunded  - " + matchFunded);
		return matchFunded;
	}
	
	private static boolean isValidRiskBook(FundReq fundReq){
		boolean  isValidRiskBook = FundUtil.isRecordExistForStaticTypeIDKeyVal1KeyVal2(FundDataProcessor.fundStaticMap, 
				FundConstant.FUNDING_STATIC_TYPE_ID_FNDO1,fundReq.getOstCOF().getTransBranch().trim(), fundReq.getRiskBookCode().trim() 
				);
		logger.debug(":::  FundValidation Routine -->Valid Risk Book  -" + isValidRiskBook);
		return isValidRiskBook;
	}
	
	private static boolean isValidWallStreetAreaPortfolio(FundReq fundReq){
		boolean isValidWallStreetAreaPortfolio = FundUtil.isRecordExistForStaticTypeIDKeyVal1KeyVal2(FundDataProcessor.fundStaticMap, FundConstant.FUNDING_STATIC_TYPE_ID_FNDO2,
				fundReq.getOstCOF().getTransBranch().trim(), fundReq.getOstCOF().getTransCurrency().trim());
		logger.debug(":::  FundValidation Routine -->Valid WallStreet AreaPortfolio  - " + isValidWallStreetAreaPortfolio);
		return isValidWallStreetAreaPortfolio;
	}
	
	private static boolean isValidRiskType(FundReq fundReq){
		boolean isValidRiskType = FundUtil.isRecordExistForStaticTypeIDKeyVal1KeyVal2(FundDataProcessor.fundStaticMap, FundConstant.FUNDING_STATIC_TYPE_ID_FNDO3,
				fundReq.getOstCOF().getTransBranch().trim(), fundReq.getOstCOF().getTransRiskType().trim());
		logger.debug(":::  FundValidation Routine -->Valid Risk Type  - " + isValidRiskType);
		return isValidRiskType;
	}
	
	private static boolean isValidPricingOption(FundReq fundReq){
		boolean isValidPricingOption = FundUtil.isRecordExistForStaticTypeIDKeyVal1KeyVal2(FundDataProcessor.fundStaticMap, FundConstant.FUNDING_STATIC_TYPE_ID_FNDO4,
				fundReq.getOstCOF().getTransBranch().trim(), fundReq.getOstCOF().getOstPriceOpt().trim());
		logger.debug(":::  FundValidation Routine -->Valid Pricing Option - " + isValidPricingOption);
		return isValidPricingOption;
	}	
}
