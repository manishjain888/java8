/*
Module	:	Funding Interface
Author	:	Jagjit Singh
Date	:	15 Oct 2008
Purpose	:	incr_fund_1112.sql , Alter statement to include new column for Configurable time of amendment queue
		Alter statement to increase column width of fst_ind_rec_lock from 1 to 38
		Update statement for static details to include min outstanding amount for dealer list.
*/

ALTER TABLE RBSGBL_AUTO_FUND_PARAMETERS
ADD AMD_QUEUE_LOCK_TIME NUMBER;

ALTER TABLE RBSGBL_FUNDING_STAGE
MODIFY (FST_IND_REC_LOCK VARCHAR2(38));

/*Update statement for static details to include min outstanding amount for dealer list*/
UPDATE rbsgbl_static_details
   SET static_value_4 = NULL
 WHERE static_type_id = 'FND02';
UPDATE rbsgbl_static_details
   SET static_value_4 = 5000000
 WHERE static_type_id = 'FND02'
       AND key_value_2 IN ('AUD', 'CAD', 'CHF', 'NZD');
UPDATE rbsgbl_static_details
   SET static_value_4 = 15000000
 WHERE static_type_id = 'FND02' AND key_value_2 IN ('DKK', 'NOK', 'SEK');
UPDATE rbsgbl_static_details
   SET static_value_4 = 1000000
 WHERE static_type_id = 'FND02' AND key_value_2 IN ('EUR');
UPDATE rbsgbl_static_details
   SET static_value_4 = 10000000
 WHERE static_type_id = 'FND02' AND key_value_2 IN ('GBP', 'USD');
UPDATE rbsgbl_static_details
   SET static_value_4 = 358392.109639314
 WHERE static_type_id = 'FND02' AND key_value_2 IN ('SGD');
UPDATE rbsgbl_static_details
   SET static_value_4 = 62139.59037582
 WHERE static_type_id = 'FND02' AND key_value_2 IN ('ZAR');
UPDATE rbsgbl_static_details
   SET static_value_4 = 213883.155632078
 WHERE static_type_id = 'FND02' AND key_value_2 IN ('PLN');
COMMIT ;



