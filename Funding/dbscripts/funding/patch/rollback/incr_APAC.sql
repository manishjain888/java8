/*
Module	:	Funding Interfaces
Author	:    Jai Jain
Date	:	03/06/2009	
Purpose	:	ALTER script for rbsgbl_auto_fund and rbsgbl_funding_stage. Added column for zone value. 
*/

ALTER TABLE rbsgbl_auto_fund DROP COLUMN aft_cde_zone;

ALTER TABLE rbsgbl_funding_stage DROP COLUMN fst_cde_zone;