/*
Module	:	Funding Interface
Author	:	Manish Jain
Date	:	27 Jan 2008
Purpose	:	Amended the field definition for
			BIT_CDE_ACR_PERIOD for RBSGBL_BASELINE_IMAGE 
			from 7 to 250 for mapping the right enrichment 
*/

ALTER TABLE RBSGBL_BASELINE_IMAGE
MODIFY (BIT_CDE_ACR_PERIOD VARCHAR2(250));

commit;