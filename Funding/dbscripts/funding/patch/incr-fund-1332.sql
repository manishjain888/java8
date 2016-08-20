/*
Module	:	LoanIQ Interfaces
Author	:       Manish Jain
Date	:	10-11-2008
Purpose	:	
*/

UPDATE rbsgbl_static_details
   SET static_value_3 = 'UKSB',
       static_value_4 = 'GBMCB'
 WHERE static_type_id = 'FND03'
   AND key_value_1 = 'RBSLN'
   AND key_value_2 = 'DEPOS'
   AND static_value_1 = 'Deposit';
   
UPDATE rbsgbl_static_details
   SET static_value_3 = '',
       static_value_4 = 'GBMCB'
 WHERE static_type_id = 'FND03'
   AND key_value_1 = 'NWBLN'
   AND key_value_2 = 'DEPOS'
   AND static_value_1 = 'Deposit';

UPDATE rbsgbl_static_details
   SET static_value_3 = '',
       static_value_4 = 'GBMCB'
 WHERE static_type_id = 'FND03'
   AND key_value_1 = 'RBSPR'
   AND key_value_2 = 'DEPOS'
   AND static_value_1 = 'Deposit';



UPDATE rbsgbl_static_details
   SET static_value_3 = '',
       static_value_4 = 'GBMCB'
 WHERE static_type_id = 'FND03'
   AND key_value_1 = 'RBSFF'
   AND key_value_2 = 'DEPOS'
   AND static_value_1 = 'Deposit';



UPDATE rbsgbl_static_details
   SET static_value_3 = '',
       static_value_4 = 'GBMCB'
 WHERE static_type_id = 'FND03'
   AND key_value_1 = 'RBSML'
   AND key_value_2 = 'DEPOS'
   AND static_value_1 = 'Deposit';



UPDATE rbsgbl_static_details
   SET static_value_3 = '',
       static_value_4 = 'GBMCB'
 WHERE static_type_id = 'FND03'
   AND key_value_1 = 'RBSMD'
   AND key_value_2 = 'DEPOS'
   AND static_value_1 = 'Deposit';



UPDATE rbsgbl_static_details
   SET static_value_3 = '',
       static_value_4 = 'GBMCB'
 WHERE static_type_id = 'FND03'
   AND key_value_1 = 'RBMDL'
   AND key_value_2 = 'DEPOS'
   AND static_value_1 = 'Deposit';



UPDATE rbsgbl_static_details
   SET static_value_3 = '',
       static_value_4 = 'GBMCB'
 WHERE static_type_id = 'FND03'
   AND key_value_1 = 'RBSOS'
   AND key_value_2 = 'DEPOS'
   AND static_value_1 = 'Deposit';



UPDATE rbsgbl_static_details
   SET static_value_3 = '',
       static_value_4 = 'GBMCB'
 WHERE static_type_id = 'FND03'
   AND key_value_1 = 'RBSHS'
   AND key_value_2 = 'DEPOS'
   AND static_value_1 = 'Deposit';



UPDATE rbsgbl_static_details
   SET static_value_3 = '',
       static_value_4 = 'GBMCB'
 WHERE static_type_id = 'FND03'
   AND key_value_1 = 'RBSLB'
   AND key_value_2 = 'DEPOS'
   AND static_value_1 = 'Deposit';



UPDATE rbsgbl_static_details
   SET static_value_3 = '',
       static_value_4 = 'GBMCB'
 WHERE static_type_id = 'FND03'
   AND key_value_1 = 'RBSSH'
   AND key_value_2 = 'DEPOS'
   AND static_value_1 = 'Deposit';

COMMIT ;