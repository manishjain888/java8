/*
Module	:	LoanIQ Interfaces
Author	:	Jagjit Singh
Date	:	15/10/2008
Purpose	:	Procedure will lock records for amendment queue so that other user cannot view data at same time 
*/

CREATE OR REPLACE PROCEDURE RBS_LIQ.rbsgbl_proc_fund_lock_record (
   in_fst_rid_fund_req        IN       VARCHAR2,
   in_datanet_user            IN       VARCHAR2,
   in_fst_cde_amend_status    IN       VARCHAR2,
   out_ind_rec_lock_detail    OUT       VARCHAR2,
   out_ind_rec_lock           OUT      VARCHAR2,
   out_lock_time              OUT      VARCHAR2,
   out_fst_cde_amend_status   OUT      VARCHAR2,
   out_user_lock              OUT      VARCHAR2
)
IS
   var_fst_ind_rec_lock       rbsgbl_funding_stage.fst_ind_rec_lock%TYPE;
   var_time                   NUMBER;
   var_fst_cde_amend_status   rbsgbl_funding_stage.fst_cde_amend_status%TYPE;
   var_rec_lock_status        VARCHAR2 (1);
   var_rec_lock_status_time   TIMESTAMP;
   var_user                   rbsgbl_funding_stage.fst_uid_rec_update%TYPE;
   rep_in_fst_rid_fund_req    rbsgbl_funding_stage.fst_rid_fund_req%type;
   var_num                    number;
