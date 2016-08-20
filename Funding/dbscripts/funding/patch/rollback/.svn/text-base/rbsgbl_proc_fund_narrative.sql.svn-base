/*
Module	:	LoanIQ Interfaces
Author	:	Manish Jain
Date	:	27/02/2009
Purpose	:	Changed with respect to 2344
*/
CREATE OR REPLACE PROCEDURE "RBSGBL_PROC_FUND_NARRATIVE"
IS
   var_ref_narrative_records   rbsgbl_funding_stage%ROWTYPE;
   var_balance                 NUMBER;
   var_portfolio_allocation    rbsgbl_baseline_portfolio.bpt_wss_ext_trade_id%TYPE;
   var_portfolio_amount        vls_ost_cof_shr.ocs_amt_amount%TYPE;
   var_global_amount           vls_ost_sg_shr.oss_amt_gross%TYPE;
   var_host_bank_amount        vls_ost_sg_shr.oss_amt_gross%TYPE;
   var_ind_compute_int         VARCHAR2 (1);
   var_int_amt                 NUMBER;
   action                      VARCHAR2 (100);
   var_mig_flag                VARCHAR2 (1)                           := NULL;

   /*Fetching only those records where action type is null*/
   CURSOR cur_narrative_records
   IS
      SELECT *
        FROM rbsgbl_funding_stage
       WHERE TRIM (fst_wss_action_type) IS NULL
         AND fst_cde_process_queue = 'AMEND'
         AND fst_cde_txn_class = 'OST_TRAN'
      UNION
      SELECT *
        FROM rbsgbl_funding_stage
       WHERE fst_cde_obj_state = 'RELSD'
         AND (fst_amt_interest = 0 OR TRIM (fst_amt_interest) IS NULL)
         AND fst_cde_amend_status = 'ACCEPTED'
         AND TRIM (fst_ind_aq_msg_process) IS NULL
         AND fst_cde_process_queue = 'AMEND'
         AND fst_cde_txn_class = 'OST_TRAN'
         AND fst_dte_business =
                (SELECT TO_DATE (bdt_dte_business)
                   FROM vrp_bus_dates, vls_branch
                  WHERE brn_cde_tme_region = bdt_cde_tme_region
                    AND brn_cde_branch = fst_cde_branch
                    AND TRIM (bdt_txt_type) = 'Current Business Date');
