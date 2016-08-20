/* Formatted on 2008/11/15 19:31 (Formatter Plus v4.8.8) */
CREATE OR REPLACE PROCEDURE "RBSGBL_PROC_FUND_DEALER_LIST"
IS
   var_fst_rid_fund_req         rbsgbl_funding_stage.fst_rid_fund_req%TYPE;
   var_rate_fix_date            rbsgbl_funding_stage.fst_dte_effective%TYPE;
   var_lead_days                NUMBER;
   var_day                      VARCHAR2 (10);
   var_calc_days                NUMBER;
   var_calc_date                DATE;
   var_ind_valid_buss_day       CHAR (1);
   var_holiday_y_n              vls_hol_cal_dates.hcd_dte_hol_cal%TYPE;
   var_branch_holiday_code      vls_branch.brn_cde_hol_cal%TYPE;
   var_curr_business_date       DATE;
   var_calc_rate_fix_date       DATE;
   var_calc_rate_fix_days       NUMBER;
   var_rate_fix_lead_days       NUMBER;
   var_rate_fix_day             VARCHAR2 (10);
   var_rate_fix_ind_buss_day    CHAR (1);
   var_rate_fix_holiday_y_n     vls_hol_cal_dates.hcd_dte_hol_cal%TYPE;
   var_end_date                 DATE;
   var_end_day                  VARCHAR2 (10);
   var_end_holiday_y_n          vls_hol_cal_dates.hcd_dte_hol_cal%TYPE;
   var_end_ind_valid_buss_day   CHAR (1);
   var_ind_end_date             CHAR (1);
   var_fst_rid_outstandng       rbsgbl_funding_stage.fst_rid_outstandng%TYPE;

   CURSOR cur_dealer_list
   IS
      (SELECT DISTINCT rbsgbl_funding_stage.fst_rid_fund_req,
                       TO_DATE (fst_dte_effective) rate_fix_date,
                       TO_NUMBER
                              (rbsgbl_static_details.static_value_3)
                                                                   lead_days,
                       brn_cde_hol_cal branch_holiday_code,
                       business_date.curr_business_date curr_business_date,
                       gb2_rto_optional rate_setting_date_lead_days,
                       fst_dte_tr_effective, fst_rid_outstandng
                  FROM rbsgbl_funding_stage,
                       vls_transit_event,
                       rbsgbl_static_details,
                       vls_branch,
                       vls_fam_global2,
                       (SELECT DISTINCT TO_DATE
                                           (env_txt_var_value,
                                            'MM-DD-YYYY'
                                           ) curr_business_date,
                                        brn_cde_branch
                                   FROM vls_branch, vls_environment
                                  WHERE vls_branch.brn_cde_tme_region =
                                             vls_environment.env_nme_var_class
                                    AND vls_environment.env_nme_var_name =
                                                       'Current Business Date') business_date
                 WHERE vls_branch.brn_cde_branch = fst_cde_branch
                   AND fst_ind_dealer_list = 'Y'
                   AND rbsgbl_funding_stage.fst_cde_obj_state IN
                                          ('AWRA', 'AWSRA', 'LWREL', 'RELSD')
                   AND vls_transit_event.tre_rid_object =
                                             rbsgbl_funding_stage.fst_rid_tran
                   AND gb2_tid_table_id = 'PON'
                   AND gb2_cde_code = fst_cde_option
                   AND vls_transit_event.tre_cde_obj_typ = 'OTR'
                   AND vls_transit_event.tre_cde_action = 'LSRAT'
                   AND rbsgbl_static_details.static_type_id = 'FND02'
                   AND TRIM (rbsgbl_static_details.key_value_1) =
                                           rbsgbl_funding_stage.fst_cde_branch
                   AND TRIM (rbsgbl_static_details.key_value_2) =
                                         rbsgbl_funding_stage.fst_cde_currency
                   AND (rbsgbl_funding_stage.fst_dte_tr_effective + 1) >=
                                              business_date.curr_business_date
                   AND fst_cde_branch = business_date.brn_cde_branch);
