/*******************************************************************************
 * @ClassName 		: AutoFundMessage.java
 * @Author 	  		: joshinc
 * @Date 	  		: Aug 12, 2008
 * @Organization 	: RBS - IDC
 * 
 * Modification History
 * **************************************************************************************************************
 * Date 			Version 		Modified By 			Description
 * **************************************************************************************************************
 * Aug 12, 2008 	1.0	 	joshinc			Initial Version.
 * 
 */
package com.rbs.rbsgbl.loaniq.funding.process;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.Date;
import nu.xom.Document;
import nu.xom.Element;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import com.rbs.rbsgbl.loaniq.funding.datastore.data.AutoFund;
import com.rbs.rbsgbl.loaniq.funding.exception.AutoFundingException;
import com.rbs.rbsgbl.loaniq.generic.common.ValidateXML;

/**
 * The AutoFundMessage class is for creating the XML to be sent out for ASutoFunding requests to Wallstreet via Argon.
 * @author joshinc
 * @version ,Aug 12, 2008
 * @see
 */
public class AutoFundMessage {
	protected static Log log = LogFactory.getLog(AutoFundMessage.class);
	String localFolder = null;
	String ftpFolder = null;
	String loaniq_gelid = null;
	String tdt_gelid = null;
	private ValidateXML validateXML;
	String strXSDFileName = null;
	private static final String MMTRADE = "MMTRADE";
	private static final String INTERFACE_ID_ = "interface_id";
	private static final String CITY_CODE = "city_code";
	private static final String NEW_TRADE_ID = "new_trade_id";
	private static final String MESSAGE_TYPE = "message_type";
	private static final String TRADE_TYPE = "trade_type";
	private static final String AMENDMENT_TYPE = "amendment_type";
	private static final String PREV_TRADE_ID = "prev_trade_id";
	private static final String PRODUCT_TYPE = "product_type";
	private static final String BUSINESS_AREA = "business_area";
	private static final String PORTFOLIO_CODE = "portfolio_code";
	private static final String TRADE_CCY = "trade_ccy";
	private static final String TRADE_RATE = "trade_rate";
	private static final String RATE_TYPE = "rate_type";
	private static final String PAR_MATURITY_AMOUNT = "par_maturity_amount";
	private static final String START_DATE = "start_date";
	private static final String MATURITY_DATE = "maturity_date";
	private static final String CUSTOMER_ID = "customer_id";
	private static final String INTERNAL_FLAG = "internal_flag";
	private static final String RATE_BASIS = "rate_basis";
	private static final String RATE_INDEX = "rate_index";
	private static final String TRADE_DATE = "trade_date";
	private static final String CANCEL_REASON = "cancel_reason";
	private static final String REMARKS1 = "remarks_1";
	private static final String REMARKS2 = "remarks_2";
	private static final String REMARKS3 = "remarks_3";
	private static final String TRADER_ID = "trader_id";
	private static final String CUST_REFERENCE = "cust_reference";
	private static final String EXCEPT_CUSTOMER = "except_customer";
	private static final String FEE_CODE = "fee_code";
	private static final String FEE_DATE = "fee_date";
	private static final String FEE_AMOUNT = "fee_amount";
	public String loanIqXmlFileName = "";

