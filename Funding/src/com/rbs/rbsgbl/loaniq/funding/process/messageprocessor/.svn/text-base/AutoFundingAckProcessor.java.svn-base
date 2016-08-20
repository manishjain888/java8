package com.rbs.rbsgbl.loaniq.funding.process.messageprocessor;

/*******************************************************************************
 * @ClassName 		: AutoFundingAckProcessor.java
 * @Author 	  		: joshinc
 * @Date 	  		: Aug 12, 2008
 * @Organization 	: RBS - IDC
 * 
 * Modification History
 * **************************************************************************************************************
 * Date 			Version 		Modified By 			Description
 * **************************************************************************************************************
 * Aug 12, 2008 			1.0	 			joshinc					Initial Version.
 * 
 */
import java.io.IOException;
import java.io.StringReader;
import java.util.Date;
import java.util.HashMap;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import org.apache.log4j.Logger;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import com.rbs.rbsgbl.loaniq.funding.constants.FundConstant;
import com.rbs.rbsgbl.loaniq.funding.datastore.AutoFundMessageBS;
import com.rbs.rbsgbl.loaniq.funding.datastore.data.AutoFund;
import com.rbs.rbsgbl.loaniq.funding.exception.AutoFundingException;
import com.rbs.rbsgbl.loaniq.funding.process.FundDataProcessor;
import com.rbs.rbsgbl.loaniq.funding.util.FundUtil;
import com.rbs.rbsgbl.loaniq.generic.exception.MessageProcessingException;
import com.rbsfm.argon.client.cga.BaseMessage;
import com.rbsfm.argon.client.cga.ClientException;
import com.rbsfm.argon.client.cga.ReceivedAssociatedFileList;

/**
 * This is the Argon acknowledgement processor class , it updates the AutoFund object with the values received from the acknowledgement XML.
 * 
 * @author joshinc
 * @version ,Aug 21, 2008
 * @see
 */
public class AutoFundingAckProcessor extends AbstractMessageProcessor {
	private Logger logger = Logger.getLogger(AutoFundingAckProcessor.class.getName());
	private AutoFundMessageBS messagePersistenceHandler;
	// private List<AutoFund> ackList;
	private Document dom;
	private static String name = "MMTRADE_RESPONSE";
	public AutoFundingAckProcessor() {
		// ackList = new ArrayList<AutoFund>();
	}

	/**
	*  This method will be called only when this class is used as a standalone for testing.
	*/
	public void startProcess() {
		logger.debug("Starting AutoFundingAckProcessor startProcess()");
		logger.debug("The Acknowledgement received from Argon will be parsed and AutoFund objects will be updated now.");
		// parse the xml file and get the dom object
		parseXmlFile();
		parseDocument();
		logger.debug("End of method startProcess()");
	}

	/**
	 * This is a test method used when this class is run as a standalone program for testing purpose.
	 */
	private void parseXmlFile() {
		logger.debug("Starting of method AutoFundingAckProcessor.parseXmlFile()");
		// get the factory
		DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
		try {
			// Using factory get an instance of document builder
			DocumentBuilder db = dbf.newDocumentBuilder();
			// parse using builder to get DOM representation of the XML file
			dom = db.parse("autofunding_ack.xml");
		} catch (ParserConfigurationException pce) {
			pce.printStackTrace();
		} catch (SAXException se) {
			se.printStackTrace();
		} catch (IOException ioe) {
			ioe.printStackTrace();
		}
		logger.debug("End of method AutoFundingAckProcessor.parseXmlFile()");
	}

	/**
	 * Parses the XML Acknowledgement received from Argon.
	 * 
	 * @param xml
	 */
	private void parseXml(String xml) {
		logger.debug("Starting of method AutoFundingAckProcessor.parseXml()");
		// get the factory
		DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
		try {
			// Using factory get an instance of document builder
			DocumentBuilder db = dbf.newDocumentBuilder();
			// parse using builder to get DOM representation of the XML file
			dom = db.parse(new InputSource(new StringReader(xml)));
		} catch (ParserConfigurationException pce) {
			pce.printStackTrace();
		} catch (SAXException se) {
			se.printStackTrace();
		} catch (IOException ioe) {
			ioe.printStackTrace();
		}
		logger.debug("End of method AutoFundingAckProcessor.parseXml()");
	}

