/*
Module	:	Funding Interface
Author	:	Manish Jain
Date	:	20 Aug, 2009
Purpose	:	Funding - Complete AUTO_FUND_PARAMETERS details data Script Including all TDs
*/

DELETE FROM RBSGBL_AUTO_FUND_PARAMETERS;

Insert into RBSGBL_AUTO_FUND_PARAMETERS
   (AFP_WARN_TIMEOUT_LIQ, AFP_ERR_TIMEOUT_LIQ, AFP_WARN_TIMEOUT_WSS, AFP_ERR_TIMEOUT_WSS, AFP_REFRESH_TIME, AMD_QUEUE_LOCK_TIME)
 Values
   (18, 25, 40, 48, 1, 5);
COMMIT;
