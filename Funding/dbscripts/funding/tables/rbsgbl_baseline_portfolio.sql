/*
Module : Funding Interface
Author : Manish Jain	 
Date 	: 04th July 2008
Purpose : 
*/

DROP TABLE rbsgbl_baseline_portfolio;

CREATE TABLE rbsgbl_baseline_portfolio
(
   bpt_rid_outstandng   VARCHAR(8) NOT NULL,
   bpt_rid_tran     VARCHAR(8) NOT NULL,
   bpt_cde_branch       VARCHAR(5) NOT NULL,
   bpt_cde_expense      VARCHAR(5) NOT NULL,
   bpt_cde_portfolio    VARCHAR(5) NOT NULL,
   bpt_wss_ext_trade_id VARCHAR(15) NULL,
   bpt_pct_rate         NUMBER(31,15) NULL,
   bpt_dte_cycle_strt   DATE NOT NULL,
   bpt_dte_cycle_end    DATE NOT NULL,
   BPT_WSS_MAP_REF	VARCHAR(15) NULL,
   BPT_AMT_SETTLE NUMBER(31,15) DEFAULT 0.0,
   BPT_IND_SETTLE VARCHAR2(1) DEFAULT 'N'	
);


COMMENT    ON COLUMN     rbsgbl_baseline_portfolio.bpt_rid_outstandng       IS    'Loan ID';
COMMENT    ON COLUMN     rbsgbl_baseline_portfolio.bpt_rid_tran         IS    'The id of the outstanding transaction ';
COMMENT    ON COLUMN     rbsgbl_baseline_portfolio.bpt_cde_branch           IS    'COF branch code for the outstanding ';
COMMENT    ON COLUMN     rbsgbl_baseline_portfolio.bpt_cde_expense          IS    'COF expense code for the outstanding ';
COMMENT    ON COLUMN     rbsgbl_baseline_portfolio.bpt_cde_portfolio        IS    'COF portfolio code for the outstanding ';
COMMENT    ON COLUMN     rbsgbl_baseline_portfolio.bpt_wss_ext_trade_id     IS    'This is the wall street external ID reference provided by wall street for reconciliation';
COMMENT    ON COLUMN     rbsgbl_baseline_portfolio.bpt_pct_rate            IS    'COF rate for funding the specific branch/expense/portfolio ';
COMMENT    ON COLUMN     rbsgbl_baseline_portfolio.bpt_dte_cycle_strt         IS    'This is the start date of the accrual period for the portfolio allocation, should coincide with WSS';
COMMENT    ON COLUMN     rbsgbl_baseline_portfolio.bpt_dte_cycle_end       IS    'This is the end date of the accrual period for the portfolio allocation, should coincide with WSS';
COMMENT    ON COLUMN     rbsgbl_baseline_portfolio.BPT_WSS_MAP_REF            IS    'This is the end date of the accrual period for the portfolio allocation, should coincide with WSS';

DROP INDEX BPT_CDE_COMB_IND;

CREATE INDEX BPT_CDE_COMB_IND ON RBSGBL_BASELINE_PORTFOLIO(BPT_WSS_MAP_REF,BPT_RID_OUTSTANDNG,BPT_CDE_BRANCH,BPT_CDE_EXPENSE,BPT_CDE_PORTFOLIO,BPT_PCT_RATE,BPT_DTE_CYCLE_STRT,BPT_DTE_CYCLE_END);