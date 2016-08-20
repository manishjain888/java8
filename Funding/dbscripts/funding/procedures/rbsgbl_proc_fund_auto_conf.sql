/*
Module	:	LoanIQ Interfaces
Author	:	Jagjit Singh
Date	:	08/08/2008
Purpose	:	Procedure will update auto fund prameters table from report
*/

CREATE OR REPLACE PROCEDURE RBS_LIQ.rbsgbl_proc_fund_auto_conf (
   in_refresh_time       NUMBER,
   in_warn_timeout_liq   NUMBER,
   in_err_timeout_liq    NUMBER,
   in_warn_timeout_wss   NUMBER,
   in_err_timeout_wss    NUMBER
)
IS
   var_refresh_time       NUMBER;
   var_warn_timeout_liq   NUMBER;
   var_err_timeout_liq    NUMBER;
   var_warn_timeout_wss   NUMBER;
   var_err_timeout_wss    NUMBER;
BEGIN
   BEGIN
      SELECT afp_refresh_time, afp_warn_timeout_liq, afp_err_timeout_liq,
             afp_warn_timeout_wss, afp_err_timeout_wss
        INTO var_refresh_time, var_warn_timeout_liq, var_err_timeout_liq,
             var_warn_timeout_wss, var_err_timeout_wss
        FROM rbsgbl_auto_fund_parameters;
        EXCEPTION
        WHEN NO_DATA_FOUND
        THEN dbms_output.put_line('No Data Found');
   END;

   BEGIN
      SELECT DECODE (in_refresh_time,
                     0, var_refresh_time,
                     NULL, var_refresh_time,
                     in_refresh_time
                    ),
             DECODE (in_warn_timeout_liq,
                     0, var_warn_timeout_liq,
                     NULL, var_warn_timeout_liq,
                     in_warn_timeout_liq
                    ),
             DECODE (in_err_timeout_liq,
                     0, var_err_timeout_liq,
                     NULL, var_err_timeout_liq,
                     in_err_timeout_liq
                    ),
             DECODE (in_warn_timeout_wss,
                     0, var_warn_timeout_wss,
                     NULL, var_warn_timeout_wss,
                     in_warn_timeout_wss
                    ),
             DECODE (in_err_timeout_wss,
                     0, var_err_timeout_wss,
                     NULL, var_err_timeout_wss,
                     in_err_timeout_wss
                    )
        INTO var_refresh_time,
             var_warn_timeout_liq,
             var_err_timeout_liq,
             var_warn_timeout_wss,
             var_err_timeout_wss
        FROM DUAL;
   END;

     BEGIN
      update  rbsgbl_auto_fund_parameters
      set      afp_refresh_time = var_refresh_time,
               afp_warn_timeout_liq =  var_warn_timeout_liq,
               afp_err_timeout_liq =  var_err_timeout_liq,
               afp_warn_timeout_wss = var_warn_timeout_wss,
               afp_err_timeout_wss = var_err_timeout_wss;
      COMMIT;
   EXCEPTION
      WHEN OTHERS
      THEN
         err.report_and_go
                   ('rbsgbl_proc_auto_funding ',
                    'ERROR: Insertion in rbsgbl_auto_fund_parameters failed',
                    SQLCODE,
                    ''
                   );
   END;
   BEGIN
   update rbsgbl_auto_fund
   set    AFT_CDE_MSG_STATUS = 'NACK'
   where  sysdate > AFT_TSP_SENT_ARGON + NUMTODSINTERVAL ((
        select afp_err_timeout_wss from rbsgbl_auto_fund_parameters
        ),'MINUTE') and AFT_CDE_MSG_STATUS = 'SENT';
   EXCEPTION
      WHEN NO_DATA_FOUND
      THEN dbms_output.put_line('No records satisfied update contition');
      WHEN OTHERS
      THEN
         err.report_and_go
                   ('rbsgbl_proc_auto_funding ',
                    'ERROR: Insertion in rbsgbl_auto_fund_parameters failed',
                    SQLCODE,
                    ''
                   );
   END;
   COMMIT;
END;
/