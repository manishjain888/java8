/*
Module	:	LoanIQ Interfaces
Author	:	Jagjit Singh
Date	:	08/08/2008
Purpose	:	Procedure will add comments in RBSGBL_AMEND_COMMENTS and update AFT_IND_EXCLUDE column for amended records.
		This procedure will invoke by using asp page SP_UPDATE_STATUS.asp
*/

CREATE OR REPLACE PROCEDURE RBS_LIQ.rbsgbl_proc_fund_amend_cmnt (
   in_fst_rid_fund_req       IN       VARCHAR2,
   in_datanet_user           IN       VARCHAR2,
   in_fst_cde_amend_status   IN       VARCHAR2,
   in_break_fund_fee         IN       NUMBER,
   in_lock_time_detail       IN       VARCHAR2,
   in_user_comment1          IN       VARCHAR2,
   in_user_comment2          IN       VARCHAR2,
   in_user_comment3          IN       VARCHAR2,
   in_user_comment4          IN       VARCHAR2,
   in_user_comment5          IN       VARCHAR2,
   in_user_comment6          IN       VARCHAR2,
   in_user_comment7          IN       VARCHAR2,
   in_user_comment8          IN       VARCHAR2,
   in_user_comment9          IN       VARCHAR2,
   in_user_comment10         IN       VARCHAR2,
   out_ind_insert            OUT      VARCHAR2,
   out_uid_amend_status      OUT      VARCHAR2
)
AS
   var_max_act_rid_comment    rbsgbl_amend_comments.act_rid_comment%TYPE := 0;
   var_user_comment           rbsgbl_amend_comments.act_dsc_comment%TYPE;
   var_counter                NUMBER;
   var_break_fund_fee         rbsgbl_funding_stage.fst_amt_break_fund_fee%TYPE;
   var_fst_cde_amend_status   rbsgbl_funding_stage.fst_cde_amend_status%TYPE;
   var_fst_ind_rec_lock       rbsgbl_funding_stage.fst_ind_rec_lock%TYPE;
   var_fst_rid_fund_req       rbsgbl_funding_stage.fst_rid_fund_req%TYPE;
   var_rec_lock_time          TIMESTAMP;
   var_time                   NUMBER;
BEGIN
   var_break_fund_fee := NVL (in_break_fund_fee, 0);
   var_fst_rid_fund_req :=
    replace(replace(replace(replace(replace(REPLACE (in_fst_rid_fund_req, CHR (191),'#'),chr(190),'%'),chr(189),'&'),chr(188),'+'),
chr(187),'"'),chr(194),'');

   /*Fetching indicator for status for checking duplicate enries*/
   BEGIN
      SELECT TRIM (fst_ind_rec_lock), fst_uid_amend_status,
             fst_cde_amend_status,
             TO_TIMESTAMP (TRIM (SUBSTR (fst_ind_rec_lock,
                                    INSTR (fst_ind_rec_lock, '|', -1) + 1
                                   )
                           ),
                      'DD/MM/YY HH24:MI:SS'
                     )
        INTO var_fst_ind_rec_lock, out_uid_amend_status,
             var_fst_cde_amend_status,
             var_rec_lock_time
        FROM rbsgbl_funding_stage
       WHERE fst_rid_fund_req = var_fst_rid_fund_req;
   EXCEPTION
      WHEN OTHERS
      THEN
         err.report_and_go
            ('rbsgbl_proc_amend_add_comment ',
                'WARN: Error in taking amend_status from RBSGBL_AMEND_COMMENTS for ACT_RID_FUND_REQ: '
             || var_fst_rid_fund_req,
             SQLCODE,
             ''
            );
   END;

   BEGIN
      SELECT amd_queue_lock_time
        INTO var_time
        FROM rbsgbl_auto_fund_parameters;
   EXCEPTION
      WHEN OTHERS
      THEN
         err.report_and_go
            ('RBSGBL_PROC_FUND_LOCK_RECORD',
             'Error in reading amd_queue_lock_time from RBSGBl_AUTO_FUND_PARAMETERS',
             SQLCODE,
             ''
            );
   END;

   /* Take out maximum RID Comment to insert in RBSGBL_AMEND_COMMENTS*/
   BEGIN
      SELECT NVL (MAX (act_rid_comment), 0)
        INTO var_max_act_rid_comment
        FROM rbsgbl_amend_comments
       WHERE act_rid_fund_req = var_fst_rid_fund_req;
   EXCEPTION
      WHEN OTHERS
      THEN
         err.report_and_go
            ('rbsgbl_proc_amend_add_comment ',
                'WARN: Error in taking maximum count of ACT_RID_COMMENT from RBSGBL_AMEND_COMMENTS for ACT_RID_FUND_REQ: '
             || var_fst_rid_fund_req,
             SQLCODE,
             ''
            );
   END;

   IF (    (TRIM (var_fst_ind_rec_lock) = TRIM (in_lock_time_detail))
       AND (var_rec_lock_time + NUMTODSINTERVAL (var_time, 'MINUTE')) >
              TO_TIMESTAMP (TO_CHAR (SYSDATE, 'DD/MM/YYYY HH24:MI:SS'),
                            'DD/MM/YYYY HH24:MI:SS'
                           )
      )
   THEN
      BEGIN
         out_ind_insert := 'Y';

