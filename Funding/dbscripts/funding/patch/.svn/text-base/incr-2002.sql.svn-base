/*
Module	:	Funding Interface
Author	:	Manish Jain
Date	:	23 Jan, 2008
Purpose	:	Funding - update to baseline portfolio to correct the end date of the trade
*/


update rbsgbl_baseline_portfolio
set bpt_dte_cycle_end = (bpt_dte_cycle_end + 1)
where bpt_rid_outstandng in  
      (      
      select distinct ost_rid_outstandng 
      from rbsgbl_baseline_portfolio
           inner join vls_outstanding on
           bpt_rid_outstandng = ost_rid_outstandng
      where(bpt_dte_cycle_end + 1) = ost_dte_repricing                       
      );
      
      
 commit;     