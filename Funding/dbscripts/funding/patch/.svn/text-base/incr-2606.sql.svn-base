/*
Module	:	All Interface
Author	:	Manish Jain
Date	:	15 Mar 2009
Purpose	:	Data differences in Environments
*/

delete from rbsgbl_static_details
 where static_type_id = 'FND10' AND KEY_VALUE_1 = 'DAM';

INSERT INTO rbsgbl_static_details
            (STATIC_TYPE_ID, KEY_VALUE_1, STATIC_VALUE_1
            )
     VALUES ('FND10', 'DAM', 'Debt ' || '&' || 'Asset Management'
            );
            
            
 UPDATE rbsgbl_static_details SET KEY_VALUE_1 = '006' where static_type_id = 'FND08' AND KEY_VALUE_1  = '06';
 
delete from rbsgbl_static_details
where static_type_id = 'OPTS';
 
 COMMIT;