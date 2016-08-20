/*
Module	:	Funding Interface
Author	:	Manish Jain
Date	:	12 Jan 2008
Purpose	:	Updated Funding Static details Table 
			(Branch and risk book counterparty mapping) in order 
			to include the new TRS risk books

*/

 UPDATE rbsgbl_static_details SET STATIC_VALUE_2 = 'CBLT' where static_type_id = 'FND03' and key_value_1 in('RBSLN' ,'NWBLN' , 'RBSPR' , 'RBSFF' ,
 'RBSML' , 'RBSMD', 'RBMDL', 'RBSOS' , 'RBSHS' , 'RBSLB', 'RBSSH' ) and static_value_2 = 'CBDT' AND KEY_VALUE_2 = 'DEPOS';
 
  UPDATE rbsgbl_static_details SET STATIC_VALUE_2 = 'CBDT' where static_type_id = 'FND03' and key_value_1 in('RBSLN' ,'NWBLN' , 'RBSPR' , 'RBSFF' ,
 'RBSML' , 'RBSMD', 'RBMDL', 'RBSOS' , 'RBSHS' , 'RBSLB', 'RBSSH' ) and static_value_2 = 'CBLT' AND KEY_VALUE_2 <> 'DEPOS';
 
 COMMIT;