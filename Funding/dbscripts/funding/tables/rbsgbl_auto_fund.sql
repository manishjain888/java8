/*
Module : Funding Interface
Author : Manish Jain	 
Date 	: 03th July 2008
Purpose : This table is used to generate the automated funding message from the contents of this table and will be 
		  sent to argon.
*/
DROP TABLE rbsgbl_auto_fund
;
CREATE TABLE RBSGBL_AUTO_FUND
(
  AFT_WSS_TRADE_REF       VARCHAR2(40 BYTE)     NOT NULL,
  AFT_WSS_MAP_REF 		  VARCHAR2(15 BYTE)     NOT NULL,
  AFT_WSS_INT_ID          VARCHAR2(10 BYTE)     NOT NULL,
  AFT_WSS_CITY_CDE        VARCHAR2(10 BYTE)     NOT NULL,
  AFT_CDE_MSG_TYPE        CHAR(1 BYTE)          NOT NULL,
  AFT_CDE_TRADE_TYPE      CHAR(1 BYTE)          NOT NULL,
  AFT_CDE_AMEND_TYPE      CHAR(1 BYTE)          NOT NULL,
  AFT_WSS_PROD_TYPE       VARCHAR2(10 BYTE)     NOT NULL,
  AFT_WSS_BUS_AREA        VARCHAR2(30 BYTE)     NOT NULL,
  AFT_WSS_PORTFOLIO       VARCHAR2(30 BYTE)     NOT NULL,
  AFT_CDE_CURRENCY        VARCHAR2(3 BYTE)      NOT NULL,
  AFT_PCT_RATE            NUMBER(31,15),
  AFT_CDE_RATE_TYPE       VARCHAR2(9 BYTE)      NOT NULL,
  AFT_AMT_FUND            NUMBER(28,3)          NOT NULL,
  AFT_IND_INT_FLAG        CHAR(1 BYTE),
  AFT_DTE_START           DATE                  NOT NULL,
  AFT_DTE_TRADE           DATE                  NOT NULL,
  AFT_DTE_MATURITY        DATE                  NOT NULL,
  AFT_WSS_CPTY_ID         VARCHAR2(30 BYTE)     NOT NULL,
  AFT_CDE_WSS_RATE_BASIS  VARCHAR2(6 BYTE),
  AFT_CDE_RATE_INDEX      VARCHAR2(10 BYTE)     NOT NULL,
  AFT_WSS_TRADER_ID       VARCHAR2(10 BYTE),
  AFT_RID_CUST_REF        VARCHAR2(15 BYTE),
  AFT_DSC_REMARK_2        VARCHAR2(30 BYTE),
  AFT_DSC_REMARK_1        VARCHAR2(30 BYTE),
  AFT_DSC_REMARK_3        VARCHAR2(30 BYTE),
  AFT_DSC_CANCEL_REASON   VARCHAR2(30 BYTE),
  AFT_CDE_BF_FEE          VARCHAR2(5 BYTE),
  AFT_DTE_BF_FEE          VARCHAR2(8 BYTE),
  AFT_NUM_BF_FEE          NUMBER(28,3),
  AFT_WSS_PREV_ID         VARCHAR2(30 BYTE),
  AFT_RID_SEQ_ID          VARCHAR2(30 BYTE),
  AFT_RID_APP_ID          NUMBER(15)            NOT NULL,
  AFT_TSP_SENT_ARGON      TIMESTAMP(6),
  AFT_CDE_MSG_STATUS      VARCHAR2(10 BYTE),
  AFT_CDE_ACK_STATUS      VARCHAR2(55 BYTE),
  AFT_TSP_ACK             TIMESTAMP(6),
  AFT_WSS_INT_TRADE_ID    VARCHAR2(15 BYTE),
  AFT_WSS_EXT_TRADE_ID    VARCHAR2(15 BYTE),
  AFT_RID_FUND_REQ        VARCHAR2(31 BYTE)     NOT NULL,
  AFT_IND_EXCLUDE         VARCHAR2(1 BYTE),
  AFT_TSP_REC_UPDATE      TIMESTAMP(8)          NOT NULL,
  AFT_UID_REC_UPDATE      VARCHAR2(10 BYTE)     NOT NULL,
  AFT_CDE_TEAM		  VARCHAR2(8 BYTE),
  AFT_CDE_ZONE            VARCHAR2(8)
)
;