	/**
	* Parses the dom object.
	* @return 
	*/
	private boolean parseDocument() {
		logger.debug("Starting of method AutoFundingAckProcessor.parseDocument()");
		// get the root elememt
		NodeList nl = dom.getChildNodes();
		AutoFund e = null;
		if (nl != null && nl.getLength() > 0) {
			for (int i = 0; i < nl.getLength(); i++) {
				Element el = (Element) nl.item(i);
				e = updateAutoFundingAckObj(el);
				// ackList.add(e);
			}
		}
		if (e == null) {//If no AutoFund object was found return false
			return false;
		}
		return true;
	}

	/**
	 * Updates the AutoFund object with the Acknowledgement status/timestamp/message values received from Argon Ack.
	 * 
	 * @param empEl
	 * @return
	 * @throws MessageProcessingException
	 */
	private AutoFund updateAutoFundingAckObj(Element empEl) {
		String fill02 = null;
		String fill04 = null;
		String wss_internal_number = null;
		String status = null;
		String message = null;
		String external_number = null;
		fill02 = getTextValue(empEl, "fill02");
		external_number = getTextValue(empEl, "external_number");
		fill04 = getTextValue(empEl, "fill04");
		wss_internal_number = getTextValue(empEl, "wss_internal_number");
		status = getTextValue(empEl, "status");
		message = getTextValue(empEl, "message");
		AutoFund autoFund = null;
		try {
			HashMap<String, String> hashmap = new HashMap<String, String>();
			hashmap.put("aftWssMapRef", external_number.trim());
			autoFund = messagePersistenceHandler.getAutoFundObjForExternalNumber(hashmap);
			if (autoFund == null) {
				return autoFund;
			}
			Date timeStamp = new Date();
			autoFund.setAftACkTimestamp(timeStamp);
			hashmap.clear();// to clear the hashmap of any previous entries.
			String statusCode = Long.parseLong(status.trim())+"";
						
			autoFund.setAftMSGStatusCode((messagePersistenceHandler.getMsgStatusCode(statusCode)));
			
			//autoFund.setAftMSGStatusCode(FundUtil.statValue1FromStatTypeIDKeyVal1(FundDataProcessor.fundStaticMap, FundConstant.FUNDING_STATIC_TYPE_ID_FNDO8,"status"));//From Static Details
			if(wss_internal_number!= null){
				wss_internal_number=wss_internal_number.trim();
				autoFund.setAftWSSIntTradeID(wss_internal_number);	
			}			
			if(message !=null)
				autoFund.setAftACKStatusCode(message.trim());			
			
			logger.debug("Updating Auto Fund Message  :: " + autoFund.toString());
			
			messagePersistenceHandler.updateArgonAck(autoFund);
		} catch (AutoFundingException e1) {	
			logger.error("Exception while Processing Auto Fund Message :: "+e1);
			e1.printStackTrace();
		}
		catch(Exception e){
			logger.error("Exception is  :: "+e);
		}
		return autoFund;
	}

	/**
	 * Returns the text value for an element.
	 * 
	 * @param ele
	 * @param tagName
	 * @return
	 */
	private String getTextValue(Element ele, String tagName) {
		String textVal = null;
		NodeList nl = ele.getElementsByTagName(tagName);
		if (nl != null && nl.getLength() > 0) {
			Element el = (Element) nl.item(0);
			textVal = el.getFirstChild().getNodeValue();
		}
		return textVal;
	}

	/**
	 * Main method to test the parsing of xml as a standalone unit.
	 * 
	 * @param args
	 */
	public static void main(String[] args) {
		ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext(args);
		AutoFundingAckProcessor dpe = (AutoFundingAckProcessor) context.getBean("AutoFundingAckProcessor");
		dpe.startProcess();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.rbs.rbsgbl.loaniq.generic.messageprocessor.MessageProcessor#parseMessage(org.jdom.Document)
	 */
	public Object parseMessage(org.jdom.Document document) throws MessageProcessingException {
		return null;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.rbs.rbsgbl.loaniq.generic.messageprocessor.MessageProcessor#processMessage(com.rbsfm.argon.client.cga.BaseMessage,
	 *      com.rbsfm.argon.client.cga.ReceivedAssociatedFileList)
	 */
	public boolean processMessage(BaseMessage message, ReceivedAssociatedFileList attachedFiles) throws ClientException {
		// parse the xml file and get the dom object
		parseXml(message.getXMLText());
		return parseDocument();	
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.rbs.rbsgbl.loaniq.funding.process.messageprocessor.AbstractMessageProcessor#setMessagePersistenceHandler(com.rbs.rbsgbl.loaniq.funding.datastore.AutoFundMessageBS)
	 */
	public void setMessagePersistenceHandler(AutoFundMessageBS messagePersistenceHandler) {
		this.messagePersistenceHandler = messagePersistenceHandler;
	}
}
