/*
Module	:	LoanIQ Interfaces
Author	:	Jagjit Singh
Date	:	08/08/2008
Purpose	:	Procedure will add comments in RBSGBL_AMEND_COMMENTS and update AFT_IND_EXCLUDE column for auto_funded records
*/


CREATE OR REPLACE PROCEDURE RBS_LIQ.rbsgbl_proc_fund_auto_cmnt (
   in_aft_rid_fund_req       IN       CHAR,
   in_datanet_user           IN       CHAR,
   in_user_comment1          IN       CHAR,
   in_user_comment2          IN       CHAR,
   in_user_comment3          IN       CHAR,
   in_user_comment4          IN       CHAR,
   in_user_comment5          IN       CHAR,
   in_user_comment6          IN       CHAR,
   in_user_comment7          IN       CHAR,
   in_user_comment8          IN       CHAR,
   in_user_comment9          IN       CHAR,
   in_user_comment10         IN       CHAR,
   out_ind_insert            OUT      CHAR
)
AS
   var_max_act_rid_comment   rbsgbl_amend_comments.act_rid_comment%TYPE  := 0;
   var_user_comment          rbsgbl_amend_comments.act_dsc_comment%TYPE;
   var_counter               NUMBER;
   var_aft_ind_exclude       rbsgbl_auto_fund.aft_ind_exclude%TYPE;
   var_aft_rid_fund_req      rbsgbl_auto_fund.aft_rid_fund_req%TYPE;
   var_num                   number;

BEGIN
   var_aft_rid_fund_req := 
    replace(replace(replace(replace(replace(REPLACE (in_aft_rid_fund_req, CHR (191),'#'),chr(190),'%'),chr(189),'&'),chr(188),'+'),
chr(187),'"'),chr(194),'');
   
   /*Fetching indicator for status for checking duplicate enries*/
   BEGIN
      SELECT aft_ind_exclude,1
        INTO var_aft_ind_exclude, var_num
        FROM rbsgbl_auto_fund
       WHERE aft_rid_fund_req = var_aft_rid_fund_req;
   EXCEPTION
      WHEN OTHERS
      THEN
         err.report_and_go
            ('rbsgbl_proc_auto_status_cmnt ',
                'Error in taking amend_status from RBSGBL_AMEND_COMMENTS for ACT_RID_FUND_REQ: '
             || var_aft_rid_fund_req,
             SQLCODE,
             ''
            );
   END;

   /*Check if duplicate updation is not there*/
   BEGIN
      IF ((var_aft_ind_exclude IS NULL OR var_aft_ind_exclude = 'N') and var_num is not null)
      THEN
         out_ind_insert := 'Y';
      ELSIF (var_num is null)
         THEN
            out_ind_insert := 'S';
         ELSE
         out_ind_insert := 'N';
      END IF;

      DBMS_OUTPUT.put_line (out_ind_insert);
   END;

   /*Check if already updated or not*/
   IF (out_ind_insert = 'Y')
   THEN
      BEGIN
         /* Take out maximum RID Comment to insert in RBSGBL_AMEND_COMMENTS*/
         BEGIN
            SELECT NVL (MAX (act_rid_comment), 0)
              INTO var_max_act_rid_comment
              FROM rbsgbl_amend_comments
             WHERE act_rid_fund_req = var_aft_rid_fund_req;
         EXCEPTION
            WHEN OTHERS
            THEN
               err.report_and_go
                  ('RBSGBL_PROC_AUTO_STATUS_CMNT ',
                      'Error in taking maximum count of ACT_RID_COMMENT from RBSGBL_AMEND_COMMENTS for ACT_RID_FUND_REQ: '
                   || var_aft_rid_fund_req,
                   SQLCODE,
                   ''
                  );
         END;

/*updating rbsgbl_auto_fund with status as EXCLUDED */
         BEGIN
            UPDATE rbsgbl_auto_fund
               SET aft_ind_exclude = 'Y'
             WHERE aft_rid_fund_req = var_aft_rid_fund_req;
            COMMIT;
         EXCEPTION
            WHEN OTHERS
            THEN
               err.report_and_go
                  ('RBSGBL_PROC_AUTO_STATUS_CMNT ',
                      'Error in updating status in rbsgbl_auto_fund for aft_rid_fund_req: '
                   || var_aft_rid_fund_req,
                   SQLCODE,
                   ''
                  );
         END;