COMMENT ON COLUMN RBSGBL_AUTO_FUND.AFT_AMT_FUND IS 'Funding trade amount for each respective branch/expense/portfolio of the outstanding transaction';

COMMENT ON COLUMN RBSGBL_AUTO_FUND.AFT_IND_INT_FLAG IS 'Currently the value of this field is set to ¿¿ ¿ need to understand the purpose of this field';

COMMENT ON COLUMN RBSGBL_AUTO_FUND.AFT_DTE_START IS 'This is the start date of the current active interest period.';

COMMENT ON COLUMN RBSGBL_AUTO_FUND.AFT_DTE_TRADE IS 'This is the capture date of when the trade was input into LIQ.';

COMMENT ON COLUMN RBSGBL_AUTO_FUND.AFT_DTE_MATURITY IS 'This is the interest maturity date of the trade';

COMMENT ON COLUMN RBSGBL_AUTO_FUND.AFT_WSS_CPTY_ID IS 'Contains the wall street counterparty id to funding trade is book against, derived from a static mapping table based on the LIQ branch and risk code';

COMMENT ON COLUMN RBSGBL_AUTO_FUND.AFT_CDE_WSS_RATE_BASIS IS 'Rate basis used for the accrual';

COMMENT ON COLUMN RBSGBL_AUTO_FUND.AFT_CDE_RATE_INDEX IS 'Default value is FI';

COMMENT ON COLUMN RBSGBL_AUTO_FUND.AFT_WSS_TRADER_ID IS 'For LIQ, a new trader id is required to be setup i.e. LIQ GBLO    ';

COMMENT ON COLUMN RBSGBL_AUTO_FUND.AFT_RID_CUST_REF IS 'Customer reference which is the outstanding or loan id    ';

COMMENT ON COLUMN RBSGBL_AUTO_FUND.AFT_DSC_REMARK_2 IS 'Contains the customer short name in LIQ';

COMMENT ON COLUMN RBSGBL_AUTO_FUND.AFT_DSC_REMARK_1 IS 'Additional remark field to include any comments yet to be defined';

COMMENT ON COLUMN RBSGBL_AUTO_FUND.AFT_DSC_REMARK_3 IS 'Proposal is to use this field to hold the LIQ branch code and portfolio / expense code';

COMMENT ON COLUMN RBSGBL_AUTO_FUND.AFT_DSC_CANCEL_REASON IS 'To hold the cancellation / amendment message';

COMMENT ON COLUMN RBSGBL_AUTO_FUND.AFT_CDE_BF_FEE IS 'Fee code to be used in wall street to book the break funding fee. The content of this field will be populated by the dealer via the amendment queue. ';

COMMENT ON COLUMN RBSGBL_AUTO_FUND.AFT_DTE_BF_FEE IS 'Break funding fee booking date. The content of this field will be populated by the dealer via the amendment queue';

COMMENT ON COLUMN RBSGBL_AUTO_FUND.AFT_NUM_BF_FEE IS 'The amount of the break funding fee. The content of this field will be populated by the dealer via the amendment queue';

COMMENT ON COLUMN RBSGBL_AUTO_FUND.AFT_WSS_PREV_ID IS 'This field is required for amendments (i.e. Amendment type is C or M) or events (trade type B, R or T). It can be the Wall street trade id if known';

COMMENT ON COLUMN RBSGBL_AUTO_FUND.AFT_RID_SEQ_ID IS 'This is the Argon Sequence id assigned to the message';

COMMENT ON COLUMN RBSGBL_AUTO_FUND.AFT_RID_APP_ID IS 'This is the Argon App id assigned to the message';

COMMENT ON COLUMN RBSGBL_AUTO_FUND.AFT_TSP_SENT_ARGON IS 'This is the timestamp when the message was sent to Argon';

