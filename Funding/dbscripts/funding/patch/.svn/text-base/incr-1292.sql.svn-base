/*
Module	:	Funding Interfaces
Author	:       Jagjit Singh
Date	:	03/11/2008	
Purpose	:	UAT-1292. Insert record for auto fund configuration table.
*/

Delete from RBSGBL_AUTO_FUND_PARAMETERS;

Insert into RBSGBL_AUTO_FUND_PARAMETERS
   (AFP_WARN_TIMEOUT_LIQ, AFP_ERR_TIMEOUT_LIQ, AFP_WARN_TIMEOUT_WSS, AFP_ERR_TIMEOUT_WSS, AFP_REFRESH_TIME, AMD_QUEUE_LOCK_TIME)
 Values
   (18, 25, 40, 48, 5, 5);
COMMIT;


Update RBSGBL_USER_GROUP set UGT_IND_ACCESS = 'YN' where UGT_CDE_GROUP = 'LOANOPSVER' and UGT_CDE_AMEND_STATUS = 'REJECTED';
COMMIT;