BEGIN
   BEGIN
      UPDATE rbsgbl_funding_stage
         SET fst_ind_curr_dealer_list = 'N';
   EXCEPTION
      WHEN OTHERS
      THEN
         err.report_and_go
            ('rbsgbl_proc_dealer_list ',
             'Error while updating FST_IND_CURR_DEALER_LIST as N in RBSGBL_FUNDING_STAGE',
             SQLCODE,
             NULL
            );
   END;

   BEGIN
      OPEN cur_dealer_list;

      LOOP
         FETCH cur_dealer_list
          INTO var_fst_rid_fund_req, var_rate_fix_date, var_lead_days,
               var_branch_holiday_code, var_curr_business_date,
               var_rate_fix_lead_days, var_end_date, var_fst_rid_outstandng;

         EXIT WHEN cur_dealer_list%NOTFOUND;
         var_calc_rate_fix_date := var_rate_fix_date;
         var_calc_rate_fix_days := var_rate_fix_lead_days;

/*Loop added for calculation of rate fix date prior for TD1221*/
        /*If clause added for TD1348*/
         IF (var_calc_rate_fix_days > 0)
         THEN
            LOOP
               var_calc_rate_fix_date := var_calc_rate_fix_date - 1;
               var_rate_fix_day := TO_CHAR (var_calc_rate_fix_date, 'DAY');
               var_rate_fix_holiday_y_n := '';
               var_rate_fix_ind_buss_day := 'Y';

               BEGIN
                  SELECT DISTINCT hcd_dte_hol_cal
                             INTO var_rate_fix_holiday_y_n
                             FROM vls_hol_cal_dates, vls_prod_calendar
                            WHERE vls_prod_calendar.phc_cde_calendar =
                                             vls_hol_cal_dates.hcd_cde_hol_cal
                              AND hcd_ind_active = 'Y'
                              AND TRIM (phc_cde_owner_type) = 'OST'
                              AND TRIM (phc_rid_owner) =
                                                 TRIM (var_fst_rid_outstandng)
                              AND TRIM (phc_cde_calendar) =
                                                TRIM (var_branch_holiday_code)
                              AND vls_hol_cal_dates.hcd_dte_hol_cal =
                                                        var_calc_rate_fix_date;
               EXCEPTION
                  WHEN NO_DATA_FOUND
                  THEN
                     DBMS_OUTPUT.put_line ('NO DATA FOUND');
                  WHEN OTHERS
                  THEN
                     err.report_and_go
                        ('rbsgbl_proc_dealer_list ',
                            'Error in Hoilday date and day retrieval for rate fix date query for FST_RID_FUND_REQ '
                         || var_fst_rid_fund_req,
                         SQLCODE,
                         NULL
                        );
               END;

               IF (var_rate_fix_holiday_y_n IS NOT NULL)
               THEN
                  var_calc_rate_fix_days := var_calc_rate_fix_days;
               ELSE
                  BEGIN
                     IF (TRIM (var_rate_fix_day) IN
                                             ('SATURDAY', 'FRIDAY', 'SUNDAY')
                        )
                     THEN
                        BEGIN
                           BEGIN
                              SELECT DISTINCT DECODE (TRIM (var_rate_fix_day),
                                                      'SUNDAY', gb2_ind_optional_1,
                                                      'SATURDAY', gb2_ind_optional_2,
                                                      'FRIDAY', gb2_ind_optional_3,
                                                      'Y'
                                                     )
                                         INTO var_rate_fix_ind_buss_day
                                         FROM vls_fam_global2,
                                              vls_prod_calendar
                                        WHERE vls_fam_global2.gb2_cde_code =
                                                 vls_prod_calendar.phc_cde_calendar
                                          AND gb2_tid_table_id = 'HCL'
                                          AND TRIM
                                                 (vls_prod_calendar.phc_cde_calendar
                                                 ) =
                                                 TRIM (var_branch_holiday_code)
                                          AND TRIM (phc_cde_owner_type) =
                                                                         'OST'
                                          AND TRIM (phc_rid_owner) =
                                                 TRIM (var_fst_rid_outstandng);
                           EXCEPTION
                              WHEN NO_DATA_FOUND
                              THEN
                                 DBMS_OUTPUT.put_line ('NO DATA FOUND');
                              WHEN OTHERS
                              THEN
                                 err.report_and_go
                                    ('rbsgbl_proc_dealer_list ',
                                        'Error in decode statement for rate fix date query for friday, saturday and sunday for FST_RID_FUND_REQ '
                                     || var_fst_rid_fund_req,
                                     SQLCODE,
                                     NULL
                                    );
                           END;

                           IF (var_rate_fix_ind_buss_day <> 'Y')
                           THEN
                              var_calc_rate_fix_days :=
                                                       var_calc_rate_fix_days;
                           ELSE
                              var_calc_rate_fix_days :=
                                                   var_calc_rate_fix_days - 1;
                           END IF;
                        END;
                     ELSE
                        var_calc_rate_fix_days := var_calc_rate_fix_days - 1;
                     END IF;
                  END;
               END IF;

               EXIT WHEN var_calc_rate_fix_days = 0;
            END LOOP;
         END IF;

         var_calc_date := var_calc_rate_fix_date;
         var_calc_days := var_lead_days;

