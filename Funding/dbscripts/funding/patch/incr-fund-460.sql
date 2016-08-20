

/*
Module	:	Funding Interfaces
Author	:	Manish Jain
Date	:	25th June 2009
Purpose	:	Contains the previous trade reference associated to this position 
			that is needed to be mapped to the prev_trade_id for automating MECCT
*/

ALTER TABLE rbsgbl_funding_stage ADD FST_WSS_PREV_TRADE_REF VARCHAR2(15)
/
ALTER TABLE RBSGBL_AUTO_FUND ADD (AFT_OLD_WSS_MAP_REF VARCHAR2(15) , AFT_WSS_CUST_REF VARCHAR2(30) )
/
COMMIT
/