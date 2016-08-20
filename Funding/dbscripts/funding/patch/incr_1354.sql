-- Updates section
update rbsgbl_static_details set static_value_2='ACBSCZK' where static_type_id ='FND02' and key_value_1 like 'RB%' and key_value_2 in('CZK','HUF','PLN');

-- Inserts section
Insert into RBSGBL_STATIC_DETAILS (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, KEY_VALUE_3, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4, STATIC_VALUE_5)
 Values ('FND02','RBMDL','RON',NULL,'EMKTMM','ACBSCZK','3',NULL,NULL);
Insert into RBSGBL_STATIC_DETAILS (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, KEY_VALUE_3, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4, STATIC_VALUE_5)
 Values ('FND02','RBSFF','RON',NULL,'EMKTMM','ACBSCZK','3',NULL,NULL);
Insert into RBSGBL_STATIC_DETAILS (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, KEY_VALUE_3, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4, STATIC_VALUE_5)
 Values ('FND02','RBSHS','RON',NULL,'EMKTMM','ACBSCZK','3',NULL,NULL);
Insert into RBSGBL_STATIC_DETAILS (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, KEY_VALUE_3, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4, STATIC_VALUE_5)
 Values ('FND02','RBSLB','RON',NULL,'EMKTMM','ACBSCZK','3',NULL,NULL);
Insert into RBSGBL_STATIC_DETAILS (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, KEY_VALUE_3, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4, STATIC_VALUE_5)
 Values ('FND02','RBSLN','RON',NULL,'EMKTMM','ACBSCZK','3',NULL,NULL);
Insert into RBSGBL_STATIC_DETAILS (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, KEY_VALUE_3, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4, STATIC_VALUE_5)
 Values ('FND02','RBSMD','RON',NULL,'EMKTMM','ACBSCZK','3',NULL,NULL);
Insert into RBSGBL_STATIC_DETAILS (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, KEY_VALUE_3, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4, STATIC_VALUE_5)
 Values ('FND02','RBSML','RON',NULL,'EMKTMM','ACBSCZK','3',NULL,NULL);
Insert into RBSGBL_STATIC_DETAILS (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, KEY_VALUE_3, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4, STATIC_VALUE_5)
 Values ('FND02','RBSOS','RON',NULL,'EMKTMM','ACBSCZK','3',NULL,NULL);
Insert into RBSGBL_STATIC_DETAILS (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, KEY_VALUE_3, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4, STATIC_VALUE_5)
 Values ('FND02','RBSPR','RON',NULL,'EMKTMM','ACBSCZK','3',NULL,NULL);
Insert into RBSGBL_STATIC_DETAILS (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, KEY_VALUE_3, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4, STATIC_VALUE_5)
 Values ('FND02','RBSSH','RON',NULL,'EMKTMM','ACBSCZK','3',NULL,NULL);

-- commits
Commit;