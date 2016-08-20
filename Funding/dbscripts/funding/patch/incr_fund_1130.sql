/*
Module	:	Funding Interface
Author	:	Manish Jain
Date	:	09 Jan 200p
Purpose	:	Insert Excel related Information for Funding
*/

DELETE FROM rbsgbl_static_details
      WHERE static_type_id LIKE '%FND_M%';

DELETE FROM rbsgbl_static_master
      WHERE static_type_id LIKE '%FND_M%';

INSERT INTO rbsgbl_static_master
            (static_type_id, desc_key_value_1, desc_static_value_1,
             interface_name
            )
     VALUES ('FND_M', 'Attribute value in Java', 'Index Number in Excel',
             'FUNDING'
            );
INSERT INTO rbsgbl_static_details
            (static_type_id, key_value_1, static_value_1
            )
     VALUES ('FND_M', 'mplOstRID', '0'
            );
INSERT INTO rbsgbl_static_details
            (static_type_id, key_value_1, static_value_1
            )
     VALUES ('FND_M', 'mplEffDate', '1'
            );
INSERT INTO rbsgbl_static_details
            (static_type_id, key_value_1, static_value_1
            )
     VALUES ('FND_M', 'mplTranRID', '2'
            );
INSERT INTO rbsgbl_static_details
            (static_type_id, key_value_1, static_value_1
            )
     VALUES ('FND_M', 'mplIntAmt', '-1'
            );
COMMIT ;
