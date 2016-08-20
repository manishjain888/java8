/*
Module : Funding Interface
Author : Manish Jain	 
Date 	: 03th July 2008
Purpose : 
*/

DROP TABLE rbsgbl_amend_comments
/
CREATE TABLE rbsgbl_amend_comments
(
    act_rid_fund_req  		VARCHAR2(30)     	NOT NULL,
    act_rid_comment    		NUMBER       		NOT NULL,
    act_dsc_comment         	VARCHAR2(1024)     	NOT NULL,
    act_tsp_rec_create        	DATE             	NOT NULL,
    act_uid_rec_create        	VARCHAR2(8)       	NOT NULL
)
/



COMMENT ON COLUMN     rbsgbl_amend_comments.act_rid_fund_req         IS    'Unique funding request id for the record';
COMMENT ON COLUMN     rbsgbl_amend_comments.act_rid_comment           IS    'ID of the comment that was inputted by the user';
COMMENT ON COLUMN    rbsgbl_amend_comments.act_dsc_comment      IS   ' The comment that was inputted by the user';
COMMENT ON COLUMN    rbsgbl_amend_comments.act_tsp_rec_create     IS   'Timestamp when the comment was inputted';
COMMENT ON COLUMN    rbsgbl_amend_comments.act_uid_rec_create     IS   'User id who inputted the comment';

DROP INDEX ACT_RID_FUND_REQ_IND; 

CREATE INDEX ACT_RID_FUND_REQ_IND   ON RBSGBL_AMEND_COMMENTS(ACT_RID_FUND_REQ);