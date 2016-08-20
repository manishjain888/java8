DROP TABLE RBSGBL_MIG_PREPAID_LOANS;

CREATE TABLE RBSGBL_MIG_PREPAID_LOANS
(
  MPL_RID_OUTSTANDNG    VARCHAR2(8 BYTE),
  MPL_DTE_EFFECTIVE     DATE,
  MPL_RID_TRAN   VARCHAR2(8 BYTE)
);

COMMENT ON COLUMN  RBSGBL_MIG_PREPAID_LOANS.MPL_RID_OUTSTANDNG IS 'The rid of the outstanding/loan wherein a prepayment was made against';

COMMENT ON COLUMN  RBSGBL_MIG_PREPAID_LOANS.MPL_DTE_EFFECTIVE IS 'The date when the prepayment was done that will serve as the effective date of the migrated loan';

COMMENT ON COLUMN  RBSGBL_MIG_PREPAID_LOANS.MPL_RID_TRAN IS 'The rid of the outstanding prepayment transaction';

