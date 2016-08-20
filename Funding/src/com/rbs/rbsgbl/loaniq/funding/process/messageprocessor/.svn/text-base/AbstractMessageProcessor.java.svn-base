/*******************************************************************************
 * @ClassName 		: AbstractMessageProcessor.java
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
package com.rbs.rbsgbl.loaniq.funding.process.messageprocessor;

import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.Map;
import org.apache.log4j.Logger;
import org.jdom.Document;
import org.jdom.input.DOMBuilder;
import org.jdom.xpath.XPath;
import com.rbs.rbsgbl.loaniq.funding.datastore.AutoFundMessageBS;
import com.rbsfm.argon.client.cga.BaseMessage;
import com.rbsfm.argon.client.cga.ClientException;

/**
 * The Abstract class for Argon MessageProcessor.
 * @author  joshinc
 * @version  ,Aug 12, 2008
 * @see     
 */
public abstract class AbstractMessageProcessor implements AutoFundingMessageProcessor
{
	private Logger logger    = Logger.getLogger("com.rbs.rbsgbl.loaniq.funding.process.messageprocessor.AbstractMessageProcessor");
	//The corresponding persistence impl that is to be used
	protected AutoFundMessageBS autoFundMessageBS = null;
	//Map for holding the compiled JDOM Xpath expressions
	protected Map<String, XPath> xpathExpr = new HashMap<String, XPath>(); 
	protected Map<String, String> xpathStrings = new HashMap<String, String>();
	//protected static Map<String, String> booksMap = new HashMap<String, String>();
	protected DOMBuilder jdomBuilder = new DOMBuilder();
	//Map for holding the key identifiers of the trade. These will be used for querying the received messages table which audits all received Argon messages
	Map<String, Map> messageParams = new HashMap();
	boolean captureDiagnostics = false;
	protected Document document;
	protected SimpleDateFormat sdf    = new SimpleDateFormat("yyyy-MM-dd");
	protected SimpleDateFormat sdf2   = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss");
	protected SimpleDateFormat dateTimeGDS = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");  

	/**
	* Creates a new instance of AbstractMessageProcessor
	*/
	public AbstractMessageProcessor()
	{
		this.messageParams.put("Identifiers", new HashMap());
		this.messageParams.put("Diagnostics", new HashMap());
	}

	/**
	 * This function pre-processes the XML Message to build a JDOM
	 * @param message
	 * @throws ClientException 
	 */
	public void preProcess(BaseMessage message) throws ClientException
	{ 
		logger.debug("method Start - preProcess()");

		//If a valid persistence layer has not been supplied it is not possible to store the xml data into Staging Tables
		if(autoFundMessageBS == null) {
			logger.error("Cannot process message as a valid persistence impl has not been supplied");
			throw new RuntimeException("Cannot process message as a valid persistence impl has not been supplied");
		}

		document = jdomBuilder.build(message.getDocument());
		logger.debug("method End - preProcess()");
	}  

	
	/* Method that can be configured by Spring so that message timings are captured,default is OFF
	 * (non-Javadoc)
	 * @see com.rbs.rbsgbl.loaniq.generic.messageprocessor.MessageProcessor#setDiagnostics(boolean)
	 */
	public void setDiagnostics(boolean logDiagnostics)
	{
		this.captureDiagnostics = logDiagnostics;
	}

	/**
	* Starts timing of the method if diagnostics have been turned on
	* @param name 
	*/
	protected void snapStart(String name)
	{
		logger.debug("method Start - snapStart()");
		logger.debug("captureDiagnostics------------>"+this.captureDiagnostics);
		if(this.captureDiagnostics)
		{
			Long startTime = new Long(System.currentTimeMillis());
			this.messageParams.get("Diagnostics").put(name, startTime);

			//Start building the xml
			this.messageParams.get("Diagnostics").put("Timings", this.messageParams.get("Diagnostics").get("Timings") + "<"+name.replaceAll(" ", "")+">");
		}
		logger.debug("method End - snapStart()");
	}
	
	/**
	* Ends timing of the method if diagnostics have been turned on
	* @param name 
	*/
	protected void snapEnd(String name)
	{
		logger.debug("method Start - snapEnd()");
		if(this.captureDiagnostics)
		{
			Long originalTime = (Long)this.messageParams.get("Diagnostics").get(name);
			if (originalTime != null) 
			{
				String totalTime = new String(((System.currentTimeMillis() - originalTime.longValue())) + "ms");
				this.messageParams.get("Diagnostics").put(name, totalTime);
				this.messageParams.get("Diagnostics").put("Timings", this.messageParams.get("Diagnostics").get("Timings") + totalTime + "ms</"+name.replaceAll(" ", "")+">\n");
			} 
			else 
			{
				this.messageParams.get("Diagnostics").put(name, "???ms");	    		
				this.messageParams.get("Diagnostics").put("Timings", this.messageParams.get("Diagnostics").get("Timings") + "Unable to compute ms</"+name.replaceAll(" ", "")+">");
			}
		}
		logger.debug("method End - snapEnd()");
	}


	/* This method sets the nucleusMessageProcessorBS object
	 * (non-Javadoc)
	 * @see com.rbs.rbsgbl.loaniq.counterparty.messageprocessor.NucleusMessageProcessor#setMessagePersistenceHandler(com.rbs.rbsgbl.loaniq.counterparty.datastore.NucleusMessageProcessorBS)
	 */
	public void setMessagePersistenceHandler(AutoFundMessageBS autoFundMessageBS)
	{
		this.autoFundMessageBS = autoFundMessageBS;
	}

	/**
	 * Following methods are used by JMX
	 * @return 
	 */
	public Map<String, String> getXPaths()
	{
		return this.xpathStrings;
	}
		
	/**
	*  Methode to get the values of Identifiers and Diagnostics 
	*/
	void initDiagnostics()
	{
		logger.debug("method Start - initDiagnostics()");
		//Clear down the diagnostic / identifier maps
		this.messageParams.get("Identifiers").clear();
		this.messageParams.get("Diagnostics").clear();
		logger.debug("method End - initDiagnostics()");
	}
}
