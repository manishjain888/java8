
/*
Module	:	Funding Interfaces
Author	:	Manish Jain
Date	:	15 Oct 2009
Purpose	:	Roolback script for 1016
*/

update rbsgbl_static_details set STATIC_VALUE_1 = 'RBLQTRAD' where static_type_id = 'FND01' and key_value_1 = 'RBSLN' and 
key_value_2 in ('GTROR','GTR01','GTR02','GTR03','GTR04','GTR05','GTR06','GTR07','GTR08','GTR09','GTR10','GTR11','GTR12','GTR13','GTR14','GTR15',
'GTR16','GTR17','GTR18','GTR18','GTR19','GTR20','GTR21','GTR22');

commit;
