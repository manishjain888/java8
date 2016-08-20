/*
Module	:	Funding Interface
Author	:	Manish Jain
Date	:	23 Jan, 2008
Purpose	:	Funding - setting the correct product type
*/

update rbsgbl_static_details
set static_value_2 = 'CBLT'
where static_type_id = 'FND03' and
      key_value_2 <> 'DEPOS';

update rbsgbl_static_details
set static_value_2 = 'CBDT'
where static_type_id = 'FND03' and
      key_value_2 = 'DEPOS'; 