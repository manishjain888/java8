/*
Module	:	Funding Interface
Author	:	Jagjit Singh
Date	:	01/10/2008
Purpose	:	This table will specify access rights to specific group
*/

DROP TABLE rbsgbl_user_group;

CREATE TABLE rbsgbl_user_group
(   ugt_cde_group     VARCHAR2(10),
    ugt_cde_amend_status    VARCHAR2(30),
    ugt_ind_access      VARCHAR2(2)
);

DROP INDEX UGT_CDE_GROUP_IN;  

CREATE INDEX UGT_CDE_GROUP_IN       ON  RBSGBL_USER_GROUP(UGT_CDE_GROUP);