/*If break funded then need to update fst_amt_break_fund_fee otherwise not*/
         IF (var_fst_cde_amend_status = 'BREAK_FUNDED')
         THEN
            BEGIN
               UPDATE rbsgbl_funding_stage
                  SET fst_cde_amend_status = in_fst_cde_amend_status,
                      fst_tsp_amend_status = SYSDATE,
                      fst_tsp_rec_update = SYSDATE,
                      fst_amt_break_fund_fee = var_break_fund_fee,
                      fst_ind_rec_lock =
                            'C'
                         || '|'
                         || in_fst_cde_amend_status
                         || '|'
                         || in_datanet_user
                         || '|'
                         || TO_CHAR (SYSDATE, 'DD/MM/YY HH24:MI:SS'),
                      /*decode(trim(fst_ind_rec_lock),NULL,'L','T'),*/
                      fst_uid_amend_status = in_datanet_user
                WHERE fst_rid_fund_req = var_fst_rid_fund_req;

               COMMIT;
            EXCEPTION
               WHEN OTHERS
               THEN
                  err.report_and_go
                     ('RBSGBL_PROC_AMEND_UPDT_STATUS ',
                         'WARN: Error in updating status in RBSGBL_FUNDING_STAGE for fst_rid_fund_req: '
                      || var_fst_rid_fund_req,
                      SQLCODE,
                      ''
                     );
            END;
         ELSE
            BEGIN
               UPDATE rbsgbl_funding_stage
                  SET fst_cde_amend_status = in_fst_cde_amend_status,
                      fst_tsp_amend_status = SYSDATE,
                      fst_tsp_rec_update = sysdate,
                      fst_ind_rec_lock =
                            'C'
                         || '|'
                         || in_fst_cde_amend_status
                         || '|'
                         || in_datanet_user
                         || '|'
                         || TO_CHAR (SYSDATE, 'DD/MM/YY HH24:MI:SS'),
                      /*decode(trim(fst_ind_rec_lock),NULL,'L','T'),*/
                      fst_uid_amend_status = in_datanet_user
                WHERE fst_rid_fund_req = var_fst_rid_fund_req;

               COMMIT;
            EXCEPTION
               WHEN OTHERS
               THEN
                  err.report_and_go
                     ('RBSGBL_PROC_AMEND_UPDT_STATUS ',
                         'WARN: Error in updating status in RBSGBL_FUNDING_STAGE for fst_rid_fund_req: '
                      || var_fst_rid_fund_req,
                      SQLCODE,
                      ''
                     );
            END;
         END IF;

         BEGIN
            IF ((in_user_comment1 <> '.') AND (in_user_comment1 IS NOT NULL)
               )
            THEN
               BEGIN
                  var_max_act_rid_comment := var_max_act_rid_comment + 1;

                  INSERT INTO rbsgbl_amend_comments
                              (act_rid_fund_req,
                               act_rid_comment,
                               act_dsc_comment,
                               act_tsp_rec_create, act_uid_rec_create
                              )
                       VALUES (var_fst_rid_fund_req,
                               var_max_act_rid_comment,
                               DECODE (SUBSTR (in_user_comment1, 1, 1),
                                       '.', SUBSTR (in_user_comment1, 2),
                                       in_user_comment1
                                      ),
                               SYSDATE, in_datanet_user
                              );

                  COMMIT;
               EXCEPTION
                  WHEN OTHERS
                  THEN
                     err.report_and_go
                        ('RBSGBL_PROC_AMEND_ADD_COMMENT ',
                            'WARN: Error in inserting data in RBSGBL_AMEND_COMMENTS for 1st comment ACT_RID_FUND_REQ: '
                         || var_fst_rid_fund_req,
                         SQLCODE,
                         ''
                        );
               END;
            END IF;
         END;

         BEGIN
            IF ((in_user_comment2 <> '.') AND (in_user_comment2 IS NOT NULL)
               )
            THEN
               BEGIN
                  var_max_act_rid_comment := var_max_act_rid_comment + 1;

                  INSERT INTO rbsgbl_amend_comments
                              (act_rid_fund_req,
                               act_rid_comment,
                               act_dsc_comment,
                               act_tsp_rec_create, act_uid_rec_create
                              )
                       VALUES (var_fst_rid_fund_req,
                               var_max_act_rid_comment,
                               DECODE (SUBSTR (in_user_comment2, 1, 1),
                                       '.', SUBSTR (in_user_comment2, 2),
                                       in_user_comment2
                                      ),
                               SYSDATE, in_datanet_user
                              );

                  COMMIT;
               EXCEPTION
                  WHEN OTHERS
                  THEN
                     err.report_and_go
                        ('RBSGBL_PROC_AMEND_ADD_COMMENT ',
                            'WARN: Error in inserting data in RBSGBL_AMEND_COMMENTS for 2nd comment ACT_RID_FUND_REQ: '
                         || var_fst_rid_fund_req,
                         SQLCODE,
                         ''
                        );
               END;
            END IF;
         END;

         BEGIN
            IF ((in_user_comment3 <> '.') AND (in_user_comment3 IS NOT NULL)
               )
            THEN
               BEGIN
                  var_max_act_rid_comment := var_max_act_rid_comment + 1;

                  INSERT INTO rbsgbl_amend_comments
                              (act_rid_fund_req,
                               act_rid_comment,
                               act_dsc_comment,
                               act_tsp_rec_create, act_uid_rec_create
                              )
                       VALUES (var_fst_rid_fund_req,
                               var_max_act_rid_comment,
                               DECODE (SUBSTR (in_user_comment3, 1, 1),
                                       '.', SUBSTR (in_user_comment3, 2),
                                       in_user_comment3
                                      ),
                               SYSDATE, in_datanet_user
                              );

                  COMMIT;
               EXCEPTION
                  WHEN OTHERS
                  THEN
                     err.report_and_go
                        ('RBSGBL_PROC_AMEND_ADD_COMMENT ',
                            'WARN: Error in inserting data in RBSGBL_AMEND_COMMENTS for 3rd comment ACT_RID_FUND_REQ: '
                         || var_fst_rid_fund_req,
                         SQLCODE,
                         ''
                        );
               END;
            END IF;
         END;

         BEGIN
            IF ((in_user_comment4 <> '.') AND (in_user_comment4 IS NOT NULL)
               )
            THEN
               BEGIN
                  var_max_act_rid_comment := var_max_act_rid_comment + 1;

                  INSERT INTO rbsgbl_amend_comments
                              (act_rid_fund_req,
                               act_rid_comment,
                               act_dsc_comment,
                               act_tsp_rec_create, act_uid_rec_create
                              )
                       VALUES (var_fst_rid_fund_req,
                               var_max_act_rid_comment,
                               DECODE (SUBSTR (in_user_comment4, 1, 1),
                                       '.', SUBSTR (in_user_comment4, 2),
                                       in_user_comment4
                                      ),
                               SYSDATE, in_datanet_user
                              );

                  COMMIT;
               EXCEPTION
                  WHEN OTHERS
                  THEN
                     err.report_and_go
                        ('RBSGBL_PROC_AMEND_ADD_COMMENT ',
                            'WARN: Error in inserting data in RBSGBL_AMEND_COMMENTS for 4th comment ACT_RID_FUND_REQ: '
                         || var_fst_rid_fund_req,
                         SQLCODE,
                         ''
                        );
               END;
            END IF;
         END;

         BEGIN
            IF ((in_user_comment5 <> '.') AND (in_user_comment5 IS NOT NULL)
               )
            THEN
               BEGIN
                  var_max_act_rid_comment := var_max_act_rid_comment + 1;

                  INSERT INTO rbsgbl_amend_comments
                              (act_rid_fund_req,
                               act_rid_comment,
                               act_dsc_comment,
                               act_tsp_rec_create, act_uid_rec_create
                              )
                       VALUES (var_fst_rid_fund_req,
                               var_max_act_rid_comment,
                               DECODE (SUBSTR (in_user_comment5, 1, 1),
                                       '.', SUBSTR (in_user_comment5, 2),
                                       in_user_comment5
                                      ),
                               SYSDATE, in_datanet_user
                              );

                  COMMIT;
               EXCEPTION
                  WHEN OTHERS
                  THEN
                     err.report_and_go
                        ('RBSGBL_PROC_AMEND_ADD_COMMENT ',
                            'WARN: Error in inserting data in RBSGBL_AMEND_COMMENTS for 5th comment ACT_RID_FUND_REQ: '
                         || var_fst_rid_fund_req,
                         SQLCODE,
                         ''
                        );
               END;
            END IF;
         END;

         BEGIN
            IF ((in_user_comment6 <> '.') AND (in_user_comment6 IS NOT NULL)
               )
            THEN
               BEGIN
                  var_max_act_rid_comment := var_max_act_rid_comment + 1;

                  INSERT INTO rbsgbl_amend_comments
                              (act_rid_fund_req,
                               act_rid_comment,
                               act_dsc_comment,
                               act_tsp_rec_create, act_uid_rec_create
                              )
                       VALUES (var_fst_rid_fund_req,
                               var_max_act_rid_comment,
                               DECODE (SUBSTR (in_user_comment6, 1, 1),
                                       '.', SUBSTR (in_user_comment6, 2),
                                       in_user_comment6
                                      ),
                               SYSDATE, in_datanet_user
                              );

                  COMMIT;
               EXCEPTION
                  WHEN OTHERS
                  THEN
                     err.report_and_go
                        ('RBSGBL_PROC_AMEND_ADD_COMMENT ',
                            'WARN: Error in inserting data in RBSGBL_AMEND_COMMENTS for 6th comment ACT_RID_FUND_REQ: '
                         || var_fst_rid_fund_req,
                         SQLCODE,
                         ''
                        );
               END;
            END IF;
         END;

         BEGIN
            IF ((in_user_comment7 <> '.') AND (in_user_comment7 IS NOT NULL)
               )
            THEN
               BEGIN
                  var_max_act_rid_comment := var_max_act_rid_comment + 1;

                  INSERT INTO rbsgbl_amend_comments
                              (act_rid_fund_req,
                               act_rid_comment,
                               act_dsc_comment,
                               act_tsp_rec_create, act_uid_rec_create
                              )
                       VALUES (var_fst_rid_fund_req,
                               var_max_act_rid_comment,
                               DECODE (SUBSTR (in_user_comment7, 1, 1),
                                       '.', SUBSTR (in_user_comment7, 2),
                                       in_user_comment7
                                      ),
                               SYSDATE, in_datanet_user
                              );

                  COMMIT;
               EXCEPTION
                  WHEN OTHERS
                  THEN
                     err.report_and_go
                        ('RBSGBL_PROC_AMEND_ADD_COMMENT ',
                            'WARN: Error in inserting data in RBSGBL_AMEND_COMMENTS for 7th comment ACT_RID_FUND_REQ: '
                         || var_fst_rid_fund_req,
                         SQLCODE,
                         ''
                        );
               END;
            END IF;
         END;

         BEGIN
            IF ((in_user_comment8 <> '.') AND (in_user_comment8 IS NOT NULL)
               )
            THEN
               BEGIN
                  var_max_act_rid_comment := var_max_act_rid_comment + 1;

                  INSERT INTO rbsgbl_amend_comments
                              (act_rid_fund_req,
                               act_rid_comment,
                               act_dsc_comment,
                               act_tsp_rec_create, act_uid_rec_create
                              )
                       VALUES (var_fst_rid_fund_req,
                               var_max_act_rid_comment,
                               DECODE (SUBSTR (in_user_comment8, 1, 1),
                                       '.', SUBSTR (in_user_comment8, 2),
                                       in_user_comment8
                                      ),
                               SYSDATE, in_datanet_user
                              );

                  COMMIT;
               EXCEPTION
                  WHEN OTHERS
                  THEN
                     err.report_and_go
                        ('RBSGBL_PROC_AMEND_ADD_COMMENT ',
                            'WARN: Error in inserting data in RBSGBL_AMEND_COMMENTS for 8th comment ACT_RID_FUND_REQ: '
                         || var_fst_rid_fund_req,
                         SQLCODE,
                         ''
                        );
               END;
            END IF;
         END;

         BEGIN
            IF ((in_user_comment9 <> '.') AND (in_user_comment9 IS NOT NULL)
               )
            THEN
               BEGIN
                  var_max_act_rid_comment := var_max_act_rid_comment + 1;

                  INSERT INTO rbsgbl_amend_comments
                              (act_rid_fund_req,
                               act_rid_comment,
                               act_dsc_comment,
                               act_tsp_rec_create, act_uid_rec_create
                              )
                       VALUES (var_fst_rid_fund_req,
                               var_max_act_rid_comment,
                               DECODE (SUBSTR (in_user_comment9, 1, 1),
                                       '.', SUBSTR (in_user_comment9, 2),
                                       in_user_comment9
                                      ),
                               SYSDATE, in_datanet_user
                              );

                  COMMIT;
               EXCEPTION
                  WHEN OTHERS
                  THEN
                     err.report_and_go
                        ('RBSGBL_PROC_AMEND_ADD_COMMENT ',
                            'WARN: Error in inserting data in RBSGBL_AMEND_COMMENTS for 9th comment ACT_RID_FUND_REQ: '
                         || var_fst_rid_fund_req,
                         SQLCODE,
                         ''
                        );
               END;
            END IF;
         END;

         BEGIN
            IF (    (in_user_comment10 <> '.')
                AND (in_user_comment10 IS NOT NULL)
               )
            THEN
               BEGIN
                  var_max_act_rid_comment := var_max_act_rid_comment + 1;

                  INSERT INTO rbsgbl_amend_comments
                              (act_rid_fund_req,
                               act_rid_comment,
                               act_dsc_comment,
                               act_tsp_rec_create, act_uid_rec_create
                              )
                       VALUES (var_fst_rid_fund_req,
                               var_max_act_rid_comment,
                               DECODE (SUBSTR (in_user_comment10, 1, 1),
                                       '.', SUBSTR (in_user_comment10, 2),
                                       in_user_comment10
                                      ),
                               SYSDATE, in_datanet_user
                              );

                  COMMIT;
               EXCEPTION
                  WHEN OTHERS
                  THEN
                     err.report_and_go
                        ('RBSGBL_PROC_AMEND_ADD_COMMENT ',
                            'WARN: Error in inserting data in RBSGBL_AMEND_COMMENTS for 10th comment ACT_RID_FUND_REQ: '
                         || var_fst_rid_fund_req,
                         SQLCODE,
                         ''
                        );
               END;
            END IF;
         END;
         /*TD 1217*/
         BEGIN
                  var_max_act_rid_comment := var_max_act_rid_comment + 1;

                  INSERT INTO rbsgbl_amend_comments
                              (act_rid_fund_req,
                               act_rid_comment,
                               act_dsc_comment,
                               act_tsp_rec_create, act_uid_rec_create
                              )
                       VALUES (var_fst_rid_fund_req,
                               var_max_act_rid_comment,
                               'Record '||in_fst_cde_amend_status||' by '||in_datanet_user ||' at '||sysdate,
                               SYSDATE, in_datanet_user
                              );

                  COMMIT;
               EXCEPTION
                  WHEN OTHERS
                  THEN
                     err.report_and_go
                        ('RBSGBL_PROC_AMEND_ADD_COMMENT ',
                            'WARN: Error in inserting data in RBSGBL_AMEND_COMMENTS for System comment ACT_RID_FUND_REQ: '
                         || var_fst_rid_fund_req,
                         SQLCODE,
                         ''
                        );
               END;
      END;
   ELSE
   /*If click on back button*/
   if(trim(in_datanet_user) is null)
                           then
   BEGIN
    BEGIN
         UPDATE rbsgbl_funding_stage
            SET fst_ind_rec_lock = 'C'
          WHERE fst_rid_fund_req = var_fst_rid_fund_req;
         out_ind_insert := 'B';
      EXCEPTION
         WHEN OTHERS
         THEN
            err.report_and_go
               ('RBSGBL_PROC_AMEND_ADD_COMMENT',
                   'Error in updating fst_ind_rec_lock from RBSGBl_FUNDING_STAGE for FST_RID_FUND_REQ: '
                || in_fst_rid_fund_req,
                SQLCODE,
                ''
               );
      END;
      IF(in_user_comment1='HOME')
      then out_ind_insert := 'H';
      ELSE
        IF(in_user_comment1 = 'RETURN')
        then
           out_ind_insert := 'R';
        ELSE
            IF(in_user_comment1 = 'LOGOFF')
            then
                out_ind_insert := 'L';
            END IF;
        END IF;
      END IF;
     END;
      else
      /*if session limit reached*/
      BEGIN
         UPDATE rbsgbl_funding_stage
            SET fst_ind_rec_lock = 'C'
          WHERE fst_rid_fund_req = var_fst_rid_fund_req;
         out_ind_insert := 'N';
      EXCEPTION
         WHEN OTHERS
         THEN
            err.report_and_go
               ('RBSGBL_PROC_AMEND_ADD_COMMENT',
                   'Error in updating fst_ind_rec_lock from RBSGBl_FUNDING_STAGE for FST_RID_FUND_REQ: '
                || in_fst_rid_fund_req,
                SQLCODE,
                ''
               );
               END;
               END iF;

   END IF;
dbms_output.put_line(out_ind_insert||','||out_uid_amend_status||','||var_fst_ind_rec_lock||','||in_lock_time_detail);
dbms_output.put_line(var_rec_lock_time);
dbms_output.put_line(var_rec_lock_time + NUMTODSINTERVAL (var_time, 'MINUTE'));
dbms_output.put_line(TO_TIMESTAMP (TO_CHAR (SYSDATE, 'DD/MM/YYYY HH24:MI:SS'),
                            'DD/MM/YYYY HH24:MI:SS'
                           ));

   COMMIT;
EXCEPTION
   WHEN OTHERS
   THEN
      err.report_and_go
         ('RBSGBL_PROC_AMEND_ADD_COMMENT ',
             'WARN: Error in procedure rbsgbl_proc_amend_add_comment for ACT_RID_FUND_REQ: '
          || var_fst_rid_fund_req,
          SQLCODE,
          ''
         );
END;
/