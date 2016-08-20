/*
Module	:	Funding Interfaces
Author	:       Jagjit Singh
Date	:	17/11/2008	
Purpose	:	UAT-1381. Rights changed as per TS 1.5
*/

UPDATE rbsgbl_user_group
   SET ugt_ind_access = 'YY'
 WHERE ugt_cde_group = 'LOANOPSVER' AND ugt_cde_amend_status = 'REJECTED';
UPDATE rbsgbl_user_group
   SET ugt_ind_access = 'YN'
 WHERE ugt_cde_group = 'TRSY' AND ugt_cde_amend_status = 'ACCEPTED';
UPDATE rbsgbl_user_group
   SET ugt_ind_access = 'YN'
 WHERE ugt_cde_group = 'TRSY' AND ugt_cde_amend_status = 'REJECTED';
COMMIT ;