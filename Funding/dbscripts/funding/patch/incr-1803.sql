/*
Module	:	Funding Interface
Author	:	Manish Jain
Date	:	20 Jan 2008
Purpose	:	Created a new user group for the amendment queue for the support 
			group with view access to all types of status (BREAKFUNDED, 
			PENDING, PUBLISHED, DELETED, ACCEPTED, REJECTED, CANCELLED).

*/

Delete from RBSGBL_USER_GROUP where ugt_cde_group  = 'SUPPORT';

Insert into RBSGBL_USER_GROUP
   (UGT_CDE_GROUP, UGT_CDE_AMEND_STATUS, UGT_IND_ACCESS)
 Values
   ('SUPPORT', 'BREAK_FUNDED', 'YN');

Insert into RBSGBL_USER_GROUP
   (UGT_CDE_GROUP, UGT_CDE_AMEND_STATUS, UGT_IND_ACCESS)
 Values
   ('SUPPORT', 'PENDING', 'YN');
   
   Insert into RBSGBL_USER_GROUP
   (UGT_CDE_GROUP, UGT_CDE_AMEND_STATUS, UGT_IND_ACCESS)
 Values
   ('SUPPORT', 'PUBLISHED', 'YN');
   
   Insert into RBSGBL_USER_GROUP
   (UGT_CDE_GROUP, UGT_CDE_AMEND_STATUS, UGT_IND_ACCESS)
 Values
   ('SUPPORT', 'DELETED', 'YN');
   
   Insert into RBSGBL_USER_GROUP
   (UGT_CDE_GROUP, UGT_CDE_AMEND_STATUS, UGT_IND_ACCESS)
 Values
   ('SUPPORT', 'ACCEPTED', 'YN');
   
   Insert into RBSGBL_USER_GROUP
   (UGT_CDE_GROUP, UGT_CDE_AMEND_STATUS, UGT_IND_ACCESS)
 Values
   ('SUPPORT', 'REJECTED', 'YN');
   
   Insert into RBSGBL_USER_GROUP
   (UGT_CDE_GROUP, UGT_CDE_AMEND_STATUS, UGT_IND_ACCESS)
 Values
   ('SUPPORT', 'CANCELLED', 'YN');
   
  COMMIT;