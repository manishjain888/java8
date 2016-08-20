/*
Module	:	Funding Interface
Author	:	Jagjit Singh
Date	:	01/10/2008
Purpose	:	This table will specify specific group for different users who are going to login from datanet
*/

drop table rbsgbl_user_profile;

create table rbsgbl_user_profile
(
UST_UID_PROFILE varchar2(8),
UST_CDE_GROUP   varchar2(10)
);


COMMENT     ON COLUMN     rbsgbl_user_profile.ust_uid_profile         IS    'The user id of the person logging in to view the amendment queue';
COMMENT     ON COLUMN     rbsgbl_user_profile.UST_CDE_GROUP    IS    'Group user belong to like LOANINP, TRSY';