BEGIN
   out_ind_rec_lock := NULL;
   out_user_lock := NULL;
   out_lock_time := NULL;
   out_fst_cde_amend_status := NULL;
   rep_in_fst_rid_fund_req := 
   replace(replace(replace(replace(replace(REPLACE (in_fst_rid_fund_req, CHR (191),'#'),chr(190),'%'),chr(189),'&'),chr(188),'+'),
chr(187),'"'),chr(194),'');
   

   BEGIN
      SELECT TRIM (SUBSTR (fst_ind_rec_lock, 1, 1)),
                DECODE(fst_ind_rec_lock,'C','',TO_TIMESTAMP (TRIM (SUBSTR (fst_ind_rec_lock,
                                    INSTR (fst_ind_rec_lock, '|', -1) + 1
                                   )
                           ),
                      'DD/MM/YY HH24:MI:SS'
                     )),
             TRIM (SUBSTR (fst_ind_rec_lock,
                           INSTR (fst_ind_rec_lock, '|', 1, 2) + 1,
                             INSTR (fst_ind_rec_lock, '|', 1, 3)
                           - 1
                           - INSTR (fst_ind_rec_lock, '|', 1, 2)
                          )
                  ),
             fst_cde_amend_status
        INTO var_rec_lock_status,
             var_rec_lock_status_time,
             var_user,
             var_fst_cde_amend_status
        FROM rbsgbl_funding_stage
       WHERE fst_rid_fund_req = rep_in_fst_rid_fund_req;
   EXCEPTION
      WHEN OTHERS
      THEN
         err.report_and_go
            ('RBSGBL_PROC_FUND_LOCK_RECORD',
                'Error in reading fst_ind_rec_lock from RBSGBl_FUNDING_STAGE for FST_RID_FUND_REQ: '
             || rep_in_fst_rid_fund_req,
             SQLCODE,
             ''
            );
   END;
   
   BEGIN
   select 1 into var_num from rbsgbl_funding_stage
   where fst_rid_fund_req = rep_in_fst_rid_fund_req;
   exception
   when no_data_found
   then out_ind_rec_lock := 'SC';
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

   IF (var_fst_cde_amend_status = in_fst_cde_amend_status)
   THEN
      IF ((var_rec_lock_status = 'C') OR (var_rec_lock_status IS NULL))
      THEN
         BEGIN
            UPDATE rbsgbl_funding_stage
               SET fst_ind_rec_lock =
                         'O'
                      || '|'
                      || in_fst_cde_amend_status
                      || '|'
                      || in_datanet_user
                      || '|'
                      || TO_CHAR (SYSDATE, 'DD/MM/YY HH24:MI:SS')
             WHERE fst_rid_fund_req = rep_in_fst_rid_fund_req;

            out_ind_rec_lock := 'O';
            out_user_lock := NULL;
            out_ind_rec_lock_detail := 'O'
                      || '|'
                      || in_fst_cde_amend_status
                      || '|'
                      || in_datanet_user
                      || '|'
                      || TO_CHAR (SYSDATE, 'DD/MM/YY HH24:MI:SS');
         EXCEPTION
            WHEN OTHERS
            THEN
               err.report_and_go
                  ('RBSGBL_PROC_FUND_LOCK_RECORD',
                      'Error in updating fst_ind_rec_lock from RBSGBl_FUNDING_STAGE for FST_RID_FUND_REQ: '
                   || rep_in_fst_rid_fund_req,
                   SQLCODE,
                   ''
                  );
         END;
      ELSE
         IF (    var_rec_lock_status = 'O'
             AND (  var_rec_lock_status_time
                  + NUMTODSINTERVAL (var_time, 'MINUTE')
                 ) < SYSDATE
            )
         THEN
            BEGIN
               UPDATE rbsgbl_funding_stage
                  SET fst_ind_rec_lock =
                            'O'
                         || '|'
                         || in_fst_cde_amend_status
                         || '|'
                         || in_datanet_user
                         || '|'
                         || TO_CHAR (SYSDATE, 'DD/MM/YY HH24:MI:SS')
                WHERE fst_rid_fund_req = rep_in_fst_rid_fund_req;

               out_ind_rec_lock := 'O';
               out_user_lock := NULL;
                out_ind_rec_lock_detail := 'O'
                      || '|'
                      || in_fst_cde_amend_status
                      || '|'
                      || in_datanet_user
                      || '|'
                      || TO_CHAR (SYSDATE, 'DD/MM/YY HH24:MI:SS');
            EXCEPTION
               WHEN OTHERS
               THEN
                  err.report_and_go
                     ('RBSGBL_PROC_FUND_LOCK_RECORD',
                         'Error in updating fst_ind_rec_lock from RBSGBl_FUNDING_STAGE(time exceed limit) for FST_RID_FUND_REQ: '
                      || rep_in_fst_rid_fund_req,
                      SQLCODE,
                      ''
                     );
            END;
         ELSE
            IF (    var_rec_lock_status = 'O'
                AND (  var_rec_lock_status_time
                     + NUMTODSINTERVAL (var_time, 'MINUTE')
                    ) >= SYSDATE
               )
            THEN
               BEGIN
                  out_ind_rec_lock := 'CT';
                  out_user_lock := var_user;
                  out_lock_time :=
                     TO_CHAR (var_rec_lock_status_time,
                              'DD/MM/YY HH24:MI:SS');
               END;
            END IF;
         END IF;
      END IF;
   ELSE
   IF(out_ind_rec_lock = 'SC')
   THEN
   BEGIN
   out_ind_rec_lock := 'SC';
         out_user_lock := var_user;
         out_lock_time :='';
         out_fst_cde_amend_status := '';
   END;
   ELSE
      BEGIN
         out_ind_rec_lock := 'CU';
         out_user_lock := var_user;
         out_lock_time :=
                    TO_CHAR (var_rec_lock_status_time, 'DD/MM/YY HH24:MI:SS');
         out_fst_cde_amend_status := var_fst_cde_amend_status;
      END;
   END IF;   
   END IF;

   DBMS_OUTPUT.put_line (   out_ind_rec_lock
                         || ','
                         || out_lock_time
                         || ','
                         || in_fst_cde_amend_status
                         || ','
                         || var_fst_cde_amend_status
                        );
   COMMIT;
END;
/