/*
Module	:	Funding Interfaces
Author	:	Manish K Gupta
Date	:	03rd July 2008
Purpose	:	Entries to map branch specific funding details.
*/


DELETE FROM rbsgbl_static_details 
WHERE static_type_id like '%FND%';

DELETE FROM rbsgbl_static_master 
WHERE static_type_id like '%FND%';

Insert into RBSGBL_STATIC_MASTER
   (STATIC_TYPE_ID, STATIC_TYPE, DESC_KEY_VALUE_1, DESC_KEY_VALUE_2, DESC_STATIC_VALUE_1, DESC_STATIC_VALUE_2, INTERFACE_NAME)
 Values
   ('FND01', 'Branch and Risk Book mapping       ', 'LIQ Branch Code                    ', 'LIQ Risk Book Code                 ', 'Wall Street Counterparty ID        ', 'Wall Street City Code              ', 'FUNDING');
Insert into RBSGBL_STATIC_MASTER
   (STATIC_TYPE_ID, STATIC_TYPE, DESC_KEY_VALUE_1, DESC_KEY_VALUE_2, DESC_STATIC_VALUE_1, DESC_STATIC_VALUE_2, DESC_STATIC_VALUE_3, INTERFACE_NAME)
 Values
   ('FND02', 'Branch and Currency mapping        ', 'LIQ Branch Code                    ', 'ISO Currency Code                  ', 'Wall Street Business Area          ', 'Wall Street Portfolio              ', 'Leads Days per currency            ', 'FUNDING');
Insert into RBSGBL_STATIC_MASTER
   (STATIC_TYPE_ID, STATIC_TYPE, DESC_KEY_VALUE_1, DESC_KEY_VALUE_2, DESC_STATIC_VALUE_1, DESC_STATIC_VALUE_2, INTERFACE_NAME)
 Values
   ('FND03', 'Branch and Risk Type mapping       ', 'LIQ Branch Code                    ', 'Risk Type Code                     ', 'Risk Type Description              ', 'Wall Street Product Code           ', 'FUNDING');
Insert into RBSGBL_STATIC_MASTER
   (STATIC_TYPE_ID, STATIC_TYPE, DESC_KEY_VALUE_1, DESC_KEY_VALUE_2, DESC_STATIC_VALUE_1, DESC_STATIC_VALUE_2, INTERFACE_NAME)
 Values
   ('FND04', 'Branch and Price Option mapping    ', 'LIQ Branch Code                    ', 'Pricing Option Code                ', 'Pricing Option Descr               ', 'Include Principal Schedule         ', 'FUNDING');
Insert into RBSGBL_STATIC_MASTER
   (STATIC_TYPE_ID, STATIC_TYPE, DESC_KEY_VALUE_1, DESC_STATIC_VALUE_1, INTERFACE_NAME)
 Values
   ('FND05', 'Branch specific values             ', 'LIQ Branch Code                    ', 'LIQ System ID                      ', 'FUNDING');
Insert into RBSGBL_STATIC_MASTER
   (STATIC_TYPE_ID, STATIC_TYPE, DESC_KEY_VALUE_1, DESC_KEY_VALUE_2, DESC_STATIC_VALUE_1, INTERFACE_NAME)
 Values
   ('FND06', 'Specific trans events per branch   ', 'LIQ Branch Code                    ', 'LIQ Transaction Event ID           ', ' LIQ System ID                     ', 'FUNDING');
Insert into RBSGBL_STATIC_MASTER
   (STATIC_TYPE_ID, STATIC_TYPE, DESC_KEY_VALUE_1, DESC_STATIC_VALUE_1, DESC_STATIC_VALUE_2, INTERFACE_NAME)
 Values
   ('FND07', 'Rate basis mapping LIQ-Wall Street ', 'LIQ Rate Basis Code                ', 'LIQ Rate Basis Description         ', 'LIQ Rate Basis Description         ', 'FUNDING');
Insert into RBSGBL_STATIC_MASTER
   (STATIC_TYPE_ID, STATIC_TYPE, DESC_KEY_VALUE_1, DESC_STATIC_VALUE_1, INTERFACE_NAME)
 Values
   ('FND08', 'Res code Map to stat vs Wall St    ', 'WSS Error Code                     ', 'AFT_CDE_MSG_STATUS defaulted value ', 'FUNDING');
Insert into RBSGBL_STATIC_MASTER
   (STATIC_TYPE_ID, STATIC_TYPE, DESC_KEY_VALUE_1, DESC_STATIC_VALUE_1, INTERFACE_NAME)
 Values
   ('FND10', 'User team/department funding report', 'Team Code                          ', 'Team Code Description              ', 'FUNDING');
Insert into RBSGBL_STATIC_MASTER
   (STATIC_TYPE_ID, DESC_KEY_VALUE_1, DESC_STATIC_VALUE_1, INTERFACE_NAME)
 Values
   ('FND_M', 'Attribute value in Java            ', 'Index Number in Excel              ', 'FUNDING');
   
COMMIT;   