/*Loop for calculation of start range*/
         BEGIN
            LOOP
               var_calc_date := var_calc_date - 1;
               var_day := TO_CHAR (var_calc_date, 'DAY');
               var_holiday_y_n := '';
               var_ind_valid_buss_day := 'Y';

               BEGIN
                  SELECT DISTINCT hcd_dte_hol_cal
                             INTO var_holiday_y_n
                             FROM vls_hol_cal_dates, vls_prod_calendar
                            WHERE vls_prod_calendar.phc_cde_calendar =
                                             vls_hol_cal_dates.hcd_cde_hol_cal
                              AND hcd_ind_active = 'Y'
                              AND TRIM (phc_cde_owner_type) = 'OST'
                              AND TRIM (phc_rid_owner) =
                                                 TRIM (var_fst_rid_outstandng)
                              AND TRIM (phc_cde_calendar) =
                                                TRIM (var_branch_holiday_code)
                              AND vls_hol_cal_dates.hcd_dte_hol_cal =
                                                                 var_calc_date;
               EXCEPTION
                  WHEN NO_DATA_FOUND
                  THEN
                     DBMS_OUTPUT.put_line ('NO DATA FOUND');
                  WHEN OTHERS
                  THEN
                     err.report_and_go
                        ('rbsgbl_proc_dealer_list ',
                            'Error in Hoilday date and day retrieval start range query for FST_RID_FUND_REQ '
                         || var_fst_rid_fund_req,
                         SQLCODE,
                         NULL
                        );
               END;

               IF (var_holiday_y_n IS NOT NULL)
               THEN
                  var_calc_days := var_calc_days;
               ELSE
                  BEGIN
                     IF (TRIM (var_day) IN ('SATURDAY', 'FRIDAY', 'SUNDAY'))
                     THEN
                        BEGIN
                           BEGIN
                              SELECT DISTINCT DECODE (TRIM (var_day),
                                                      'SUNDAY', gb2_ind_optional_1,
                                                      'SATURDAY', gb2_ind_optional_2,
                                                      'FRIDAY', gb2_ind_optional_3,
                                                      'Y'
                                                     )
                                         INTO var_ind_valid_buss_day
                                         FROM vls_fam_global2,
                                              vls_prod_calendar
                                        WHERE vls_fam_global2.gb2_cde_code =
                                                 vls_prod_calendar.phc_cde_calendar
                                          AND gb2_tid_table_id = 'HCL'
                                          AND TRIM
                                                 (vls_prod_calendar.phc_cde_calendar
                                                 ) =
                                                 TRIM (var_branch_holiday_code)
                                          AND TRIM (phc_cde_owner_type) =
                                                                         'OST'
                                          AND TRIM (phc_rid_owner) =
                                                 TRIM (var_fst_rid_outstandng);
                           EXCEPTION
                              WHEN NO_DATA_FOUND
                              THEN
                                 DBMS_OUTPUT.put_line ('NO DATA FOUND');
                              WHEN OTHERS
                              THEN
                                 err.report_and_go
                                    ('rbsgbl_proc_dealer_list ',
                                        'Error in decode statement in start range query for friday, saturday and sunday for FST_RID_FUND_REQ '
                                     || var_fst_rid_fund_req,
                                     SQLCODE,
                                     NULL
                                    );
                           END;

                           IF (var_ind_valid_buss_day <> 'Y')
                           THEN
                              var_calc_days := var_calc_days;
                           ELSE
                              var_calc_days := var_calc_days - 1;
                           END IF;
                        END;
                     ELSE
                        var_calc_days := var_calc_days - 1;
                     END IF;
                  END;
               END IF;

               EXIT WHEN var_calc_days = 0;
            END LOOP;

