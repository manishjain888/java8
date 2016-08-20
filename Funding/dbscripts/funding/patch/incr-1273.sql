/*
Module	:	Funding Interfaces
Author	:       Jagjit Singh
Date	:	03/11/2008	
Purpose	:	UAT-1273. Delete entry for break funded records for LOANOPSVER		
*/

delete from rbsgbl_user_group where ugt_cde_group = 'LOANOPSVER' and ugt_cde_amend_status = 'BREAK_FUNDED';
commit;