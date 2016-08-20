/*
Module	:	Funding Interface
Author	:	Manish Jain
Date	:	17 Jan 2009
Purpose	:	Add new column
*/

ALTER TABLE RBSGBL_BASELINE_IMAGE  
DROP COLUMN BIT_DTE_LAST_REPRICE;

alter table RBSGBL_BASELINE_IMAGE 
add  BIT_DTE_LAST_REPRICE date ; 

commit;