BEGIN
   FOR var_cur_narrative_records IN cur_narrative_records
   LOOP
      var_ref_narrative_records := var_cur_narrative_records;
      var_balance := '';
      var_portfolio_allocation := '';
      var_portfolio_amount := '';
      var_global_amount := '';
      var_host_bank_amount := '';
      var_ind_compute_int := '';
      var_int_amt := 0;
      var_mig_flag := '';

      /*Calculating migration flag*/
      BEGIN
         SELECT mig_start_ind
           INTO var_mig_flag
           FROM rbsgbl_funding_env;
      EXCEPTION
         WHEN OTHERS
         THEN
            err.report_and_go
               ('rbsgbl_proc_fund_narrative ',
                   'Error in calculating migration fund indicator for FST_RID_FUND_REQ: '
                || var_ref_narrative_records.fst_rid_fund_req,
                SQLCODE,
                ''
               );
      END;

      /*Calculating portfolio allocation*/
      BEGIN
         SELECT bpt_wss_ext_trade_id
           INTO var_portfolio_allocation
           FROM rbsgbl_baseline_portfolio
          WHERE TRIM (bpt_rid_outstandng) =
                                  var_ref_narrative_records.fst_rid_outstandng
            AND TRIM (bpt_cde_branch) =
                                      var_ref_narrative_records.fst_cde_branch
            AND TRIM (bpt_cde_expense) =
                                     var_ref_narrative_records.fst_cde_expense
            AND TRIM (bpt_cde_portfolio) =
                                   var_ref_narrative_records.fst_cde_portfolio
            AND TRIM (bpt_pct_rate) = var_ref_narrative_records.fst_pct_rate
            AND TRIM (bpt_dte_cycle_strt) =
                                   var_ref_narrative_records.fst_dte_effective
            AND TRIM (bpt_dte_cycle_end) =
                                   var_ref_narrative_records.fst_dte_cycle_end
            AND TRIM (bpt_wss_map_ref) =
                                     var_ref_narrative_records.fst_wss_map_ref;

         DBMS_OUTPUT.put_line (   var_ref_narrative_records.fst_rid_fund_req
                               || ' - '
                               || var_portfolio_allocation
                              );
      EXCEPTION
         WHEN NO_DATA_FOUND
         THEN
            DBMS_OUTPUT.put_line (   'Portfolio allocation is null for '
                                  || var_ref_narrative_records.fst_rid_fund_req
                                 );
         WHEN OTHERS
         THEN
            err.report_and_go
               ('rbsgbl_proc_fund_narrative ',
                   'Error in calculating portfolio allocation indicator for FST_RID_FUND_REQ: '
                || var_ref_narrative_records.fst_rid_fund_req,
                SQLCODE,
                ''
               );
      END;

      IF (   (var_ref_narrative_records.fst_cde_amend_status <> 'ACCEPTED')
          OR (var_ref_narrative_records.fst_cde_amend_status IS NULL)
         )
      THEN
         BEGIN
            /*For differenct classes like ost_tran, non_ost_tran and acr_pmt_tran*/
            IF (var_ref_narrative_records.fst_cde_txn_class = 'OST_TRAN')
            THEN
               /*Prcocess this block only whrn transaction type is 'ADJST'*/
               IF (var_ref_narrative_records.fst_cde_tr_type = 'ADJST')
               THEN
                  BEGIN
                     /*Calculating balance amount for ADJUST transaction type*/
                     BEGIN
                     /*TD 2344*/
                        SELECT   SUM (ocs_amt_amount)
                            INTO var_balance
                            FROM vls_ost_cof_shr
                        GROUP BY ocs_rid_outstandng,
                                 ocs_cde_branch,
                                 ocs_cde_expense,
                                 ocs_cde_portfolio,
                                 ocs_pct_rate,
                                 ocs_cde_fundg_type
                          HAVING TRIM (ocs_rid_outstandng) =
                                    var_ref_narrative_records.fst_rid_outstandng
                             AND TRIM (ocs_cde_branch) =
                                      var_ref_narrative_records.fst_cde_branch
                             AND TRIM (ocs_cde_expense) =
                                     var_ref_narrative_records.fst_cde_expense
                             AND TRIM (ocs_cde_portfolio) =
                                    var_ref_narrative_records.fst_cde_portfolio
                             AND TRIM (ocs_pct_rate) =
                                        var_ref_narrative_records.fst_pct_rate
                             AND TRIM (ocs_cde_fundg_type) =
                                    var_ref_narrative_records.fst_cde_fundg_type;

                                         /*   SELECT fpp_amt_available + por_amt_trans
                                              INTO var_balance
                                              FROM vls_fac_commit_trn LEFT OUTER JOIN vls_port_allocat
                                                   ON ftr_rid_commit_trn = por_rid_fac_tran
                                                   LEFT OUTER JOIN vls_fac_port_pos
                                                   ON ftr_pid_facility = fpp_pid_facility
                                                 AND por_amt_trans <> 0
                                                 AND por_cde_branch = fpp_cde_branch
                                                 AND por_cde_expense = fpp_cde_expense
                                                 AND por_cde_portfolio = fpp_cde_portfolio
                                             WHERE TRIM (ftr_rid_commit_trn) =
                                                      var_ref_narrative_records.fst_rid_fac_txn_id
                                               AND TRIM (fpp_cde_branch) =
                                                          var_ref_narrative_records.fst_cde_branch
                                               AND TRIM (fpp_cde_expense) =
                                                         var_ref_narrative_records.fst_cde_expense
                                               AND TRIM (fpp_cde_portfolio) =
                                                       var_ref_narrative_records.fst_cde_portfolio;*/
                     EXCEPTION
                        WHEN NO_DATA_FOUND
                        THEN
                           DBMS_OUTPUT.put_line ('Balance amount is null');
                        WHEN OTHERS
                        THEN
                           err.report_and_go
                              ('rbsgbl_proc_fund_narrative ',
                                  'Error in OST_TRAN query of ADJST tran for balance amount for FST_RID_FUND_REQ: '
                               || var_ref_narrative_records.fst_rid_fund_req,
                               SQLCODE,
                               ''
                              );
                     END;

                     BEGIN

                        /*For 'NEW TRADE BOOKING' as action type for adjust records */
                        IF (   (    var_ref_narrative_records.fst_cde_fac_txn_type =
                                                                       'CPXFR'
                                AND (   TRIM
                                           (var_ref_narrative_records.fst_ind_break_fund
                                           ) IS NULL
                                     OR var_ref_narrative_records.fst_ind_break_fund =
                                                                           'N'
                                    )
                                AND TRIM (var_portfolio_allocation) IS NULL
                                AND SIGN(var_ref_narrative_records.fst_amt_fund) =1
                               )
                            OR (    var_ref_narrative_records.fst_cde_fac_txn_type =
                                                                       'CPXFR'
                                AND var_ref_narrative_records.fst_ind_break_fund =
                                                                           'Y'
                                AND TRIM (var_portfolio_allocation) IS NULL
                                AND SIGN
                                       (var_ref_narrative_records.fst_amt_fund) =
                                                                             1
                               )
                            OR (    var_ref_narrative_records.fst_cde_fac_txn_type =
                                                                       'FCINV'
                                AND TRIM (var_portfolio_allocation) IS NULL
                                AND var_ref_narrative_records.fst_amt_fund >0
                                --AND var_ref_narrative_records.fst_cde_ide_trans_type =
                                                                        -- 'BUY'
                               )
                           OR (
                                var_ref_narrative_records.fst_cde_fac_txn_type NOT IN('FCINV','CPXFR')
                                AND var_ref_narrative_records.fst_amt_fund >0
                                AND TRIM (var_portfolio_allocation) IS NULL
                            )
                           )
                        THEN
                           var_ref_narrative_records.fst_wss_action_type :=
                                                          'NEW TRADE BOOKING';
                        ELSE
                           /*For 'INCREASE TRADE' as action type for adjust records */
                           IF (   (    var_ref_narrative_records.fst_cde_fac_txn_type =
                                                                       'CPXFR'
                                   AND (   TRIM
                                              (var_ref_narrative_records.fst_ind_break_fund
                                              ) IS NULL
                                        OR var_ref_narrative_records.fst_ind_break_fund =
                                                                           'N'
                                       )
                                   AND TRIM (var_portfolio_allocation) IS NOT NULL
                                   AND SIGN
                                          (var_ref_narrative_records.fst_amt_fund
                                          ) = 1
                                  )
                               OR (    var_ref_narrative_records.fst_cde_fac_txn_type =
                                                                       'CPXFR'
                                   AND var_ref_narrative_records.fst_ind_break_fund =
                                                                           'Y'
                                   AND TRIM (var_portfolio_allocation) IS NOT NULL
                                   AND SIGN
                                          (var_ref_narrative_records.fst_amt_fund
                                          ) = 1
                                  )
                               OR (    var_ref_narrative_records.fst_cde_fac_txn_type =
                                                                       'FCINV'
                                   AND TRIM (var_portfolio_allocation) IS NOT NULL
                                   AND var_ref_narrative_records.fst_amt_fund >0
                                   --AND var_ref_narrative_records.fst_cde_ide_trans_type =
                                                                   --      'BUY'
                                  )
                                OR (
                                    var_ref_narrative_records.fst_cde_fac_txn_type NOT IN('FCINV','CPXFR')
                                    AND var_ref_narrative_records.fst_amt_fund >0
                                    AND TRIM (var_portfolio_allocation) IS NOT NULL
                                )
                              )
                           THEN
                              var_ref_narrative_records.fst_wss_action_type :=
                                                             'INCREASE TRADE';
                           ELSE
                              /*For 'CANCEL FROM TRADE' as action type for adjust records */
                              IF (   (    var_ref_narrative_records.fst_cde_fac_txn_type =
                                                                       'CPXFR'
                                      AND (   TRIM
                                                 (var_ref_narrative_records.fst_ind_break_fund
                                                 ) IS NULL
                                           OR var_ref_narrative_records.fst_ind_break_fund =
                                                                           'N'
                                          )
                                      AND var_balance <= 0
                                      AND SIGN
                                             (var_ref_narrative_records.fst_amt_fund
                                             ) = -1
                                     )--Balance Change 8,10
                                  OR (    var_ref_narrative_records.fst_cde_fac_txn_type =
                                                                       'FCINV'
                                      AND (   TRIM
                                                 (var_ref_narrative_records.fst_ind_break_fund
                                                 ) IS NULL
                                           OR var_ref_narrative_records.fst_ind_break_fund =
                                                                           'N'
                                          )
                                      AND var_balance <= 0
                                      --AND TRIM (var_portfolio_allocation) IS NULL --//TD932
                                       AND var_ref_narrative_records.fst_amt_fund <=0
                                      --AND var_ref_narrative_records.fst_cde_ide_trans_type =
                                                                        --'SELL'
                                     )
                                  OR (    var_ref_narrative_records.fst_cde_fac_txn_type =
                                                                       'FCINV'
                                      AND var_ref_narrative_records.fst_ind_break_fund =
                                                                           'Y'
                                      AND var_balance <= 0
                                      AND TRIM (var_portfolio_allocation) IS NULL
                                       AND var_ref_narrative_records.fst_amt_fund <=0
                                      --AND var_ref_narrative_records.fst_cde_ide_trans_type =
                                                                        --'SELL'
                                     )
                                  OR (    var_ref_narrative_records.fst_cde_fac_txn_type =
                                                                       'FCINV'
                                      AND var_ref_narrative_records.fst_ind_break_fund =
                                                                           'Y'
                                      AND var_balance > 0
                                      AND TRIM (var_portfolio_allocation) IS NULL
                                      AND var_ref_narrative_records.fst_amt_fund <=0
                                     -- AND var_ref_narrative_records.fst_cde_ide_trans_type =
                                                                     --   'SELL'
                                     )
                                  OR (
                                    var_ref_narrative_records.fst_cde_fac_txn_type NOT IN('FCINV','CPXFR')
                                    AND var_ref_narrative_records.fst_amt_fund <=0
                                    AND var_balance <= 0
                                    AND TRIM (var_portfolio_allocation) IS NULL
                                )--Balance Change, 27

                                OR (
                                    var_ref_narrative_records.fst_cde_fac_txn_type NOT IN('FCINV','CPXFR')
                                    AND var_ref_narrative_records.fst_amt_fund <=0
                                    AND var_balance > 0
                                    AND TRIM (var_portfolio_allocation) IS NULL
                                )--Balance Change, 28

                                 )
                              THEN

                                 var_ref_narrative_records.fst_wss_action_type := 'BALANCE CHANGE';
                                                          --'CANCEL FROM TRADE';
                              ELSE
                                 /*For 'PART REPAYMENT' as action type for adjust records */
                                 IF (   (    var_ref_narrative_records.fst_cde_fac_txn_type =
                                                                       'CPXFR'
                                         AND (   TRIM
                                                    (var_ref_narrative_records.fst_ind_break_fund
                                                    ) IS NULL
                                              OR var_ref_narrative_records.fst_ind_break_fund =
                                                                           'N'
                                             )
                                         AND var_balance > 0
                                         AND SIGN
                                                (var_ref_narrative_records.fst_amt_fund
                                                ) = -1
                                        )--Balance Change, 5,7
                                     OR (    var_ref_narrative_records.fst_cde_fac_txn_type =
                                                                       'CPXFR'
                                         AND var_ref_narrative_records.fst_ind_break_fund =
                                                                           'Y'
                                         AND var_balance > 0
                                         AND SIGN
                                                (var_ref_narrative_records.fst_amt_fund
                                                ) = -1
                                        )--Balance Change,9
                                     OR (    var_ref_narrative_records.fst_cde_fac_txn_type =
                                                                       'FCINV'
                                         AND var_balance > 0
                                         AND TRIM (var_portfolio_allocation) IS NOT NULL
                                          AND var_ref_narrative_records.fst_amt_fund <=0
                                         --AND var_ref_narrative_records.fst_cde_ide_trans_type =
                                                                       -- 'SELL'
                                        )
                                     OR (
                                        var_ref_narrative_records.fst_cde_fac_txn_type NOT IN('FCINV','CPXFR')
                                        AND var_ref_narrative_records.fst_amt_fund <=0
                                        AND var_balance > 0
                                        AND TRIM (var_portfolio_allocation) IS NOT NULL
                                    )--Balance Change, 30

                                    )
                                 THEN

                                    var_ref_narrative_records.fst_wss_action_type :='BALANCE CHANGE';
                                                             --'PART REPAYMENT';
                                 ELSE
                                    /*For 'EARLY FULL REPAYMENT' as action type for adjust records */
                                    IF (   (    var_ref_narrative_records.fst_cde_fac_txn_type =
                                                                       'CPXFR'
                                            AND var_ref_narrative_records.fst_ind_break_fund =
                                                                           'Y'
                                            AND var_balance <= 0
                                            AND SIGN
                                                   (var_ref_narrative_records.fst_amt_fund
                                                   ) = -1
                                           )--Balance Change
                                        OR (    var_ref_narrative_records.fst_cde_fac_txn_type =
                                                                       'FCINV'
                                            AND var_balance <= 0
                                            AND TRIM (var_portfolio_allocation) IS NOT NULL
                                             AND var_ref_narrative_records.fst_amt_fund <=0
                                             AND var_ref_narrative_records.fst_ind_break_fund =
                                                                           'Y'
                                            --AND var_ref_narrative_records.fst_cde_ide_trans_type =
                                                                       -- 'SELL'
                                           )

                                        OR (
                                            var_ref_narrative_records.fst_cde_fac_txn_type NOT IN('FCINV','CPXFR')
                                            AND var_ref_narrative_records.fst_amt_fund <=0
                                            AND var_balance <= 0
                                            AND TRIM (var_portfolio_allocation) IS NOT NULL
                                        )
                                       )
                                    THEN

                                       var_ref_narrative_records.fst_wss_action_type :='BALANCE CHANGE';
                                                       --'EARLY FULL REPAYMENT';
                                    END IF;
                                 END IF;
                              END IF;
                           END IF;
                        END IF;
                     END;
                  END;
               ELSE
                  BEGIN
                     /*Calculating portfolio allocation amount for NON ADJUST Transaction id*/
                     BEGIN
                        SELECT   SUM (ocs_amt_amount)
                            INTO var_portfolio_amount
                            FROM vls_ost_cof_shr
                        GROUP BY ocs_rid_outstandng,
                                 ocs_cde_branch,
                                 ocs_cde_expense,
                                 ocs_cde_portfolio,
                                 ocs_pct_rate,
                                 ocs_cde_fundg_type
                          HAVING TRIM (ocs_rid_outstandng) =
                                    var_ref_narrative_records.fst_rid_outstandng
                             AND TRIM (ocs_cde_branch) =
                                      var_ref_narrative_records.fst_cde_branch
                             AND TRIM (ocs_cde_expense) =
                                     var_ref_narrative_records.fst_cde_expense
                             AND TRIM (ocs_cde_portfolio) =
                                    var_ref_narrative_records.fst_cde_portfolio
                             AND TRIM (ocs_pct_rate) =
                                        var_ref_narrative_records.fst_pct_rate
                             AND TRIM (ocs_cde_fundg_type) =
                                    var_ref_narrative_records.fst_cde_fundg_type;
                     EXCEPTION
                        WHEN NO_DATA_FOUND
                        THEN
                           DBMS_OUTPUT.put_line ('Portfolio amount is null');
                        WHEN OTHERS
                        THEN
                           err.report_and_go
                              ('rbsgbl_proc_fund_narrative ',
                                  'Error in OST_TRAN query for NON ADJST tran for balance amount for FST_RID_FUND_REQ: '
                               || var_ref_narrative_records.fst_rid_fund_req,
                               SQLCODE,
                               ''
                              );
                     END;

                     BEGIN
