/*
Module	:	Funding Interface
Author	:	Manish Jain
Date	:	20 Aug, 2009
Purpose	:	Funding - Complete USER_GROUP including all TDs
*/

DELETE FROM RBSGBL_USER_GROUP;

Insert into RBSGBL_USER_GROUP
   (UGT_CDE_GROUP, UGT_CDE_AMEND_STATUS, UGT_IND_ACCESS)
 Values
   ('LOANOPSVER', 'PENDING', 'YY');
Insert into RBSGBL_USER_GROUP
   (UGT_CDE_GROUP, UGT_CDE_AMEND_STATUS, UGT_IND_ACCESS)
 Values
   ('LOANOPSVER', 'PUBLISHED', 'YN');
Insert into RBSGBL_USER_GROUP
   (UGT_CDE_GROUP, UGT_CDE_AMEND_STATUS, UGT_IND_ACCESS)
 Values
   ('LOANOPSVER', 'DELETED', 'YY');
Insert into RBSGBL_USER_GROUP
   (UGT_CDE_GROUP, UGT_CDE_AMEND_STATUS, UGT_IND_ACCESS)
 Values
   ('LOANOPSVER', 'ACCEPTED', 'YN');
Insert into RBSGBL_USER_GROUP
   (UGT_CDE_GROUP, UGT_CDE_AMEND_STATUS, UGT_IND_ACCESS)
 Values
   ('LOANOPSVER', 'REJECTED', 'YY');
Insert into RBSGBL_USER_GROUP
   (UGT_CDE_GROUP, UGT_CDE_AMEND_STATUS, UGT_IND_ACCESS)
 Values
   ('LOANOPSVER', 'CANCELLED', 'YY');
Insert into RBSGBL_USER_GROUP
   (UGT_CDE_GROUP, UGT_CDE_AMEND_STATUS, UGT_IND_ACCESS)
 Values
   ('SUPPORT', 'BREAK_FUNDED', 'YN');
Insert into RBSGBL_USER_GROUP
   (UGT_CDE_GROUP, UGT_CDE_AMEND_STATUS, UGT_IND_ACCESS)
 Values
   ('TRSY', 'PUBLISHED', 'YY');
Insert into RBSGBL_USER_GROUP
   (UGT_CDE_GROUP, UGT_CDE_AMEND_STATUS, UGT_IND_ACCESS)
 Values
   ('TRSY', 'ACCEPTED', 'YN');
Insert into RBSGBL_USER_GROUP
   (UGT_CDE_GROUP, UGT_CDE_AMEND_STATUS, UGT_IND_ACCESS)
 Values
   ('TRSY', 'REJECTED', 'YN');
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
Insert into RBSGBL_USER_GROUP
   (UGT_CDE_GROUP, UGT_CDE_AMEND_STATUS, UGT_IND_ACCESS)
 Values
   ('LOANOPSINP', 'BREAK_FUNDED', 'YY');
Insert into RBSGBL_USER_GROUP
   (UGT_CDE_GROUP, UGT_CDE_AMEND_STATUS, UGT_IND_ACCESS)
 Values
   ('LOANOPSINP', 'PENDING', 'YN');
Insert into RBSGBL_USER_GROUP
   (UGT_CDE_GROUP, UGT_CDE_AMEND_STATUS, UGT_IND_ACCESS)
 Values
   ('LOANOPSINP', 'PUBLISHED', 'YN');
Insert into RBSGBL_USER_GROUP
   (UGT_CDE_GROUP, UGT_CDE_AMEND_STATUS, UGT_IND_ACCESS)
 Values
   ('LOANOPSINP', 'DELETED', 'YN');
Insert into RBSGBL_USER_GROUP
   (UGT_CDE_GROUP, UGT_CDE_AMEND_STATUS, UGT_IND_ACCESS)
 Values
   ('LOANOPSINP', 'ACCEPTED', 'YN');
Insert into RBSGBL_USER_GROUP
   (UGT_CDE_GROUP, UGT_CDE_AMEND_STATUS, UGT_IND_ACCESS)
 Values
   ('LOANOPSINP', 'REJECTED', 'YN');
Insert into RBSGBL_USER_GROUP
   (UGT_CDE_GROUP, UGT_CDE_AMEND_STATUS, UGT_IND_ACCESS)
 Values
   ('LOANOPSINP', 'CANCELLED', 'YN');
Insert into RBSGBL_USER_GROUP
   (UGT_CDE_GROUP, UGT_CDE_AMEND_STATUS, UGT_IND_ACCESS)
 Values
   ('LOANOPSVER', 'BREAK_FUNDED', 'YY');
COMMIT;