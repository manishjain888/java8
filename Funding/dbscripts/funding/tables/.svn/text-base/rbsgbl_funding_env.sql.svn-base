/*
Module : Funding Interface
Author : Manish Jain     
Date     : 14th July 2008
Purpose : This table will be used to store the poll time for funding interface
*/

DROP TABLE RBSGBL_FUNDING_ENV
;

CREATE TABLE RBSGBL_FUNDING_ENV
(
    ZONE_NAME   VARCHAR(8)  NOT NULL,
    OST_POLLER_TIME     DATE    NOT NULL,
    ACCR_CYCLE_POLLER_TIME  DATE    NOT NULL,
    MIG_START_IND VARCHAR2(1) DEFAULT 'N',
    POLL_TIME_DIFF NUMBER default 2
);