/*Calculating Host bank Share*/
                        SELECT   DECODE
                                    (var_ref_narrative_records.fst_cde_obj_state,
                                     'LWREL', SUM (oss_amt_gross)
                                      + var_ref_narrative_records.fst_amt_fund,
                                     SUM (oss_amt_gross)
                                    )
                            INTO var_host_bank_amount
                            FROM vls_ost_sg_shr
                           WHERE oss_ind_host_bank = 'Y'
                        GROUP BY oss_rid_outstandng
                          HAVING TRIM (oss_rid_outstandng) =
                                    var_ref_narrative_records.fst_rid_outstandng;
                     EXCEPTION
                        WHEN NO_DATA_FOUND
                        THEN
                           DBMS_OUTPUT.put_line ('Host Bank Share is null');
                        WHEN OTHERS
                        THEN
                           err.report_and_go
                              ('rbsgbl_proc_fund_narrative ',
                                  'Error in OST_TRAN query for NON ADJST tran for gross amount for FST_RID_FUND_REQ: '
                               || var_ref_narrative_records.fst_rid_fund_req,
                               SQLCODE,
                               ''
                              );
                     END;

                     BEGIN
                        /* Calculating gross amount for NON ADJUST Transaction id*/
                        SELECT   DECODE
                                    (var_ref_narrative_records.fst_cde_obj_state,
                                     'LWREL', SUM (oss_amt_gross)
                                      + var_ref_narrative_records.fst_amt_tr,
                                     SUM (oss_amt_gross)
                                    )
                            INTO var_global_amount
                            FROM vls_ost_sg_shr
                        GROUP BY oss_rid_outstandng
                          HAVING TRIM (oss_rid_outstandng) =
                                    var_ref_narrative_records.fst_rid_outstandng;
                     EXCEPTION
                        WHEN NO_DATA_FOUND
                        THEN
                           DBMS_OUTPUT.put_line ('Gross amount is null');
                        WHEN OTHERS
                        THEN
                           err.report_and_go
                              ('rbsgbl_proc_fund_narrative ',
                                  'Error in OST_TRAN query for NON ADJST tran for gross amount for FST_RID_FUND_REQ: '
                               || var_ref_narrative_records.fst_rid_fund_req,
                               SQLCODE,
                               ''
                              );
                     END;

                     BEGIN
                        /*Increase Trade for Non Adjst*/
                        IF (   (    var_ref_narrative_records.fst_cde_tr_type IN
                                       ('DEPIN',
                                        'INCR',
                                        'UDPIN',
                                        'UINCR',
                                        'SDPIN',
                                        'SINCR'
                                       )
                                AND TRIM (var_portfolio_allocation) IS NOT NULL
                               )
                            OR (    var_ref_narrative_records.fst_cde_tr_type IN
                                                  ('DEPSA', 'MADJS', 'PLSAD')
                                AND TRIM (var_portfolio_allocation) IS NOT NULL
                                AND var_ref_narrative_records.fst_amt_fund > 0
                               )
                           )
                        THEN
                           var_ref_narrative_records.fst_wss_action_type :=
                                                             'INCREASE TRADE';
                        ELSE
                           /*New Trade Booking for Non Adjst*/
                           IF (   var_ref_narrative_records.fst_cde_tr_type IN
                                     ('DLADJ', 'DPSDR', 'DTLDR', 'ID', 'RCMF')
                               OR (    var_ref_narrative_records.fst_cde_tr_type IN
                                                  ('DQADJ', 'QDRPR', 'QRADJ')
                                   AND var_ref_narrative_records.fst_cde_option <>
                                                                       'FIXLT'
                                  )
                               OR (    var_ref_narrative_records.fst_cde_tr_type =
                                                                       'LRPPY'
                                   AND var_global_amount <= 0
                                   AND var_ref_narrative_records.fst_dte_tr_effective <>
                                          var_ref_narrative_records.fst_dte_effective
                                  )
                               OR (    var_ref_narrative_records.fst_cde_tr_type IN
                                          ('DEPIN',
                                           'INCR',
                                           'UDPIN',
                                           'UINCR',
                                           'SDPIN',
                                           'SINCR'
                                          )
                                   AND (   TRIM (var_portfolio_allocation) IS NULL
                                        OR var_portfolio_allocation = ''
                                       )
                                  )
                               OR (    var_ref_narrative_records.fst_cde_tr_type IN
                                                  ('DEPSA', 'MADJS', 'PLSAD')
                                   AND (   TRIM (var_portfolio_allocation) IS NULL
                                        OR var_portfolio_allocation = ''
                                       )
                                   AND var_ref_narrative_records.fst_amt_fund >
                                                                             0
                                  )
                                OR (
                               var_ref_narrative_records.fst_cde_tr_type = 'MIG'
                               )
                              )
                           THEN
                              var_ref_narrative_records.fst_wss_action_type :=
                                                          'NEW TRADE BOOKING';
                           ELSE
                              /*For 'CANCEL FROM TRADE' as action type for non adjust records */
                              IF (   (    var_ref_narrative_records.fst_cde_tr_type =
                                                                       'DCPMT'
                                      AND var_ref_narrative_records.fst_ind_break_fund =
                                                                           'Y'
                                      AND var_global_amount <= 0
                                      AND var_ref_narrative_records.fst_dte_tr_effective =
                                             var_ref_narrative_records.fst_dte_effective
                                     )
                                  OR (    var_ref_narrative_records.fst_cde_tr_type IN
                                             ('DEPPP',
                                              'LRPPY',
                                              'PPYMT',
                                              'UDPPT',
                                              'UPPMT'
                                             )
                                      AND var_global_amount <= 0
                                      AND var_ref_narrative_records.fst_dte_tr_effective =
                                             var_ref_narrative_records.fst_dte_effective
                                     )
                                  OR (    var_ref_narrative_records.fst_cde_tr_type =
                                                                       'DEPSA'
                                      AND var_host_bank_amount <= 0
                                      AND var_ref_narrative_records.fst_dte_tr_effective =
                                             var_ref_narrative_records.fst_dte_effective
                                     )
                                  OR (    var_ref_narrative_records.fst_cde_tr_type =
                                                                       'MADJS'
                                      AND var_host_bank_amount <= 0
                                      AND var_ref_narrative_records.fst_dte_tr_effective =
                                             var_ref_narrative_records.fst_dte_effective
                                     )
                                  OR (    var_ref_narrative_records.fst_cde_tr_type =
                                                                       'PLSAD'
                                      AND var_portfolio_amount = 0
                                      AND var_ref_narrative_records.fst_dte_tr_effective =
                                             var_ref_narrative_records.fst_dte_effective
                                     )
                                  OR (var_ref_narrative_records.fst_cde_tr_type =
                                                                       'PRDCR'
                                     )
                                 )
                              THEN
                                 var_ref_narrative_records.fst_wss_action_type :=
                                                          'CANCEL FROM TRADE';
                              ELSE
                                 /*For 'EARLY FULL REPAYMENT' as action type for non adjust records */
                                 IF (   (    var_ref_narrative_records.fst_cde_tr_type =
                                                                       'DCPMT'
                                         AND var_ref_narrative_records.fst_ind_break_fund =
                                                                           'Y'
                                         AND var_global_amount <= 0
                                         AND var_ref_narrative_records.fst_dte_tr_effective <>
                                                var_ref_narrative_records.fst_dte_effective
                                        )
                                     OR (    var_ref_narrative_records.fst_cde_tr_type IN
                                                ('DEPPP',
                                                 'PPYMT',
                                                 'UDPPT',
                                                 'UPPMT'
                                                )
                                         AND var_global_amount <= 0
                                         AND var_ref_narrative_records.fst_dte_tr_effective <>
                                                var_ref_narrative_records.fst_dte_effective
                                        )
                                     OR (    var_ref_narrative_records.fst_cde_tr_type IN
                                                           ('DEPSA', 'MADJS')
                                         AND var_host_bank_amount <= 0
                                         AND var_ref_narrative_records.fst_dte_tr_effective <>
                                                var_ref_narrative_records.fst_dte_effective
                                        )
                                     OR (    var_ref_narrative_records.fst_cde_tr_type =
                                                                       'PLSAD'
                                         AND var_portfolio_amount <= 0
                                         AND var_ref_narrative_records.fst_dte_tr_effective <>
                                                var_ref_narrative_records.fst_dte_effective
                                        )
                                     OR (var_ref_narrative_records.fst_cde_tr_type =
                                                                       'PRDCR'
                                        )
                                    )
                                 THEN
                                    var_ref_narrative_records.fst_wss_action_type :=
                                                       'EARLY FULL REPAYMENT';
                                 ELSE
                                    /*For 'PART REPAYMENT' as action type for non adjust records */
                                    IF (   (    var_ref_narrative_records.fst_cde_tr_type =
                                                                       'DCPMT'
                                            AND var_ref_narrative_records.fst_ind_break_fund =
                                                                           'Y'
                                            AND var_global_amount > 0
                                           )
                                        OR (    var_ref_narrative_records.fst_cde_tr_type IN
                                                   ('DEPPP',
                                                    'PPYMT',
                                                    'UDPPT',
                                                    'UPPMT'
                                                   )
                                            AND var_global_amount > 0
                                           )
                                        OR (    var_ref_narrative_records.fst_cde_tr_type IN
                                                           ('DEPSA', 'MADJS')
                                            AND var_host_bank_amount > 0
                                           )
                                        OR (    var_ref_narrative_records.fst_cde_tr_type =
                                                                       'PLSAD'
                                            AND var_portfolio_amount > 0
                                           )
                                       )
                                    THEN
                                       var_ref_narrative_records.fst_wss_action_type :=
                                                             'BALANCE CHANGE'; --'PART REPAYMENT';
                                    ELSE
                                       /*For 'SCHEDULED INCREASE' as action type for non adjust records */
                                       IF (var_ref_narrative_records.fst_cde_tr_type IN
                                                           ('SDPPT', 'SPPMT')
                                          )
                                       THEN
                                          var_ref_narrative_records.fst_wss_action_type :=
                                                         'SCHEDULED DECREASE';
                                       ELSE
                                          IF (    var_ref_narrative_records.fst_cde_tr_type =
                                                                       'LRPPY'
                                              AND var_global_amount > 0
                                              AND var_ref_narrative_records.fst_dte_tr_effective <>
                                                     var_ref_narrative_records.fst_dte_effective
                                             )
                                          THEN
                                             var_ref_narrative_records.fst_wss_action_type :=
                                                     'BALANCE CHANGE'; --'REVERSE PART REPAYMENT';
                                          ELSE
                                             IF ((    var_ref_narrative_records.fst_cde_tr_type IN
                                                         ('DQADJ',
                                                          'QDRPR',
                                                          'QRADJ'
                                                         )
                                                  AND var_ref_narrative_records.fst_cde_option =
                                                                       'FIXLT'
                                                 )
                                                )
                                             THEN
                                                var_ref_narrative_records.fst_wss_action_type :=
                                                        'INTEREST SETTLEMENT';
                                             END IF;
                                          END IF;
                                       END IF;
                                    END IF;
                                 END IF;
                              END IF;
                           END IF;
                        END IF;
                     END;
                  END;
               END IF;
            ELSE
               /* For NON OST TRAN*/
               BEGIN
                  IF (var_ref_narrative_records.fst_cde_txn_class =
                                                                'NON_OST_TRAN'
                     )
                  THEN
                     var_ref_narrative_records.fst_wss_action_type :=
                                                        'LOAN DETAILS CHANGE';
                  ELSE
                     /*For ACR PMT TRAN*/
                     IF (var_ref_narrative_records.fst_cde_txn_class =
                                                                'ACR_PMT_TRAN'
                        )
                     THEN
                        var_ref_narrative_records.fst_wss_action_type :=
                                                   'ACCRUED INTEREST PAYMENT';
                     END IF;
                  END IF;
               END;
            END IF;