/*Adding comments in rbsgbl_amend_comments table*/
         BEGIN
            IF ((in_user_comment1 <> '.') AND (in_user_comment1 IS NOT NULL)
               )
            THEN
               BEGIN
                  var_max_act_rid_comment := var_max_act_rid_comment + 1;

                  INSERT INTO rbsgbl_amend_comments
                              (act_rid_fund_req, act_rid_comment,
                               act_dsc_comment,
                               act_tsp_rec_create, act_uid_rec_create
                              )
                       VALUES (var_aft_rid_fund_req, var_max_act_rid_comment,
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
                        ('RBSGBL_PROC_AUTO_STATUS_CMNT ',
                            'Error in inserting data in RBSGBL_AMEND_COMMENTS for 1st comment ACT_RID_FUND_REQ: '
                         || var_aft_rid_fund_req,
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
                              (act_rid_fund_req, act_rid_comment,
                               act_dsc_comment,
                               act_tsp_rec_create, act_uid_rec_create
                              )
                       VALUES (var_aft_rid_fund_req, var_max_act_rid_comment,
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
                        ('RBSGBL_PROC_AUTO_STATUS_CMNT ',
                            'Error in inserting data in RBSGBL_AMEND_COMMENTS for 2nd comment ACT_RID_FUND_REQ: '
                         || var_aft_rid_fund_req,
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
                              (act_rid_fund_req, act_rid_comment,
                               act_dsc_comment,
                               act_tsp_rec_create, act_uid_rec_create
                              )
                       VALUES (var_aft_rid_fund_req, var_max_act_rid_comment,
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
                        ('RBSGBL_PROC_AUTO_STATUS_CMNT ',
                            'Error in inserting data in RBSGBL_AMEND_COMMENTS for 3rd comment ACT_RID_FUND_REQ: '
                         || var_aft_rid_fund_req,
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
                              (act_rid_fund_req, act_rid_comment,
                               act_dsc_comment,
                               act_tsp_rec_create, act_uid_rec_create
                              )
                       VALUES (var_aft_rid_fund_req, var_max_act_rid_comment,
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
                        ('RBSGBL_PROC_AUTO_STATUS_CMNT ',
                            'Error in inserting data in RBSGBL_AMEND_COMMENTS for 4th comment ACT_RID_FUND_REQ: '
                         || var_aft_rid_fund_req,
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
                              (act_rid_fund_req, act_rid_comment,
                               act_dsc_comment,
                               act_tsp_rec_create, act_uid_rec_create
                              )
                       VALUES (var_aft_rid_fund_req, var_max_act_rid_comment,
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
                        ('RBSGBL_PROC_AUTO_STATUS_CMNT ',
                            'Error in inserting data in RBSGBL_AMEND_COMMENTS for 5th comment ACT_RID_FUND_REQ: '
                         || var_aft_rid_fund_req,
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
                              (act_rid_fund_req, act_rid_comment,
                               act_dsc_comment,
                               act_tsp_rec_create, act_uid_rec_create
                              )
                       VALUES (var_aft_rid_fund_req, var_max_act_rid_comment,
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
                        ('RBSGBL_PROC_AUTO_STATUS_CMNT ',
                            'Error in inserting data in RBSGBL_AMEND_COMMENTS for 6th comment ACT_RID_FUND_REQ: '
                         || var_aft_rid_fund_req,
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
                              (act_rid_fund_req, act_rid_comment,
                               act_dsc_comment,
                               act_tsp_rec_create, act_uid_rec_create
                              )
                       VALUES (var_aft_rid_fund_req, var_max_act_rid_comment,
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
                        ('RBSGBL_PROC_AUTO_STATUS_CMNT ',
                            'Error in inserting data in RBSGBL_AMEND_COMMENTS for 7th comment ACT_RID_FUND_REQ: '
                         || var_aft_rid_fund_req,
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
                              (act_rid_fund_req, act_rid_comment,
                               act_dsc_comment,
                               act_tsp_rec_create, act_uid_rec_create
                              )
                       VALUES (var_aft_rid_fund_req, var_max_act_rid_comment,
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
                        ('RBSGBL_PROC_AUTO_STATUS_CMNT ',
                            'Error in inserting data in RBSGBL_AMEND_COMMENTS for 8th comment ACT_RID_FUND_REQ: '
                         || var_aft_rid_fund_req,
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
                              (act_rid_fund_req, act_rid_comment,
                               act_dsc_comment,
                               act_tsp_rec_create, act_uid_rec_create
                              )
                       VALUES (var_aft_rid_fund_req, var_max_act_rid_comment,
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
                        ('RBSGBL_PROC_AUTO_STATUS_CMNT ',
                            'Error in inserting data in RBSGBL_AMEND_COMMENTS for 9th comment ACT_RID_FUND_REQ: '
                         || var_aft_rid_fund_req,
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
                              (act_rid_fund_req, act_rid_comment,
                               act_dsc_comment,
                               act_tsp_rec_create, act_uid_rec_create
                              )
                       VALUES (var_aft_rid_fund_req, var_max_act_rid_comment,
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
                        ('RBSGBL_PROC_AUTO_STATUS_CMNT ',
                            'Error in inserting data in RBSGBL_AMEND_COMMENTS for 10th comment ACT_RID_FUND_REQ: '
                         || var_aft_rid_fund_req,
                         SQLCODE,
                         ''
                        );
               END;
            END IF;
         END;
      END;
   END IF;

   COMMIT;
EXCEPTION
   WHEN OTHERS
   THEN
      err.report_and_go
         ('RBSGBL_PROC_AUTO_STATUS_CMNT ',
             'Error in procedure RBSGBL_PROC_AUTO_STATUS_CMNT for ACT_RID_FUND_REQ: '
          || var_aft_rid_fund_req,
          SQLCODE,
          ''
         );
END;
/