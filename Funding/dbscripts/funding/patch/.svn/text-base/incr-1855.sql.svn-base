/*
Module	:	Funding Interface
Author	:	Manish Jain
Date	:	20 Oct 2008
Purpose	:	Added more reports rights 
*/

 Delete from RBSGBL_USER_GROUP where 
       		UGT_CDE_GROUP = 'LOANOPSINP' and 
       		UGT_CDE_AMEND_STATUS = 'BREAK_FUNDED';
       		
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