/*Updating table with fst_wss_action_type calculated from above calculation*/
            BEGIN
               UPDATE rbsgbl_funding_stage
                  SET fst_wss_action_type =
                         DECODE
                               (var_ref_narrative_records.fst_cde_obj_state,
                                'CNCLD', 'REVERSE '
                                 || var_ref_narrative_records.fst_wss_action_type,
                                'CNPRM', 'REVERSE '
                                 || var_ref_narrative_records.fst_wss_action_type,
                                var_ref_narrative_records.fst_wss_action_type
                               )
                WHERE fst_rid_fund_req =
                                    var_ref_narrative_records.fst_rid_fund_req;
            EXCEPTION
               WHEN OTHERS
               THEN
                  err.report_and_go
                     ('rbsgbl_proc_fund_narrative ',
                         'Error in updating fst_wss_action_type in RBSGBL_FUNDING_STAGE table for FST_RID_FUND_REQ: '
                      || var_ref_narrative_records.fst_rid_fund_req,
                      SQLCODE,
                      ''
                     );
            END;

/*Updating FST_WSS_STUB_REF*/
            IF (    var_ref_narrative_records.fst_wss_action_type =
                                                           'NEW TRADE BOOKING'
                AND var_ref_narrative_records.fst_cde_obj_state = 'RELSD'
               )
            THEN