COMMENT ON COLUMN RBSGBL_AUTO_FUND.AFT_CDE_MSG_STATUS IS 'This is the status of the message that was sent to argon';

COMMENT ON COLUMN RBSGBL_AUTO_FUND.AFT_CDE_ACK_STATUS IS 'This is the status of the acknowledgement message from Wall Street';

COMMENT ON COLUMN RBSGBL_AUTO_FUND.AFT_TSP_ACK IS 'This is the timestamp when the acknowledgement message was received';

COMMENT ON COLUMN RBSGBL_AUTO_FUND.AFT_WSS_INT_TRADE_ID IS 'This is the wall street internal ID reference provided by wall street once it has been processed';

COMMENT ON COLUMN RBSGBL_AUTO_FUND.AFT_WSS_EXT_TRADE_ID IS 'This is the wall street internal ID reference provided by wall street for reconcillation';

COMMENT ON COLUMN RBSGBL_AUTO_FUND.AFT_RID_FUND_REQ IS 'The unique key for the funding request record to be use as a foreign key in other child tables    ';

COMMENT ON COLUMN RBSGBL_AUTO_FUND.AFT_IND_EXCLUDE IS 'Indicates that for a ACK-FAIL record, the user has already taken a look at this record and can be excluded from the auto funding summary screen';

COMMENT ON COLUMN RBSGBL_AUTO_FUND.AFT_WSS_TRADE_REF IS 'Unique Trade Reference for the record';

COMMENT ON COLUMN RBSGBL_AUTO_FUND.AFT_WSS_INT_ID IS 'System ID for WSS';

COMMENT ON COLUMN RBSGBL_AUTO_FUND.AFT_WSS_CITY_CDE IS 'Contains the Wall Street City ID, derived from a static mapping table based upon the LIQ branch and risk book code';

COMMENT ON COLUMN RBSGBL_AUTO_FUND.AFT_CDE_MSG_TYPE IS 'Default setting  for money market trade';

COMMENT ON COLUMN RBSGBL_AUTO_FUND.AFT_CDE_TRADE_TYPE IS 'The value of this field is set to blank in ACBS, however in LIQ we will be using this field to denote amendments or cancellation';

COMMENT ON COLUMN RBSGBL_AUTO_FUND.AFT_CDE_AMEND_TYPE IS 'The value of this field is set to blank in ACBS, however in LIQ we will be using this field to denote amendments or cancellation';

COMMENT ON COLUMN RBSGBL_AUTO_FUND.AFT_WSS_PROD_TYPE IS 'Contains the wall street product type, derived from a static mapping table based on the LIQ loan product';

COMMENT ON COLUMN RBSGBL_AUTO_FUND.AFT_WSS_BUS_AREA IS 'Contains the wall street business area, derived from a static mapping table based on the LIQ branch and currency';

COMMENT ON COLUMN RBSGBL_AUTO_FUND.AFT_WSS_PORTFOLIO IS 'Contains the wall street business area, derived from a static mapping table based on the LIQ branch and currency';

COMMENT ON COLUMN RBSGBL_AUTO_FUND.AFT_CDE_CURRENCY IS 'Currency of the outstanding/trade';

COMMENT ON COLUMN RBSGBL_AUTO_FUND.AFT_PCT_RATE IS 'COF rate set in LIQ associated to the trade';

COMMENT ON COLUMN RBSGBL_AUTO_FUND.AFT_CDE_RATE_TYPE IS 'Currently the value of this field is set to 1  need to understand the purpose of this field';

COMMENT ON COLUMN RBSGBL_AUTO_FUND.AFT_WSS_MAP_REF IS 'Contains the map trade reference to fit WSS trade ref requirements';

COMMENT ON COLUMN RBSGBL_AUTO_FUND.AFT_CDE_TEAM IS 'Contains the user team/department who administers the deal';

COMMENT ON COLUMN RBSGBL_AUTO_FUND.AFT_CDE_ZONE IS 'Region Identifier';

DROP INDEX AFT_RID_FUND_REQ_IND;

CREATE INDEX AFT_RID_FUND_REQ_IND   ON RBSGBL_AUTO_FUND(AFT_RID_FUND_REQ);