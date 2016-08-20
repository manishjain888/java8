/*
Module	:	Funding Interfaces
Author	:       Jagjit Singh
Date	:	03/11/2008	
Purpose	:	UAT-1267. 
		Column length modified from 38 to 44 for Break_funded record.
*/

ALTER TABLE RBSGBL_FUNDING_STAGE 
MODIFY FST_IND_REC_LOCK VARCHAR2(44);
