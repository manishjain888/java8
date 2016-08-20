/*
Module    	:    Funding Interface
Author    	:    Jagjit Singh
Date    	:    04-Aug-2008
Purpose   	:    This table will hold the configuration parameters for Auto Funding report.
        	     Content of this table will change as soon as user clicks on 'APPLY' button in 'AUTO FUNDING' Report
*/

DROP TABLE rbsgbl_auto_fund_parameters
/

CREATE TABLE rbsgbl_auto_fund_parameters
(
afp_warn_timeout_liq NUMBER,
afp_err_timeout_liq  NUMBER,
afp_warn_timeout_wss    NUMBER,
afp_err_timeout_wss    NUMBER,
afp_refresh_time    NUMBER,
AMD_QUEUE_LOCK_TIME NUMBER
)
/




COMMENT ON COLUMN     rbsgbl_auto_fund_parameters.afp_warn_timeout_liq         IS    'TIME LIMIT FOR WARNING MESSAGE IN LIQ';
COMMENT ON COLUMN     rbsgbl_auto_fund_parameters.afp_err_timeout_liq          IS    'TIME LIMIT FOR ERROR MESSAGE IN LIQ';
COMMENT ON COLUMN     rbsgbl_auto_fund_parameters.afp_warn_timeout_wss          IS    'TIME LIMIT FOR WARNING MESSAGE IN WSS';
COMMENT ON COLUMN     rbsgbl_auto_fund_parameters.afp_err_timeout_wss             IS    'TIME LIMIT FOR ERROR MESSAGE IN WSS';
COMMENT ON COLUMN     rbsgbl_auto_fund_parameters.afp_refresh_time              IS    'REFRESH TIME FOR AUTO FUNDING REPORT';