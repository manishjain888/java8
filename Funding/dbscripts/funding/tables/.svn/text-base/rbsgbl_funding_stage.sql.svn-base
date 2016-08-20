
/*
Module : Funding Interface
Author : Manish Jain     
Date   : 10th July 2008
Purpose: Data from Poller SQL will be inserted into this table. From this 
         table each record will be checked whether this record is valid funding 
         request or not.
*/

DROP TABLE rbsgbl_funding_stage;


CREATE TABLE RBSGBL_FUNDING_STAGE
(
  FST_CDE_TXN_CLASS       VARCHAR2(12)     NOT NULL,
  FST_CDE_BRANCH          VARCHAR2(5)      NOT NULL,
  FST_CDE_EXPENSE         VARCHAR2(15)      NOT NULL,
  FST_CDE_PORTFOLIO       VARCHAR2(5)      NOT NULL,
  FST_AMT_FUND            NUMBER(28,3)          NOT NULL,
  FST_PCT_RATE            NUMBER(31,15),
  FST_PID_DEAL            VARCHAR2(8)      NOT NULL,
  FST_NME_DEAL            VARCHAR2(40)     NOT NULL,
  FST_PID_FACILITY        VARCHAR2(8)      NOT NULL,
  FST_NME_FACILITY        VARCHAR2(31)      NOT NULL,
  FST_CDE_CURRENCY        VARCHAR2(3)      NOT NULL,
  FST_CID_BORROWER        VARCHAR2(8)      NOT NULL,
  FST_NME_FULL_NAME       VARCHAR2(30)     NOT NULL,
  FST_NME_SHORT_NAME      VARCHAR2(30)     NOT NULL,
  FST_RID_CUS_SVC_GR      VARCHAR2(8),                                  
  FST_CDE_OBJ_STATE       VARCHAR2(5),
  FST_CDE_TR_TYPE         VARCHAR2(5),
  FST_NME_TR_TYPE         VARCHAR2(250),
  FST_CDE_TR_GROUP_TYPE   VARCHAR2(5),
  FST_DTE_TR_EFFECTIVE    DATE,
  FST_DTE_TR_REPRICING    DATE,
  FST_RID_TRAN            VARCHAR2(8),
  FST_RID_GROUP_TRAN      VARCHAR2(8),
  FST_CDE_FUNDG_TYPE      VARCHAR2(5),
  FST_CDE_REVIEW          VARCHAR2(5),
  FST_TXT_COMMENT         VARCHAR2(254),
  FST_AMT_TR              NUMBER(28,3),
  FST_TSP_REC_UPDATE      DATE                  NOT NULL,
  FST_UID_REC_UPDATE      VARCHAR2(8)      NOT NULL,
  FST_CDE_RISK_TYPE       VARCHAR2(5),
  FST_DTE_EFFECTIVE       DATE                  NOT NULL,
  FST_DTE_REPRICE         DATE                  NOT NULL,
  FST_CDE_REPR_FQ         VARCHAR2(5)      NOT NULL,
  FST_CDE_OST_TYPE        VARCHAR2(5)      NOT NULL,
  FST_RID_OUTSTANDNG      VARCHAR2(8)      NOT NULL,
  FST_CDE_OPTION          VARCHAR2(5)      NOT NULL,
  FST_PCT_SPREAD          NUMBER(15,14),
  FST_CDE_HB_RT_BS		  VARCHAR(5)      NULL,	
  FST_CDE_WSS_RATE_BASIS  VARCHAR2(30),
  FST_NME_ALIAS           VARCHAR2(15)     NOT NULL,
  FST_DTE_MATURITY        DATE,
  FST_CDE_ACR_PERIOD      VARCHAR2(250)      NOT NULL,
  FST_CDE_ENDTE_RULE      VARCHAR2(26)      NOT NULL,
  FST_CDE_NONBUS_DAY      VARCHAR2(5),
  FST_NUM_SET_FREQ        NUMBER(2),
  FST_DTE_CYCLE_DUE       DATE,
  FST_DTE_ADJ_CYCLE       DATE,
  FST_DTE_CYCLE_END       DATE,
  FST_AMT_BANK_NET        NUMBER(28,3)          NOT NULL,
  FST_RID_FAC_TXN_ID      VARCHAR2(8),    
  FST_CDE_FAC_TXN_TYPE      VARCHAR2(5),
  FST_NME_FAC_TXN_TYPE      VARCHAR2(250),
  FST_IID_INV_ID          VARCHAR2(8),
  FST_CDE_IDE_TRANS_TYPE  VARCHAR(4),
  FST_WSS_TRADE_REF       VARCHAR2(40),
  FST_CDE_PROCESS_QUEUE   VARCHAR2(5)      NOT NULL,
  FST_IND_AF_MSG_PROCESS  VARCHAR2(1),
  FST_IND_BREAK_FUND      VARCHAR2(1),
  FST_AMT_BREAK_FUND_FEE  NUMBER(31,15),
  FST_IND_DEALER_LIST     VARCHAR2(1),
  FST_NUM_VERSION         NUMBER(8),
  FST_CDE_AMEND_STATUS    VARCHAR2(15),
  FST_CDE_RISK_BOOK       VARCHAR2(5),
  FST_DSC_RISK_BOOK       VARCHAR2(100),
  FST_WSS_INT_ID          VARCHAR2(10)     NOT NULL,
  FST_WSS_CITY_CDE        VARCHAR2(10)     NOT NULL,
  FST_WSS_CPTY_ID         VARCHAR2(30)     NOT NULL,
  FST_WSS_PROD_TYPE       VARCHAR2(10)     NOT NULL,
  FST_WSS_BUS_AREA        VARCHAR2(30)     NOT NULL,
  FST_WSS_PORTFOLIO       VARCHAR2(30)     NOT NULL,                                     
  FST_RID_FUND_REQ        VARCHAR2(31)     NOT NULL,
  FST_WSS_EXT_TRADE_ID    VARCHAR2(15),                                      
  FST_TXT_PREV_VALUE      VARCHAR2(250)    NOT NULL,
  FST_UID_AMEND_STATUS      VARCHAR2(8),
  FST_TSP_AMEND_STATUS      DATE,
  FST_DTE_BUSINESS 	    DATE,
  FST_DTE_RATE_FIXING       DATE,
  FST_IND_REC_LOCK      VARCHAR2(44),
  FST_IND_CURR_DEALER_LIST  VARCHAR2(1) ,
  FST_WSS_ACTION_TYPE	VARCHAR2(30),
  FST_WSS_MAP_REF		VARCHAR2(15),
  FST_CDE_TEAM			VARCHAR2(8), 
  FST_WSS_STUB_REF		VARCHAR2(30),
  FST_IND_AQ_MSG_PROCESS VARCHAR2(1),
  FST_RID_LINK_TRAN VARCHAR2(8) DEFAULT '',
  FST_AMT_INTEREST NUMBER(31,15) DEFAULT 0.0,
  FST_TXN_COF_RID VARCHAR2(8) DEFAULT '',
  FST_CDE_ZONE    VARCHAR2(8)
);