/*FST_WSS_STUB_REF for Portfolio Transfers*/
               IF (    var_ref_narrative_records.fst_cde_tr_type = 'ADJST'
                   AND TRIM (var_ref_narrative_records.fst_iid_inv_id) IS NULL
                   AND SIGN (var_ref_narrative_records.fst_amt_fund) = 1
                  )
               THEN
                  BEGIN
                     UPDATE rbsgbl_funding_stage
                        SET fst_wss_stub_ref =
                               (SELECT bpt_wss_ext_trade_id
                                  FROM (SELECT vls_ost_tran.otr_rid_ost_tran,
                                               otc_cde_branch,
                                               otc_cde_expense,
                                               otc_cde_portfolio,
                                               otc_pct_rate,
                                               otr_rid_outstandng
                                          FROM vls_ost_tran LEFT OUTER JOIN vls_ost_tr_cof_shr
                                               ON otr_rid_ost_tran =
                                                              otc_rid_ost_tran
                                         WHERE TRIM (otr_rid_ost_tran) =
                                                  TRIM
                                                     (var_ref_narrative_records.fst_rid_tran
                                                     )
                                           AND TRIM (otc_rid_ost_tr_cof) <>
                                                  TRIM
                                                     (var_ref_narrative_records.fst_txn_cof_rid
                                                     )) otc,
                                       rbsgbl_baseline_portfolio
                                 WHERE TRIM (bpt_rid_outstandng) =
                                          TRIM
                                             (var_ref_narrative_records.fst_rid_outstandng
                                             )
                                   AND TRIM (bpt_cde_branch) =
                                                         TRIM (otc_cde_branch)
                                   AND TRIM (bpt_cde_expense) =
                                                        TRIM (otc_cde_expense)
                                   AND TRIM (bpt_cde_portfolio) =
                                                      TRIM (otc_cde_portfolio)
                                   AND TRIM (bpt_pct_rate) =
                                                           TRIM (otc_pct_rate)
                                   AND bpt_dte_cycle_strt =
                                          var_ref_narrative_records.fst_dte_effective
                                   AND bpt_dte_cycle_end =
                                          var_ref_narrative_records.fst_dte_cycle_end
                                   AND (   TRIM (bpt_ind_settle) IS NULL
                                        OR (    TRIM (bpt_ind_settle) IS NOT NULL
                                            AND bpt_ind_settle <> 'Y'
                                           )
                                       ))
                      WHERE fst_rid_fund_req =
                                    var_ref_narrative_records.fst_rid_fund_req;
                  EXCEPTION
                     WHEN OTHERS
                     THEN
                        err.report_and_go
                           ('rbsgbl_proc_fund_narrative ',
                               'Error in updating fst_wss_stub_ref(Portfolio Transfers) in RBSGBL_FUNDING_STAGE table for FST_RID_FUND_REQ: '
                            || var_ref_narrative_records.fst_rid_fund_req,
                            SQLCODE,
                            ''
                           );
                  END;
               ELSE
