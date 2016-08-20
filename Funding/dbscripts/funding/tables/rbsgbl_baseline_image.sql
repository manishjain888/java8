/*
Module : Funding Interface
Author : Manish Jain	 
Date 	: 03th July 2008
Purpose : 
*/

DROP TABLE rbsgbl_baseline_image;

CREATE TABLE rbsgbl_baseline_image
(
   bit_rid_outstandng   VARCHAR(8)  NOT NULL,
   bit_nme_alias     	VARCHAR(15) NOT NULL,
   bit_cde_hb_rt_bs   	VARCHAR(5)  NOT NULL,
   bit_dte_maturity  	DATE  NOT NULL,
   bit_cde_acr_period 	VARCHAR(250)  NOT NULL,
   bit_dte_cycle_due  	DATE    NOT NULL,
   bit_dte_adj_cycle  	DATE    NOT NULL,
   bit_dte_cycle_end 	DATE    NOT NULL,
   bit_cde_endte_rule	VARCHAR(26)    NOT NULL,
   bit_num_version    	NUMBER(8)    NOT NULL,
   BIT_DTE_LAST_REPRICE DATE NOT NULL
);

COMMENT ON COLUMN rbsgbl_baseline_image.bit_rid_outstandng IS   'Loan ID';
COMMENT ON COLUMN rbsgbl_baseline_image.bit_nme_alias    IS    'Loan Alias';
COMMENT ON COLUMN rbsgbl_baseline_image.bit_cde_hb_rt_bs    IS    'Host bank Rate basis';
COMMENT ON COLUMN rbsgbl_baseline_image.bit_dte_maturity   IS     'Maturity date of the outstanding';
COMMENT ON COLUMN rbsgbl_baseline_image.bit_cde_acr_period  IS  'Interest cycle frequency of the outstanding';
COMMENT ON COLUMN rbsgbl_baseline_image.bit_dte_cycle_due  IS  'The due date for the outstanding';
COMMENT ON COLUMN rbsgbl_baseline_image.bit_dte_adj_cycle   IS 'The adjusted due date for the outstanding after factoring business day computation';
COMMENT ON COLUMN rbsgbl_baseline_image.bit_dte_cycle_end   IS 'The ending date of the accrual cycle for the outstanding';
COMMENT ON COLUMN rbsgbl_baseline_image.bit_cde_endte_rule  IS  'Accrual rule of the outstanding';
COMMENT ON COLUMN rbsgbl_baseline_image.bit_num_version    IS    'Indicates the current version number of a specific non ost tran record';

DROP INDEX BPT_RID_OUTSTANDNG_IND;

CREATE INDEX BPT_RID_OUTSTANDNG_IND ON RBSGBL_BASELINE_IMAGE(BIT_RID_OUTSTANDNG);  