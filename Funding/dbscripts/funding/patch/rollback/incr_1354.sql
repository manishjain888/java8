-- Updates section
update rbsgbl_static_details set static_value_2='ACBSEM' where static_type_id ='FND02' and key_value_1 like 'RB%' and key_value_2 in('CZK','HUF','PLN');

delete from RBSGBL_STATIC_DETAILS where STATIC_TYPE_ID ='FND02' and TRIM(KEY_VALUE_2) ='RON' and KEY_VALUE_3  is NULL and TRIM(STATIC_VALUE_1)= 'EMKTMM' and 
  TRIM(STATIC_VALUE_2)='ACBSCZK' and TRIM(STATIC_VALUE_3)='3' and STATIC_VALUE_4 is NULL and STATIC_VALUE_5  is NULL;
 
Commit;