/*FST_WSS_STUB_REF for Internal Circles*/
                  IF (    var_ref_narrative_records.fst_cde_tr_type = 'ADJST'
                      AND TRIM (var_ref_narrative_records.fst_iid_inv_id) IS NOT NULL
                      AND var_ref_narrative_records.fst_cde_ide_trans_type =
                                                                         'BUY'
                     )
                  THEN
                     BEGIN
                        UPDATE rbsgbl_funding_stage
                           SET fst_wss_stub_ref =
                                  (SELECT     LTRIM
                                                 (MAX
                                                     (SYS_CONNECT_BY_PATH
                                                         (bpt_wss_ext_trade_id,
                                                          '|'
                                                         )
                                                     ),
                                                  '|'
                                                 )
                                         FROM (SELECT bpt_wss_ext_trade_id,
                                                      bpt_rid_outstandng,
                                                      ROWNUM rownumber
                                                 FROM (SELECT *
                                                         FROM vls_inv_deal LEFT OUTER JOIN vls_fac_commit_trn
                                                              ON ide_iid_contra_inv =
                                                                   ftr_iid_inv_id
                                                              LEFT OUTER JOIN vls_ost_tran
                                                              ON ftr_rid_commit_trn =
                                                                   otr_rid_commit_trn
                                                              LEFT OUTER JOIN vls_ost_tr_cof_shr
                                                              ON otr_rid_ost_tran =
                                                                   otc_rid_ost_tran
                                                              LEFT OUTER JOIN vls_ost_cof_shr
                                                              ON otr_rid_outstandng =
                                                                   ocs_rid_outstandng
                                                            AND otc_cde_branch =
                                                                   ocs_cde_branch
                                                            AND otc_cde_expense =
                                                                   ocs_cde_expense
                                                            AND otc_cde_portfolio =
                                                                   ocs_cde_portfolio
                                                            AND otc_pct_rate =
                                                                   ocs_pct_rate
                                                            AND ocs_cde_fundg_type =
                                                                          'MF'
                                                        WHERE TRIM
                                                                 (ide_iid_inv_id
                                                                 ) =
                                                                 var_ref_narrative_records.fst_iid_inv_id
                                                          AND otc_amt_amount <
                                                                             0
                                                          AND (   TRIM
                                                                     (ocs_amt_amount
                                                                     ) IS NULL
                                                               OR ocs_amt_amount <=
                                                                             0
                                                              )) circle,
                                                      rbsgbl_baseline_portfolio
                                                WHERE TRIM (bpt_rid_outstandng) =
                                                         TRIM
                                                            (var_ref_narrative_records.fst_rid_outstandng
                                                            )
                                                  AND TRIM (bpt_cde_branch) =
                                                         TRIM (otc_cde_branch)
                                                  AND TRIM (bpt_cde_expense) =
                                                         TRIM (otc_cde_expense)
                                                  AND TRIM (bpt_cde_portfolio) =
                                                         TRIM
                                                            (otc_cde_portfolio)
                                                  AND TRIM (bpt_pct_rate) =
                                                           TRIM (otc_pct_rate)
                                                  AND bpt_dte_cycle_end =
                                                         var_ref_narrative_records.fst_dte_cycle_end
                                                  AND bpt_rid_tran =
                                                         var_ref_narrative_records.fst_rid_link_tran
                                                  AND (   TRIM (bpt_ind_settle) IS NULL
                                                       OR (    TRIM
                                                                  (bpt_ind_settle
                                                                  ) IS NOT NULL
                                                           AND bpt_ind_settle <>
                                                                           'Y'
                                                          )
                                                      ))
                                   START WITH rownumber = 1
                                   CONNECT BY PRIOR bpt_rid_outstandng =
                                                            bpt_rid_outstandng
                                          AND PRIOR rownumber = rownumber - 1)
                         WHERE fst_rid_fund_req =
                                    var_ref_narrative_records.fst_rid_fund_req;
                     EXCEPTION
                        WHEN OTHERS
                        THEN
                           err.report_and_go
                              ('rbsgbl_proc_fund_narrative ',
                                  'Error in updating fst_wss_stub_ref(Internal Circles) in RBSGBL_FUNDING_STAGE table for FST_RID_FUND_REQ: '
                               || var_ref_narrative_records.fst_rid_fund_req,
                               SQLCODE,
                               ''
                              );
                     END;
                  ELSE
                     /*FST_WSS_STUB_REF for Loan Reverse Principal Payment*/
                     IF (var_ref_narrative_records.fst_cde_tr_type = 'LRPPY'
                        )
                     THEN
                        BEGIN
                           UPDATE rbsgbl_funding_stage
                              SET fst_wss_stub_ref =
                                     (SELECT bpt_wss_ext_trade_id
                                        FROM rbsgbl_baseline_portfolio
                                       WHERE bpt_rid_outstandng =
                                                var_ref_narrative_records.fst_rid_outstandng
                                         AND bpt_cde_branch =
                                                var_ref_narrative_records.fst_cde_branch
                                         AND bpt_cde_expense =
                                                var_ref_narrative_records.fst_cde_expense
                                         AND bpt_cde_portfolio =
                                                var_ref_narrative_records.fst_cde_portfolio
                                         AND bpt_pct_rate =
                                                var_ref_narrative_records.fst_pct_rate
                                         AND bpt_dte_cycle_strt =
                                                var_ref_narrative_records.fst_dte_effective
                                         AND bpt_dte_cycle_end =
                                                var_ref_narrative_records.fst_dte_cycle_end
                                         --AND bpt_rid_tran =
                                           --     var_ref_narrative_records.fst_rid_link_tran
                                         AND (   TRIM (bpt_ind_settle) IS NULL
                                              OR (    TRIM (bpt_ind_settle) IS NOT NULL
                                                  AND bpt_ind_settle <> 'Y'
                                                 )
                                             ))
                            WHERE fst_rid_fund_req =
                                     var_ref_narrative_records.fst_rid_fund_req;
                        EXCEPTION
                           WHEN OTHERS
                           THEN
                              err.report_and_go
                                 ('rbsgbl_proc_fund_narrative ',
                                     'Error in updating fst_wss_stub_ref(Loan Reverse Principal Payment) in RBSGBL_FUNDING_STAGE table for FST_RID_FUND_REQ: '
                                  || var_ref_narrative_records.fst_rid_fund_req,
                                  SQLCODE,
                                  ''
                                 );
                        END;
                     END IF;
                  END IF;
               END IF;
            END IF;
         END;
      END IF;



      /*Loading var_ind_compute_int on the base of FST_WSS_ACTION_TYPE*/
      /*
      IF (var_ref_narrative_records.fst_wss_action_type IN
             ('EARLY FULL REPAYMENT',
              'PART REPAYMENT',
              'REVERSE PART REPAYMENT',
              'SCHEDULED DECREASE'
             )
         )
      THEN
         var_ind_compute_int := 'Y';
      END IF;

      IF (    var_ind_compute_int = 'Y'
          AND var_ref_narrative_records.fst_cde_obj_state = 'RELSD'
          AND var_mig_flag = 'N'
          AND (   TRIM (var_ref_narrative_records.fst_amt_interest) IS NULL
               OR var_ref_narrative_records.fst_amt_interest = ''
               OR var_ref_narrative_records.fst_amt_interest = 0
              )
         )
      THEN

         IF (    var_ref_narrative_records.fst_cde_tr_type = 'ADJST'
             AND var_ref_narrative_records.fst_cde_fac_txn_type = 'CPXFR'
             AND TRIM (var_portfolio_allocation) IS NOT NULL
             AND SIGN (var_ref_narrative_records.fst_amt_fund) = -1

            )
         THEN
            BEGIN
               SELECT gle_amt_entry
                 INTO var_int_amt
                 FROM vls_fac_commit_trn LEFT OUTER JOIN vls_port_allocat
                      ON ftr_rid_commit_trn = por_rid_fac_tran
                      LEFT OUTER JOIN vls_ost_tran
                      ON ftr_rid_commit_trn = otr_rid_commit_trn
                      LEFT OUTER JOIN vls_ost_tr_cof_shr
                      ON otr_rid_ost_tran = otc_rid_ost_tran
                    AND por_cde_branch = otc_cde_branch
                    AND por_cde_expense = otc_cde_expense
                    AND por_cde_portfolio = otc_cde_portfolio
                      INNER JOIN vls_gl_entry
                      ON ftr_rid_commit_trn = gle_rid_owner
                    AND por_cde_branch = gle_cde_branch
                    AND por_cde_expense = gle_cde_expense
                    AND por_cde_portfolio = gle_cde_portfolio
                    AND otc_pct_rate = gle_pct_mfcof_rte
                    AND gle_cde_gl_account = 'ACOFP'
                    AND gle_cde_acctg_oper = 'DR'

               WHERE  TRIM (otc_cde_branch) =
                               TRIM (var_ref_narrative_records.fst_cde_branch)
                  AND TRIM (otc_cde_expense) =
                              TRIM (var_ref_narrative_records.fst_cde_expense)
                  AND TRIM (otc_cde_portfolio) =
                            TRIM (var_ref_narrative_records.fst_cde_portfolio)
                  AND TRIM (gle_pct_mfcof_rte) =
                                 TRIM (var_ref_narrative_records.fst_pct_rate)
                  AND TRIM (otr_rid_ost_tran) =
                                 TRIM (var_ref_narrative_records.fst_rid_tran)
                  AND TRIM (gle_cde_currency) =
                             TRIM (var_ref_narrative_records.fst_cde_currency);
            EXCEPTION
               WHEN NO_DATA_FOUND
               THEN
                  DBMS_OUTPUT.put_line ('Interest amount is null');
               WHEN OTHERS
               THEN
                  err.report_and_go
                     ('rbsgbl_proc_fund_narrative ',
                         'Error in calculating fst_amt_interest(portfolio transfers) in RBSGBL_FUNDING_STAGE table for FST_RID_FUND_REQ: '
                      || var_ref_narrative_records.fst_rid_fund_req,
                      SQLCODE,
                      ''
                     );
            END;
         ELSE

            IF (    var_ref_narrative_records.fst_cde_tr_type <> 'ADJST'
                AND (   var_ref_narrative_records.fst_cde_fac_txn_type <>
                                                                       'LRPPY'
                     OR TRIM (var_ref_narrative_records.fst_cde_fac_txn_type) IS NULL
                    )
                AND TRIM (var_portfolio_allocation) IS NOT NULL
                AND var_ref_narrative_records.fst_ind_break_fund = 'Y'
               )
            THEN
               BEGIN
                  SELECT gle_amt_entry
                    INTO var_int_amt
                    FROM vls_ost_tran LEFT OUTER JOIN vls_ost_tr_cof_shr
                         ON otr_rid_ost_tran = otc_rid_ost_tran
                         INNER JOIN vls_gl_entry
                         ON otr_rid_ost_tran = gle_rid_owner
                       AND otc_cde_branch = gle_cde_branch
                       AND otc_cde_expense = gle_cde_expense
                       AND otc_cde_portfolio = gle_cde_portfolio
                       AND otc_pct_rate = gle_pct_mfcof_rte
                       AND gle_cde_gl_account = 'ACOFP'
                       AND gle_cde_acctg_oper = 'DR'

                  WHERE  TRIM (otc_cde_branch) =
                               TRIM (var_ref_narrative_records.fst_cde_branch)
                     AND TRIM (otc_cde_expense) =
                              TRIM (var_ref_narrative_records.fst_cde_expense)
                     AND TRIM (otc_cde_portfolio) =
                            TRIM (var_ref_narrative_records.fst_cde_portfolio)
                     AND TRIM (gle_pct_mfcof_rte) =
                                 TRIM (var_ref_narrative_records.fst_pct_rate)
                     AND TRIM (otr_rid_ost_tran) =
                                 TRIM (var_ref_narrative_records.fst_rid_tran)
                     AND TRIM (gle_cde_currency) =
                             TRIM (var_ref_narrative_records.fst_cde_currency);
               EXCEPTION
                  WHEN NO_DATA_FOUND
                  THEN
                     DBMS_OUTPUT.put_line ('Interest amount is null');
                  WHEN OTHERS
                  THEN
                     err.report_and_go
                        ('rbsgbl_proc_fund_narrative ',
                            'Error in calculating fst_amt_interest(outstanding transactions) in RBSGBL_FUNDING_STAGE table for FST_RID_FUND_REQ: '
                         || var_ref_narrative_records.fst_rid_fund_req,
                         SQLCODE,
                         ''
                        );
               END;
            ELSE

               IF (    var_ref_narrative_records.fst_cde_fac_txn_type =
                                                                       'LRPPY'
                   AND TRIM (var_portfolio_allocation) IS NOT NULL
                   AND var_ref_narrative_records.fst_ind_break_fund = 'Y'
                  )
               THEN
                  BEGIN
                     SELECT (gle_amt_entry * -1)
                       INTO var_int_amt
                       FROM vls_ost_tran LEFT OUTER JOIN vls_ost_tr_cof_shr
                            ON otr_rid_ost_tran = otc_rid_ost_tran
                            INNER JOIN vls_gl_entry
                            ON otr_rid_ost_tran = gle_rid_owner
                          AND otc_cde_branch = gle_cde_branch
                          AND otc_cde_expense = gle_cde_expense
                          AND otc_cde_portfolio = gle_cde_portfolio
                          AND otc_pct_rate = gle_pct_mfcof_rte
                          AND gle_cde_gl_account = 'ACOFP'
                          AND gle_cde_acctg_oper = 'DR'

                     WHERE  TRIM (otc_cde_branch) =
                               TRIM (var_ref_narrative_records.fst_cde_branch)
                        AND TRIM (otc_cde_expense) =
                               TRIM (var_ref_narrative_records.fst_cde_expense)
                        AND TRIM (otc_cde_portfolio) =
                               TRIM
                                  (var_ref_narrative_records.fst_cde_portfolio)
                        AND TRIM (gle_pct_mfcof_rte) =
                                 TRIM (var_ref_narrative_records.fst_pct_rate)
                        AND TRIM (otr_rid_ost_tran) =
                                 TRIM (var_ref_narrative_records.fst_rid_tran)
                        AND TRIM (gle_cde_currency) =
                               TRIM
                                   (var_ref_narrative_records.fst_cde_currency);
                  EXCEPTION
                     WHEN NO_DATA_FOUND
                     THEN
                        DBMS_OUTPUT.put_line ('Interest amount is null');
                     WHEN OTHERS
                     THEN
                        err.report_and_go
                           ('rbsgbl_proc_fund_narrative ',
                               'Error in calculating fst_amt_interest(loan reverse principal payment) in RBSGBL_FUNDING_STAGE table for FST_RID_FUND_REQ: '
                            || var_ref_narrative_records.fst_rid_fund_req,
                            SQLCODE,
                            ''
                           );
                  END;
               ELSE
                  IF (    var_ref_narrative_records.fst_cde_tr_type = 'ADJST'

                      AND var_ref_narrative_records.fst_amt_fund <0
                      AND TRIM (var_portfolio_allocation) IS NOT NULL

                     )
                  THEN
                     BEGIN
                        SELECT gle_amt_entry
                          INTO var_int_amt
                          FROM vls_inv_deal INNER JOIN vls_fac_commit_trn
                               ON (ide_iid_inv_id = ftr_iid_inv_id
                               OR IDE_IID_CONTRA_INV = FTR_IID_INV_ID)
                             AND ide_cde_buy_sell = 'SELL'
                             AND TRIM (ide_dte_close) IS NOT NULL
                               LEFT OUTER JOIN vls_port_allocat
                               ON ftr_rid_commit_trn = por_rid_fac_tran
                               INNER JOIN vls_ost_tran
                               ON ftr_rid_commit_trn = otr_rid_commit_trn
                               LEFT OUTER JOIN vls_ost_tr_cof_shr
                               ON otr_rid_ost_tran = otc_rid_ost_tran
                             AND por_cde_branch = otc_cde_branch
                             AND por_cde_expense = otc_cde_expense
                             AND por_cde_portfolio = otc_cde_portfolio
                               INNER JOIN vls_gl_entry
                               ON ide_iid_inv_id = gle_rid_owner
                             AND otc_cde_branch = gle_cde_branch
                             AND otc_cde_expense = gle_cde_expense
                             AND otc_cde_portfolio = gle_cde_portfolio
                             AND otc_pct_rate = gle_pct_mfcof_rte
                             AND gle_cde_gl_account = 'ACOFP'
                             AND gle_cde_acctg_oper = 'DR'

                        WHERE  TRIM (otc_cde_branch) =
                                  TRIM
                                     (var_ref_narrative_records.fst_cde_branch)
                           AND TRIM (otc_cde_expense) =
                                  TRIM
                                     (var_ref_narrative_records.fst_cde_expense
                                     )
                           AND TRIM (otc_cde_portfolio) =
                                  TRIM
                                     (var_ref_narrative_records.fst_cde_portfolio
                                     )
                           AND TRIM (gle_pct_mfcof_rte) =
                                  TRIM (var_ref_narrative_records.fst_pct_rate)
                           AND TRIM (otr_rid_ost_tran) =
                                  TRIM (var_ref_narrative_records.fst_rid_tran)
                           AND TRIM (gle_cde_currency) =
                                  TRIM
                                     (var_ref_narrative_records.fst_cde_currency
                                     );
                     EXCEPTION
                        WHEN OTHERS
                        THEN
                           err.report_and_go
                              ('rbsgbl_proc_fund_narrative ',
                                  'Error in calculating fst_amt_interest(circle) in RBSGBL_FUNDING_STAGE table for FST_RID_FUND_REQ: '
                               || var_ref_narrative_records.fst_rid_fund_req,
                               SQLCODE,
                               ''
                              );
                     END;
                  END IF;
               END IF;
            END IF;
         END IF;
      END IF;
*/

      IF (    var_mig_flag != 'Y'
          AND (TRIM (var_int_amt) IS NOT NULL OR var_int_amt != '')
          AND (   TRIM (var_ref_narrative_records.fst_amt_interest) IS NULL
               OR var_ref_narrative_records.fst_amt_interest = ''
               OR var_ref_narrative_records.fst_amt_interest = 0
              )
          AND var_ref_narrative_records.fst_cde_amend_status <> 'ACCEPTED'
         )
      THEN
         BEGIN
            UPDATE rbsgbl_funding_stage
               SET fst_amt_interest = var_int_amt
             WHERE fst_rid_fund_req =
                                    var_ref_narrative_records.fst_rid_fund_req;
         EXCEPTION
            WHEN OTHERS
            THEN
               err.report_and_go
                  ('rbsgbl_proc_fund_narrative ',
                      'Error while updating fst_amt_interest in RBSGBL_FUNDING_STAGE table for FST_RID_FUND_REQ: '
                   || var_ref_narrative_records.fst_rid_fund_req,
                   SQLCODE,
                   ''
                  );
         END;
      ELSE
         IF (    var_mig_flag != 'Y'
             AND (   TRIM (var_ref_narrative_records.fst_amt_interest) IS NULL
                  OR var_ref_narrative_records.fst_amt_interest = ''
                  OR var_ref_narrative_records.fst_amt_interest = 0
                 )
             AND var_ref_narrative_records.fst_cde_amend_status = 'ACCEPTED'
            )
         THEN
            BEGIN
               UPDATE rbsgbl_funding_stage
                  SET fst_amt_interest = var_int_amt,
                      fst_cde_amend_status =
                         DECODE
                            (var_int_amt,
                             0, TRIM
                                (var_ref_narrative_records.fst_cde_amend_status
                                ),
                             NULL, var_ref_narrative_records.fst_cde_amend_status,
                             'PENDING'
                            ),
                      fst_ind_aq_msg_process = 'Y',
                      fst_dte_business =
                         DECODE
                            (var_int_amt,
                             0, TRIM
                                   (var_ref_narrative_records.fst_dte_business),
                             NULL, var_ref_narrative_records.fst_dte_business,
                             (SELECT TO_DATE (bdt_dte_business)
                                FROM vrp_bus_dates, vls_branch
                               WHERE brn_cde_tme_region = bdt_cde_tme_region
                                 AND brn_cde_branch =
                                        var_ref_narrative_records.fst_cde_branch
                                 AND TRIM (bdt_txt_type) =
                                                       'Current Business Date')
                            )
                WHERE fst_rid_fund_req =
                                    var_ref_narrative_records.fst_rid_fund_req;
            EXCEPTION
               WHEN OTHERS
               THEN
                  err.report_and_go
                     ('rbsgbl_proc_fund_narrative ',
                         'Error while updating accepted records for Int Amt in RBSGBL_FUNDING_STAGE table for FST_RID_FUND_REQ: '
                      || var_ref_narrative_records.fst_rid_fund_req,
                      SQLCODE,
                      ''
                     );
            END;
         END IF;
      END IF;