/*Loop added for valid business date after transaction effective date for TD1221*/
            LOOP
               var_end_date := var_end_date + 1;
               var_end_day := TO_CHAR (var_end_date, 'DAY');
               var_end_holiday_y_n := '';
               var_end_ind_valid_buss_day := 'Y';

               BEGIN
                  SELECT DISTINCT hcd_dte_hol_cal
                             INTO var_end_holiday_y_n
                             FROM vls_hol_cal_dates, vls_prod_calendar
                            WHERE vls_prod_calendar.phc_cde_calendar =
                                             vls_hol_cal_dates.hcd_cde_hol_cal
                              AND hcd_ind_active = 'Y'
                              AND TRIM (phc_cde_owner_type) = 'OST'
                              AND TRIM (phc_rid_owner) =
                                                 TRIM (var_fst_rid_outstandng)
                              AND TRIM (phc_cde_calendar) =
                                                TRIM (var_branch_holiday_code)
                              AND vls_hol_cal_dates.hcd_dte_hol_cal =
                                                                  var_end_date;
               EXCEPTION
                  WHEN NO_DATA_FOUND
                  THEN
                     DBMS_OUTPUT.put_line ('NO DATA FOUND');
                  WHEN OTHERS
                  THEN
                     err.report_and_go
                        ('rbsgbl_proc_dealer_list ',
                            'Error in Hoilday date and day retrieval query for business day after transaction effective date for FST_RID_FUND_REQ '
                         || var_fst_rid_fund_req,
                         SQLCODE,
                         NULL
                        );
               END;

               BEGIN
                  SELECT DISTINCT DECODE (TRIM (var_end_day),
                                          'SUNDAY', gb2_ind_optional_1,
                                          'SATURDAY', gb2_ind_optional_2,
                                          'FRIDAY', gb2_ind_optional_3,
                                          'Y'
                                         )
                             INTO var_end_ind_valid_buss_day
                             FROM vls_fam_global2, vls_prod_calendar
                            WHERE vls_fam_global2.gb2_cde_code =
                                            vls_prod_calendar.phc_cde_calendar
                              AND gb2_tid_table_id = 'HCL'
                              AND TRIM (vls_prod_calendar.phc_cde_calendar) =
                                                TRIM (var_branch_holiday_code)
                              AND TRIM (phc_cde_owner_type) = 'OST'
                              AND TRIM (phc_rid_owner) =
                                                 TRIM (var_fst_rid_outstandng);
               EXCEPTION
                  WHEN NO_DATA_FOUND
                  THEN
                     DBMS_OUTPUT.put_line ('NO DATA FOUND');
                  WHEN OTHERS
                  THEN
                     err.report_and_go
                        ('rbsgbl_proc_dealer_list ',
                            'Error in decode statement for friday, saturday and sundayfor business day after transaction effective date for FST_RID_FUND_REQ '
                         || var_fst_rid_fund_req,
                         SQLCODE,
                         NULL
                        );
               END;

               IF (   (var_end_holiday_y_n IS NOT NULL)
                   OR (var_end_ind_valid_buss_day <> 'Y')
                  )
               THEN
                  var_ind_end_date := 'N';
               ELSE
                  var_ind_end_date := 'Y';
               END IF;

               EXIT WHEN var_ind_end_date = 'Y';
            END LOOP;

            BEGIN
               UPDATE rbsgbl_funding_stage
                  SET fst_ind_curr_dealer_list = 'Y',
                      fst_dte_rate_fixing = var_calc_rate_fix_date
                WHERE TO_DATE (var_curr_business_date) BETWEEN var_calc_date
                                                           AND var_end_date
                  /*TD 1221*/
                  AND fst_rid_fund_req = var_fst_rid_fund_req;
            EXCEPTION
               WHEN NO_DATA_FOUND
               THEN
                  DBMS_OUTPUT.put_line ('NO DATA FOUND');
               WHEN OTHERS
               THEN
                  err.report_and_go
                     ('rbsgbl_proc_dealer_list ',
                         'Error while updating FST_IND_CURR_DEALER_LIST as Y in RBSGBL_FUNDING_STAGE for FST_RID_FUND_REQ: '
                      || var_fst_rid_fund_req,
                      SQLCODE,
                      NULL
                     );
            END;
         END;
      END LOOP;

      CLOSE cur_dealer_list;
   END;

   COMMIT;
END;
/