	/**
	 * This method returns the XML message for AutoFunding requests to Wallstreet.
	 * @param autoFund
	 * @return
	 * @throws AutoFundingException
	 */
	public String getXMLMessage(AutoFund autoFund) throws AutoFundingException {
		log.debug("LoanIQ Funding - AutoFund XML Argon message creation started..");
		Element root_element_mmtrade = new Element(MMTRADE);
		Element element_interfaceID = new Element(INTERFACE_ID_);
		element_interfaceID.appendChild(autoFund.getAftWSSIntID().trim());
		Element element_cityCode = new Element(CITY_CODE);
		element_cityCode.appendChild(autoFund.getAftCityCode().trim());
		Element element_newTradeId = new Element(NEW_TRADE_ID);
		element_newTradeId.appendChild(autoFund.getAftWssMapRef().trim());
		
		Element element_prevTradeID = new Element(PREV_TRADE_ID);
		element_prevTradeID.appendChild(autoFund.getAftOldWSSMapRef().trim());
		
		Element element_messageType = new Element(MESSAGE_TYPE);
		element_messageType.appendChild(autoFund.getAftMsgType().trim());
		Element element_tradeType = new Element(TRADE_TYPE);
		element_tradeType.appendChild(autoFund.getAftTradeTypeCode().trim());
		Element element_amendmentType = new Element(AMENDMENT_TYPE);
		element_amendmentType.appendChild(autoFund.getAftAmendTypeCode().trim());
		//Element element_prevTradeID = new Element(PREV_TRADE_ID);
		//element_prevTradeID.appendChild(autoFund.getAftWSSPrevID().trim());
		Element element_productType = new Element(PRODUCT_TYPE);
		element_productType.appendChild(autoFund.getAftWSSProdType().trim());
		Element element_businessArea = new Element(BUSINESS_AREA);
		element_businessArea.appendChild(autoFund.getAftWSSBusArea().trim());
		Element element_portfolioCode = new Element(PORTFOLIO_CODE);
		element_portfolioCode.appendChild(autoFund.getAftWSSPortfolio().trim());
		Element element_tradeCCY = new Element(TRADE_CCY);
		element_tradeCCY.appendChild(autoFund.getAftCurrencyCode().trim());
		// Convert to 6 decimal place precision
		Element element_tradeRate = new Element(TRADE_RATE);
		BigDecimal element_tradeRate_decimal = new BigDecimal(autoFund.getAftPctRate());
		//Multiply trade rate by 100 ;
		element_tradeRate_decimal=element_tradeRate_decimal.multiply(new BigDecimal(100));
        element_tradeRate_decimal = element_tradeRate_decimal.setScale(6,BigDecimal.ROUND_HALF_UP);		
		element_tradeRate.appendChild(element_tradeRate_decimal.toString());
		Element element_rateType = new Element(RATE_TYPE);
		element_rateType.appendChild(autoFund.getAftRateTypeCode().trim());
		//Convert to 3 decimal place precision		
		Element element_parMaturityAmnt = new Element(PAR_MATURITY_AMOUNT);
		BigDecimal element_parMaturityAmnt_decimal = new BigDecimal(autoFund.getAftFundAmount());
		element_parMaturityAmnt_decimal = element_parMaturityAmnt_decimal.setScale(3,BigDecimal.ROUND_HALF_UP);		
		element_parMaturityAmnt.appendChild(element_parMaturityAmnt_decimal.toString());		
		// Applying YYYMMDD date formatting here
		//===========================================
		Element element_startDate = new Element(START_DATE);
		Date date = autoFund.getAftStartDate();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
		String dateString = sdf.format(date);
		element_startDate.appendChild(dateString);
		//===========================================
		// Applying YYYMMDD date formatting here
		date = autoFund.getAftMaturityDate();
		dateString = sdf.format(date);
		Element element_maturityDate = new Element(MATURITY_DATE);
		element_maturityDate.appendChild(dateString);
		Element element_customerID = new Element(CUSTOMER_ID);
		element_customerID.appendChild(autoFund.getAftWSSCounterPartyID().trim());
		Element element_internalFlag = new Element(INTERNAL_FLAG);
		element_internalFlag.appendChild(autoFund.getAftIndIntFlag().trim());
		Element element_rateBasis = new Element(RATE_BASIS);
		element_rateBasis.appendChild(autoFund.getAftWSSRateBasisCode().trim());
		Element element_rateIndex = new Element(RATE_INDEX);
		element_rateIndex.appendChild(autoFund.getAftCodeRateIndex().trim());
		// Applying YYYMMDD date formatting here
		//date = autoFund.getAftTradeDate();//TD 930, 1078
		//===========================================
		Date tradeDate  = autoFund.getAftTradeDate();
		dateString = sdf.format(tradeDate);
		Element element_tradeDate = new Element(TRADE_DATE);
		//===========================================
		element_tradeDate.appendChild(dateString);
		Element element_remarks1 = new Element(REMARKS1);
		element_remarks1.appendChild(autoFund.getAftDSCRemark1().trim());
		Element element_remarks2 = new Element(REMARKS2);
		element_remarks2.appendChild(autoFund.getAftDSCRemark2().trim());
		Element element_remarks3 = new Element(REMARKS3);
		element_remarks3.appendChild(autoFund.getAftDSCRemark3().trim());
		//Element element_cancelReason = new Element(CANCEL_REASON);
		//element_cancelReason.appendChild(autoFund.getAftDSCCancelReason().trim());
		Element element_traderID = new Element(TRADER_ID);
		element_traderID.appendChild(autoFund.getAftWSSTraderID().trim());
		/*Element except_customer  = new Element(CUST_REFERENCE);
		element_custRef.appendChild(autoFund.getAftCustRefRID().trim());*/
		Element except_customer  = new Element(EXCEPT_CUSTOMER);
		except_customer.appendChild(autoFund.getAftCustRefRID().trim());
		Element cust_reference   = new Element(CUST_REFERENCE);
		cust_reference.appendChild(autoFund.getAftWssCustRef());
		//Element element_feeCode = new Element(FEE_CODE);
		//element_feeCode.appendChild(autoFund.getAftFeeBFCode().trim());
		//Element element_feeDate = new Element(FEE_DATE);
		//element_feeDate.appendChild(autoFund.getAftFeeBFDate().trim());
		//Element element_feeAmount = new Element(FEE_AMOUNT);
		//element_feeAmount.appendChild(String.valueOf(autoFund.getAftFeeBFNum()));
		root_element_mmtrade.appendChild(element_interfaceID);
		root_element_mmtrade.appendChild(element_cityCode);
		root_element_mmtrade.appendChild(element_messageType);
		root_element_mmtrade.appendChild(element_tradeType);
		root_element_mmtrade.appendChild(element_amendmentType);
		root_element_mmtrade.appendChild(element_newTradeId);
		root_element_mmtrade.appendChild(element_prevTradeID);
		root_element_mmtrade.appendChild(element_productType);
		root_element_mmtrade.appendChild(element_businessArea);
		root_element_mmtrade.appendChild(element_portfolioCode);
		root_element_mmtrade.appendChild(element_tradeCCY);
		root_element_mmtrade.appendChild(element_tradeRate);
		root_element_mmtrade.appendChild(element_rateType);
		root_element_mmtrade.appendChild(element_parMaturityAmnt);
		root_element_mmtrade.appendChild(element_internalFlag);
		root_element_mmtrade.appendChild(element_startDate);
		root_element_mmtrade.appendChild(element_tradeDate);
		root_element_mmtrade.appendChild(element_maturityDate);
		root_element_mmtrade.appendChild(element_customerID);
		root_element_mmtrade.appendChild(element_rateBasis);
		root_element_mmtrade.appendChild(element_rateIndex);
		root_element_mmtrade.appendChild(element_remarks1);
		root_element_mmtrade.appendChild(element_remarks2);
		root_element_mmtrade.appendChild(element_remarks3);
		//root_element_mmtrade.appendChild(element_cancelReason);
		root_element_mmtrade.appendChild(element_traderID);
		root_element_mmtrade.appendChild(cust_reference);
		root_element_mmtrade.appendChild(except_customer);
		
		
		//root_element_mmtrade.appendChild(element_feeCode);
		//root_element_mmtrade.appendChild(element_feeDate);
		//root_element_mmtrade.appendChild(element_feeAmount);
		Document xmlDocument = new Document(root_element_mmtrade);
		String strResult = "";
		strResult = xmlDocument.toXML();
		log.debug("XML Created and Validation Started : \t " + strResult);
		// TODO : Chnage to false later.
		boolean validateResult = false;
		try {
			validateResult = validateXML.performValidate(strResult, strXSDFileName);
			log.debug("AutoFundig Message : XML Validation result is : " + validateResult);
		} catch (com.rbs.rbsgbl.loaniq.generic.exception.MessageSenderException e) {
			throw new AutoFundingException(e.getMessage());
		}
		if (validateResult) {
			return strResult;
		} else {
			throw new AutoFundingException("AutoFundig Message : XML Validation Failed !");
		}
	}

	public void setValidateXML(ValidateXML validateXML) {
		this.validateXML = validateXML;
	}

	public void setStrXSDFileName(String strXSDFileName) {
		this.strXSDFileName = strXSDFileName;
	}
}