/*Updating rbsgbl_baseline_portfolio table depending on narrative definition*/
      BEGIN
         UPDATE rbsgbl_baseline_portfolio
            SET --bpt_rid_tran = var_ref_narrative_records.fst_rid_tran,
                bpt_amt_settle =
                     NVL (bpt_amt_settle, 0)
                   + DECODE (var_ref_narrative_records.fst_cde_obj_state,
                             'RELSD', var_int_amt,
                             0
                            ),
                bpt_ind_settle =
                   DECODE (var_ref_narrative_records.fst_wss_action_type,
                           'EARLY FULL REPAYMENT', 'Y',
                           'PART REPAYMENT', 'N'
                          )
          WHERE bpt_rid_outstandng =
                                  var_ref_narrative_records.fst_rid_outstandng
            AND bpt_cde_branch = var_ref_narrative_records.fst_cde_branch
            AND bpt_cde_expense = var_ref_narrative_records.fst_cde_expense
            AND bpt_cde_portfolio =
                                   var_ref_narrative_records.fst_cde_portfolio
            AND bpt_pct_rate = var_ref_narrative_records.fst_pct_rate
            AND bpt_dte_cycle_strt =
                                   var_ref_narrative_records.fst_dte_effective
            AND bpt_dte_cycle_end =
                                   var_ref_narrative_records.fst_dte_cycle_end
            AND TRIM (bpt_wss_map_ref) =
                                     var_ref_narrative_records.fst_wss_map_ref;
      EXCEPTION
         WHEN OTHERS
         THEN
            err.report_and_go
               ('rbsgbl_proc_fund_narrative ',
                   'Error while updating rbsgbl_baseline_portfolio for BPT_RID_FUND_REQ: '
                || var_ref_narrative_records.fst_rid_fund_req,
                SQLCODE,
                ''
               );
      END;

      COMMIT;
   END LOOP;
END;
/