COMMENT ON COLUMN RBSGBL_FUNDING_STAGE.FST_CID_BORROWER  IS  'The borrower of the outstanding';
COMMENT ON COLUMN RBSGBL_FUNDING_STAGE.FST_NME_FULL_NAME IS 'The full name of the borrower of the outstanding';
COMMENT ON COLUMN RBSGBL_FUNDING_STAGE.FST_NME_SHORT_NAME IS 'The short name of the borrower of the outstanding';
COMMENT ON COLUMN RBSGBL_FUNDING_STAGE.FST_RID_CUS_SVC_GR IS 'The servicing group for the borrower of the outstanding';
COMMENT ON COLUMN RBSGBL_FUNDING_STAGE.FST_IID_INV_ID IS 'The circle id related to the generation of the ost_tran transaction';
COMMENT ON COLUMN RBSGBL_FUNDING_STAGE.FST_CDE_IDE_TRANS_TYPE IS 'Indicates whether it is a circle BUY/SELL';
COMMENT ON COLUMN RBSGBL_FUNDING_STAGE.FST_CDE_OBJ_STATE IS 'The status of the ost tran transaction (e.g. RELSD, AWSRA) or the status of the acr pmt transaction (e.g. RELSD, AWSRA)';
COMMENT ON COLUMN RBSGBL_FUNDING_STAGE.FST_CDE_TR_TYPE IS 'The transaction type of the outstanding transaction or the transaction type of the accrual cycle payment transaction';
COMMENT ON COLUMN RBSGBL_FUNDING_STAGE.FST_NME_TR_TYPE IS 'The description of the transaction type of the record ';
COMMENT ON COLUMN RBSGBL_FUNDING_STAGE.FST_CDE_TR_GROUP_TYPE IS 'The transaction group type of the outstanding transaction or the transaction group type of the accrual cycle payment transaction';
COMMENT ON COLUMN RBSGBL_FUNDING_STAGE.FST_DTE_TR_EFFECTIVE IS 'The effective date of the outstanding transaction or the effective date of the accrual cycle payment transaction';
COMMENT ON COLUMN RBSGBL_FUNDING_STAGE.FST_DTE_TR_REPRICING IS 'The next repricing date for the outstanding transaction';
COMMENT ON COLUMN RBSGBL_FUNDING_STAGE.FST_RID_TRAN IS 'The id of the outstanding transaction or the id of the accrual cycle payment transaction';
COMMENT ON COLUMN RBSGBL_FUNDING_STAGE.FST_RID_GROUP_TRAN IS 'The id of the group outstanding transaction or accrual cycle payment transaction';
COMMENT ON COLUMN RBSGBL_FUNDING_STAGE.FST_CDE_FUNDG_TYPE IS 'States whether the specific transaction is match-funded or not';
COMMENT ON COLUMN RBSGBL_FUNDING_STAGE.FST_CDE_REVIEW IS 'The review status of the outstanding transaction';
COMMENT ON COLUMN RBSGBL_FUNDING_STAGE.FST_TXT_COMMENT IS 'The reason / comment provided for the outstanding transaction';
COMMENT ON COLUMN RBSGBL_FUNDING_STAGE.FST_AMT_TR IS 'The total amount of the transaction';
COMMENT ON COLUMN RBSGBL_FUNDING_STAGE.FST_TSP_REC_UPDATE IS 'The timestamp of the last update done to the outstanding transaction or the accrual cycle payment transaction';
COMMENT ON COLUMN RBSGBL_FUNDING_STAGE.FST_UID_REC_UPDATE IS 'The user id who done the last update to the outstanding transaction or the accrual cycle payment transaction';
COMMENT ON COLUMN RBSGBL_FUNDING_STAGE.FST_CDE_RISK_TYPE IS 'The risk type of the outstanding';
COMMENT ON COLUMN RBSGBL_FUNDING_STAGE.FST_DTE_EFFECTIVE IS 'The effective date of the outstanding';
COMMENT ON COLUMN RBSGBL_FUNDING_STAGE.FST_DTE_REPRICE IS 'The repricing date of the outstanding';
COMMENT ON COLUMN RBSGBL_FUNDING_STAGE.FST_CDE_REPR_FQ IS 'Re-pricing frequency of the outstanding';
COMMENT ON COLUMN RBSGBL_FUNDING_STAGE.FST_CDE_OST_TYPE IS 'The type of outstanding';
COMMENT ON COLUMN RBSGBL_FUNDING_STAGE.FST_RID_OUTSTANDNG IS 'Loan id';
COMMENT ON COLUMN RBSGBL_FUNDING_STAGE.FST_CDE_OPTION IS 'Pricing option of the outstanding';
COMMENT ON COLUMN RBSGBL_FUNDING_STAGE.FST_PCT_SPREAD IS 'Spread rate of the outstanding';
COMMENT ON COLUMN RBSGBL_FUNDING_STAGE.FST_CDE_WSS_RATE_BASIS IS 'Contains the Wall Street Rate basis code, derived from a static mapping table based upon the LIQ rate basis code';
COMMENT ON COLUMN RBSGBL_FUNDING_STAGE.FST_NME_ALIAS IS 'Loan Alias';
COMMENT ON COLUMN RBSGBL_FUNDING_STAGE.FST_DTE_MATURITY IS 'Maturity date of the outstanding';
COMMENT ON COLUMN RBSGBL_FUNDING_STAGE.FST_CDE_ACR_PERIOD IS 'Accrual period of the outstanding';
COMMENT ON COLUMN RBSGBL_FUNDING_STAGE.FST_CDE_ENDTE_RULE IS 'Accrual rule of the outstanding';
COMMENT ON COLUMN RBSGBL_FUNDING_STAGE.FST_CDE_NONBUS_DAY IS 'Non business day definition for the outstanding pricing option';
COMMENT ON COLUMN RBSGBL_FUNDING_STAGE.FST_NUM_SET_FREQ IS 'Numbers of set days in advance for treasury review for the outstanding pricing option';
COMMENT ON COLUMN RBSGBL_FUNDING_STAGE.FST_DTE_CYCLE_DUE IS 'The due date for the outstanding';
COMMENT ON COLUMN RBSGBL_FUNDING_STAGE.FST_DTE_ADJ_CYCLE IS 'The adjusted due date for the outstanding after factoring business day computation';
COMMENT ON COLUMN RBSGBL_FUNDING_STAGE.FST_DTE_CYCLE_END IS 'The ending date of the accrual cycle for the outstanding';
COMMENT ON COLUMN RBSGBL_FUNDING_STAGE.FST_AMT_BANK_NET IS 'The host bank net share of the outstanding amount';
COMMENT ON COLUMN RBSGBL_FUNDING_STAGE.FST_WSS_TRADE_REF IS 'Unique Trade Reference combination that can be sent to Wall St.: Alias+ Branch+ Expense + Portfolio + Sequence ID';
COMMENT ON COLUMN RBSGBL_FUNDING_STAGE.FST_CDE_PROCESS_QUEUE IS 'Flag to set for which additional workflow processing associated for this record ¿ AUTO; AMEND';
COMMENT ON COLUMN RBSGBL_FUNDING_STAGE.FST_IND_AF_MSG_PROCESS IS 'Flag to set whether the record has been sent for auto funding (only to argon)';
COMMENT ON COLUMN RBSGBL_FUNDING_STAGE.FST_IND_BREAK_FUND IS 'Flag to set to indicate that the record is a break funding transaction';
COMMENT ON COLUMN RBSGBL_FUNDING_STAGE.FST_AMT_BREAK_FUND_FEE IS 'The amount of the break funding fee done for the transaction';
COMMENT ON COLUMN RBSGBL_FUNDING_STAGE.FST_IND_DEALER_LIST IS 'Flag to set to indicate that the record is part of the dealer list report';
COMMENT ON COLUMN RBSGBL_FUNDING_STAGE.FST_NUM_VERSION IS 'Indicates the version number of a specific non ost tran record';
COMMENT ON COLUMN RBSGBL_FUNDING_STAGE.FST_CDE_AMEND_STATUS IS 'Specifies the amendment status for further processing by the users for records in the amendment queue';
COMMENT ON COLUMN RBSGBL_FUNDING_STAGE.FST_CDE_RISK_BOOK IS 'The code for the risk book associated for the set of expense/portfolio code';
COMMENT ON COLUMN RBSGBL_FUNDING_STAGE.FST_DSC_RISK_BOOK IS 'The description of the risk book associated with the risk book code';
COMMENT ON COLUMN RBSGBL_FUNDING_STAGE.FST_WSS_INT_ID IS 'This field will hold the system id - LOANIQ GBLO RBS for the RBS instance - LOANIQ GBLO NW for the NatWest instance.This is to be retrieved based upon the EST_CDE_BRANCH';
COMMENT ON COLUMN RBSGBL_FUNDING_STAGE.FST_WSS_CITY_CDE IS 'Contains the Wall Street City ID, derived from a static mapping table based upon the LIQ branch and risk book code';
COMMENT ON COLUMN RBSGBL_FUNDING_STAGE.FST_WSS_CPTY_ID IS 'Contains the Wall Street Counterparty id, derived from a static mapping table based upon the LIQ branch and risk book code';
COMMENT ON COLUMN RBSGBL_FUNDING_STAGE.FST_WSS_PROD_TYPE IS 'Contains the wall street product type, derived from a static mapping table based on the LIQ loan product-Possible values:-CBLT,CBDT,CBDC';
COMMENT ON COLUMN RBSGBL_FUNDING_STAGE.FST_WSS_BUS_AREA IS 'Contains the wall street business area code, derived from a static mapping table based on the LIQ branch and currency.For ACBS RBS, 3 area codes are used-EMKTMM (Emerging Markets),LNCYMM (Currency Markets),LNSTMM (Sterling Markets),For ACBS NWB, 3 area codes are used-EMERMM (Emerging Markets),NWNABK (Currency Markets),NWGBBK (Sterling Markets)';
COMMENT ON COLUMN RBSGBL_FUNDING_STAGE.FST_WSS_PORTFOLIO IS 'Contains the wall street portfolio code, derived from a static mapping table based on the LIQ branch and currency,ACBS RBS 3 portfolio codes:- ACBSCCY liked to LNCYMM based upon the following currencies: JPY, USD, EUR, AUD, NOK, DKK, SEK, CAD, CHF,ACBSEM linked to EMKTMM based on exotic currencies including SGD,ACBSGBP linked to LNSTMM for GBP currency trades,ACBS NWB 3 portfolio codes:- ACBSNA linked to NWNABK based upon the following currencies: JPY, USD, EUR, AUD, NOK, DKK, SEK, CAD, CHF, ACBSEM linked to EMERMM based on exotic currencies including SGD,ACBSGB linked to NWGBBK for GBP currency trades';
COMMENT ON COLUMN RBSGBL_FUNDING_STAGE.FST_RID_FUND_REQ IS 'The unique key for the funding request record to be use as a foreign key in other child tables';
COMMENT ON COLUMN RBSGBL_FUNDING_STAGE.FST_WSS_EXT_TRADE_ID IS 'This is the wall street external ID reference provided by wall street for reconciliation';
COMMENT ON COLUMN RBSGBL_FUNDING_STAGE.FST_TXT_PREV_VALUE IS 'Values deliminated by | to store the previous baseline image record for displaying in the amendment queue';
COMMENT ON COLUMN RBSGBL_FUNDING_STAGE.FST_CDE_TXN_CLASS IS 'Classification of the transaction either OST_TRAN for vls_ost_tran related transactions or  NON_OST_TRAN for vls_outstanding related transactions or ACR_PAY_TRAN for vls_accr_cycle_pmt related transactions';
COMMENT ON COLUMN RBSGBL_FUNDING_STAGE.FST_CDE_BRANCH IS 'COF branch code for the outstanding transaction or branch code for the accrual cycle payment of the outstanding';
COMMENT ON COLUMN RBSGBL_FUNDING_STAGE.FST_CDE_EXPENSE IS 'COF expense code for the outstanding transaction or expense code for the accrual cycle payment of the outstanding';
COMMENT ON COLUMN RBSGBL_FUNDING_STAGE.FST_CDE_PORTFOLIO IS 'COF portfolio code for the outstanding transaction or portfolio code for the accrual cycle payment of the outstanding';
COMMENT ON COLUMN RBSGBL_FUNDING_STAGE.FST_AMT_FUND IS 'Amount to fund for specific branch/expense/portfolio';
COMMENT ON COLUMN RBSGBL_FUNDING_STAGE.FST_PCT_RATE IS 'COF rate for funding the specific branch/expense/portfolio';
COMMENT ON COLUMN RBSGBL_FUNDING_STAGE.FST_PID_DEAL IS 'The deal id of the outstanding';
COMMENT ON COLUMN RBSGBL_FUNDING_STAGE.FST_NME_DEAL IS 'The name of the deal id of the outstanding';
COMMENT ON COLUMN RBSGBL_FUNDING_STAGE.FST_PID_FACILITY IS 'The facility id of the outstanding';
COMMENT ON COLUMN RBSGBL_FUNDING_STAGE.FST_NME_FACILITY IS 'The name of the facility id of the outstanding';
COMMENT ON COLUMN RBSGBL_FUNDING_STAGE.FST_CDE_CURRENCY IS 'The currency code of the outstanding';
COMMENT ON COLUMN RBSGBL_FUNDING_STAGE.FST_RID_FAC_TXN_ID IS 'The facility commitment transaction id (parent transaction) which caused the outstanding transaction';
COMMENT ON COLUMN RBSGBL_FUNDING_STAGE.FST_CDE_FAC_TXN_TYPE IS 'The facility commitment transaction type (parent transaction) which caused the outstanding transaction ';
COMMENT ON COLUMN RBSGBL_FUNDING_STAGE.FST_NME_FAC_TXN_TYPE IS 'The description/enrichment of the facility commitment transaction type (parent transaction) which caused the outstanding transaction';
COMMENT ON COLUMN RBSGBL_FUNDING_STAGE.FST_UID_AMEND_STATUS IS 'User id who did the last update to the record in the amendment queue';
COMMENT ON COLUMN RBSGBL_FUNDING_STAGE.FST_TSP_AMEND_STATUS IS 'The timestamp of the last update done to the record in the amendment queue';
COMMENT ON COLUMN RBSGBL_FUNDING_STAGE.FST_IND_REC_LOCK IS 'Indicator whether the record is being locked for update in the amendment queue';
COMMENT ON COLUMN RBSGBL_FUNDING_STAGE.FST_CDE_HB_RT_BS IS  'Host bank rate basis of the outstanding';
COMMENT ON COLUMN RBSGBL_FUNDING_STAGE.FST_IND_CURR_DEALER_LIST IS 'This value will provide information whether to include record in dealer list report or not. If Y then yes otherwise no';
COMMENT ON COLUMN RBSGBL_FUNDING_STAGE.FST_WSS_ACTION_TYPE IS  'Contains the narrative to be done in WSS for the different type of transactions in the amendment queue';
COMMENT ON COLUMN RBSGBL_FUNDING_STAGE.FST_WSS_MAP_REF IS  'Unique Trade Reference to be sent to WSS for EOD reconciliatio';
COMMENT ON COLUMN RBSGBL_FUNDING_STAGE.FST_CDE_TEAM IS 'Contains the user team/department who administers the deal';
COMMENT ON COLUMN RBSGBL_FUNDING_STAGE.FST_WSS_STUB_REF IS 'Contains the stub trade reference of the previous contract where this position originated from';
COMMENT ON COLUMN RBSGBL_FUNDING_STAGE.FST_DTE_BUSINESS IS 'Contains the LoanIQ Current Business Date';
COMMENT ON COLUMN RBSGBL_FUNDING_STAGE.FST_CDE_ZONE IS 'Region Identifier';
  
DROP INDEX FST_RID_FUND_REQ_IND;

CREATE INDEX FST_RID_FUND_REQ_IND   ON RBSGBL_FUNDING_STAGE(FST_RID_FUND_REQ);

DROP INDEX FST_RID_COMB_IND;

CREATE INDEX FST_RID_COMB_IND       ON RBSGBL_FUNDING_STAGE(FST_RID_OUTSTANDNG,FST_CDE_BRANCH,FST_CDE_EXPENSE,FST_CDE_PORTFOLIO,FST_WSS_MAP_REF,FST_CDE_AMEND_STATUS);  