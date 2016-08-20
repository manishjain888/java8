/*
Module	:	Funding Interface
Author	:	Manish Jain, Jai Jain
Date	:	18 Feb 2010
Purpose	:	TD 802. Added Primary Key CONSTRAINT in RBSGBL_BASELINE_IMAGE

*/

ALTER TABLE rbsgbl_baseline_image drop constraint BIT_RID_OUTSTANDNG_PK;


ALTER TABLE RBSGBL_BASELINE_IMAGE ADD ( 
CONSTRAINT BIT_RID_OUTSTANDNG_PK 
PRIMARY KEY 
(BIT_RID_OUTSTANDNG)); 
