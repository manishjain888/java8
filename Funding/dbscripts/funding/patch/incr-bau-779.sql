/*
Module	:	Funding Interfaces
Author	:       Jagjit Singh
Date	:	21/07/2009	
Purpose	:	PROD TD 779. Column length increased from 255 to 1024 for comments	
*/

alter table rbsgbl_amend_comments
modify act_dsc_comment varchar2(1024);

ALTER PROCEDURE RBSGBL_PROC_FUND_AMEND_CMNT COMPILE;
ALTER PROCEDURE RBSGBL_PROC_FUND_DEALER_LIST COMPILE;
ALTER PROCEDURE RBSGBL_PROC_FUND_NARRATIVE COMPILE;
ALTER PROCEDURE RBSGBL_PROC_FUND_LOCK_RECORD COMPILE;