/*
Module	:	Funding Interface
Author	:	Manish Jain
Date	:	19 Jan 2008
Purpose	:	Updated Funding Static details Table 
			(Branch and risk book counterparty mapping) in order 
			to include the new TRS risk books

*/


DELETE FROM rbsgbl_static_details
      WHERE static_type_id = 'FND01';

INSERT INTO rbsgbl_static_details
            (static_type_id, key_value_1, key_value_2, static_value_1,
             static_value_2
            )
     VALUES ('FND01', 'RBSLN', 'GBMCB', 'RBLQLNGBMCB',
             'LONCTY'
            );

INSERT INTO rbsgbl_static_details
            (static_type_id, key_value_1, key_value_2, static_value_1,
             static_value_2
            )
     VALUES ('FND01', 'RBSLN', 'GDIST', 'RBLQLNTRADE',
             'LONCTY'
            );

INSERT INTO rbsgbl_static_details
            (static_type_id, key_value_1, key_value_2, static_value_1,
             static_value_2
            )
     VALUES ('FND01', 'RBSLN', 'GLEGC', 'RBLQLNTRADE',
             'LONCTY'
            );

INSERT INTO rbsgbl_static_details
            (static_type_id, key_value_1, key_value_2, static_value_1,
             static_value_2
            )
     VALUES ('FND01', 'RBSLN', 'GRBS1', 'RBLQLNTRADE',
             'LONCTY'
            );

INSERT INTO rbsgbl_static_details
            (static_type_id, key_value_1, key_value_2, static_value_1,
             static_value_2
            )
     VALUES ('FND01', 'RBSLN', 'GRBS2', 'RBLQLNTRADE',
             'LONCTY'
            );
INSERT INTO rbsgbl_static_details
            (static_type_id, key_value_1, key_value_2, static_value_1,
             static_value_2
            )
     VALUES ('FND01', 'RBSLN', 'GRBS3', 'RBLQLNTRADE',
             'LONCTY'
            );
INSERT INTO rbsgbl_static_details
            (static_type_id, key_value_1, key_value_2, static_value_1,
             static_value_2
            )
     VALUES ('FND01', 'RBSLN', 'GRBS4', 'RBLQLNTRADE',
             'LONCTY'
            );
INSERT INTO rbsgbl_static_details
            (static_type_id, key_value_1, key_value_2, static_value_1,
             static_value_2
            )
     VALUES ('FND01', 'RBSLN', 'GRBS5', 'RBLQLNTRADE',
             'LONCTY'
            );
INSERT INTO rbsgbl_static_details
            (static_type_id, key_value_1, key_value_2, static_value_1,
             static_value_2
            )
     VALUES ('FND01', 'RBSLN', 'GRBS6', 'RBLQLNTRADE',
             'LONCTY'
            );
INSERT INTO rbsgbl_static_details
            (static_type_id, key_value_1, key_value_2, static_value_1,
             static_value_2
            )
     VALUES ('FND01', 'RBSLN', 'GSMTN', 'RBLQLNTRADE',
             'LONCTY'
            );
INSERT INTO rbsgbl_static_details
            (static_type_id, key_value_1, key_value_2, static_value_1,
             static_value_2
            )
     VALUES ('FND01', 'RBSLN', 'GTROR', 'RBLQLNTRADE',
             'LONCTY'
            );
INSERT INTO rbsgbl_static_details
            (static_type_id, key_value_1, key_value_2, static_value_1,
             static_value_2
            )
     VALUES ('FND01', 'RBSLN', 'GTR01', 'RBLQLNTRADE',
             'LONCTY'
            );
INSERT INTO rbsgbl_static_details
            (static_type_id, key_value_1, key_value_2, static_value_1,
             static_value_2
            )
     VALUES ('FND01', 'RBSLN', 'GTR02', 'RBLQLNTRADE',
             'LONCTY'
            );
INSERT INTO rbsgbl_static_details
            (static_type_id, key_value_1, key_value_2, static_value_1,
             static_value_2
            )
     VALUES ('FND01', 'RBSLN', 'GTR03', 'RBLQLNTRADE',
             'LONCTY'
            );
INSERT INTO rbsgbl_static_details
            (static_type_id, key_value_1, key_value_2, static_value_1,
             static_value_2
            )
     VALUES ('FND01', 'RBSLN', 'GTR04', 'RBLQLNTRADE',
             'LONCTY'
            );
INSERT INTO rbsgbl_static_details
            (static_type_id, key_value_1, key_value_2, static_value_1,
             static_value_2
            )
     VALUES ('FND01', 'RBSLN', 'GTR05', 'RBLQLNTRADE',
             'LONCTY'
            );
INSERT INTO rbsgbl_static_details
            (static_type_id, key_value_1, key_value_2, static_value_1,
             static_value_2
            )
     VALUES ('FND01', 'RBSLN', 'GTR06', 'RBLQLNTRADE',
             'LONCTY'
            );
INSERT INTO rbsgbl_static_details
            (static_type_id, key_value_1, key_value_2, static_value_1,
             static_value_2
            )
     VALUES ('FND01', 'RBSLN', 'GTR07', 'RBLQLNTRADE',
             'LONCTY'
            );
INSERT INTO rbsgbl_static_details
            (static_type_id, key_value_1, key_value_2, static_value_1,
             static_value_2
            )
     VALUES ('FND01', 'RBSLN', 'GTR08', 'RBLQLNTRADE',
             'LONCTY'
            );
INSERT INTO rbsgbl_static_details
            (static_type_id, key_value_1, key_value_2, static_value_1,
             static_value_2
            )
     VALUES ('FND01', 'RBSLN', 'GTR09', 'RBLQLNTRADE',
             'LONCTY'
            );
INSERT INTO rbsgbl_static_details
            (static_type_id, key_value_1, key_value_2, static_value_1,
             static_value_2
            )
     VALUES ('FND01', 'RBSLN', 'GTR10', 'RBLQLNTRADE',
             'LONCTY'
            );
INSERT INTO rbsgbl_static_details
            (static_type_id, key_value_1, key_value_2, static_value_1,
             static_value_2
            )
     VALUES ('FND01', 'RBSLN', 'GTR11', 'RBLQLNTRADE',
             'LONCTY'
            );
INSERT INTO rbsgbl_static_details
            (static_type_id, key_value_1, key_value_2, static_value_1,
             static_value_2
            )
     VALUES ('FND01', 'RBSLN', 'GTR12', 'RBLQLNTRADE',
             'LONCTY'
            );
INSERT INTO rbsgbl_static_details
            (static_type_id, key_value_1, key_value_2, static_value_1,
             static_value_2
            )
     VALUES ('FND01', 'RBSLN', 'GTR13', 'RBLQLNTRADE',
             'LONCTY'
            );
INSERT INTO rbsgbl_static_details
            (static_type_id, key_value_1, key_value_2, static_value_1,
             static_value_2
            )
     VALUES ('FND01', 'RBSLN', 'GTR14', 'RBLQLNTRADE',
             'LONCTY'
            );
INSERT INTO rbsgbl_static_details
            (static_type_id, key_value_1, key_value_2, static_value_1,
             static_value_2
            )
     VALUES ('FND01', 'RBSLN', 'GTR15', 'RBLQLNTRADE',
             'LONCTY'
            );
INSERT INTO rbsgbl_static_details
            (static_type_id, key_value_1, key_value_2, static_value_1,
             static_value_2
            )
     VALUES ('FND01', 'RBSLN', 'GTR16', 'RBLQLNTRADE',
             'LONCTY'
            );
INSERT INTO rbsgbl_static_details
            (static_type_id, key_value_1, key_value_2, static_value_1,
             static_value_2
            )
     VALUES ('FND01', 'RBSLN', 'GTR17', 'RBLQLNTRADE',
             'LONCTY'
            );
INSERT INTO rbsgbl_static_details
            (static_type_id, key_value_1, key_value_2, static_value_1,
             static_value_2
            )
     VALUES ('FND01', 'RBSLN', 'GTR18', 'RBLQLNTRADE',
             'LONCTY'
            );
INSERT INTO rbsgbl_static_details
            (static_type_id, key_value_1, key_value_2, static_value_1,
             static_value_2
            )
     VALUES ('FND01', 'RBSLN', 'GTR19', 'RBLQLNTRADE',
             'LONCTY'
            );
INSERT INTO rbsgbl_static_details
            (static_type_id, key_value_1, key_value_2, static_value_1,
             static_value_2
            )
     VALUES ('FND01', 'RBSLN', 'GTR20', 'RBLQLNTRADE',
             'LONCTY'
            );
INSERT INTO rbsgbl_static_details
            (static_type_id, key_value_1, key_value_2, static_value_1,
             static_value_2
            )
     VALUES ('FND01', 'RBSLN', 'GTR21', 'RBLQLNTRADE',
             'LONCTY'
            );
INSERT INTO rbsgbl_static_details
            (static_type_id, key_value_1, key_value_2, static_value_1,
             static_value_2
            )
     VALUES ('FND01', 'RBSLN', 'GTR22', 'RBLQLNTRADE',
             'LONCTY'
            );
INSERT INTO rbsgbl_static_details
            (static_type_id, key_value_1, key_value_2, static_value_1,
             static_value_2
            )
     VALUES ('FND01', 'RBSLN', 'IAS39', 'RBLQLNTRADE',
             'LONCTY'
            );
INSERT INTO rbsgbl_static_details
            (static_type_id, key_value_1, key_value_2, static_value_1,
             static_value_2
            )
     VALUES ('FND01', 'RBSLN', 'PIRAS', 'RBLQLNPIRAS',
             'LONCTY'
            );
INSERT INTO rbsgbl_static_details
            (static_type_id, key_value_1, key_value_2, static_value_1,
             static_value_2
            )
     VALUES ('FND01', 'RBSLN', 'RTAIL', 'RBLQLNRTAIL',
             'LONCTY'
            );
INSERT INTO rbsgbl_static_details
            (static_type_id, key_value_1, key_value_2, static_value_1,
             static_value_2
            )
     VALUES ('FND01', 'RBSLN', 'TRADE', 'RBLQLNTRADE',
             'LONCTY'
            );
INSERT INTO rbsgbl_static_details
            (static_type_id, key_value_1, key_value_2, static_value_1,
             static_value_2
            )
     VALUES ('FND01', 'RBSLN', 'UKASF', 'RBLQLNUKASF',
             'LONCTY'
            );
INSERT INTO rbsgbl_static_details
            (static_type_id, key_value_1, key_value_2, static_value_1,
             static_value_2
            )
     VALUES ('FND01', 'RBSLN', 'UKCB ', 'RBLQLNUKCB',
             'LONCTY'
            );
INSERT INTO rbsgbl_static_details
            (static_type_id, key_value_1, key_value_2, static_value_1,
             static_value_2
            )
     VALUES ('FND01', 'RBSLN', 'UKFIM', 'RBLQLNUKFIM',
             'LONCTY'
            );
INSERT INTO rbsgbl_static_details
            (static_type_id, key_value_1, key_value_2, static_value_1,
             static_value_2
            )
     VALUES ('FND01', 'RBSLN', 'UKPRF', 'RBLQLNUKPRF',
             'LONCTY'
            );
INSERT INTO rbsgbl_static_details
            (static_type_id, key_value_1, key_value_2, static_value_1,
             static_value_2
            )
     VALUES ('FND01', 'RBSLN', 'UKSHP', 'RBLQLNUKSHP',
             'LONCTY'
            );
INSERT INTO rbsgbl_static_details
            (static_type_id, key_value_1, key_value_2, static_value_1,
             static_value_2
            )
     VALUES ('FND01', 'RBSLN', 'UKWRH', 'RBLQLNTRADE',
             'LONCTY'
            );
INSERT INTO rbsgbl_static_details
            (static_type_id, key_value_1, key_value_2, static_value_1,
             static_value_2
            )
     VALUES ('FND01', 'NWBLN ', 'GBMCB', 'NWLQLNGBMCB',
             'NWLCTY'
            );
INSERT INTO rbsgbl_static_details
            (static_type_id, key_value_1, key_value_2, static_value_1,
             static_value_2
            )
     VALUES ('FND01', 'NWBLN ', 'GNWB1', 'NWLQLNTRADE',
             'NWLCTY'
            );
INSERT INTO rbsgbl_static_details
            (static_type_id, key_value_1, key_value_2, static_value_1,
             static_value_2
            )
     VALUES ('FND01', 'NWBLN ', 'GNWB2', 'NWLQLNTRADE',
             'NWLCTY'
            );
INSERT INTO rbsgbl_static_details
            (static_type_id, key_value_1, key_value_2, static_value_1,
             static_value_2
            )
     VALUES ('FND01', 'NWBLN ', 'GNWB3', 'NWLQLNTRADE',
             'NWLCTY'
            );
INSERT INTO rbsgbl_static_details
            (static_type_id, key_value_1, key_value_2, static_value_1,
             static_value_2
            )
     VALUES ('FND01', 'NWBLN ', 'GNWB4', 'NWLQLNTRADE',
             'NWLCTY'
            );
INSERT INTO rbsgbl_static_details
            (static_type_id, key_value_1, key_value_2, static_value_1,
             static_value_2
            )
     VALUES ('FND01', 'NWBLN ', 'GNWB5', 'NWLQLNTRADE',
             'NWLCTY'
            );
INSERT INTO rbsgbl_static_details
            (static_type_id, key_value_1, key_value_2, static_value_1,
             static_value_2
            )
     VALUES ('FND01', 'NWBLN ', 'GNWB6', 'NWLQLNTRADE',
             'NWLCTY'
            );
INSERT INTO rbsgbl_static_details
            (static_type_id, key_value_1, key_value_2, static_value_1,
             static_value_2
            )
     VALUES ('FND01', 'NWBLN ', 'GTR01', 'NWLQLNTRADE',
             'NWLCTY'
            );
INSERT INTO rbsgbl_static_details
            (static_type_id, key_value_1, key_value_2, static_value_1,
             static_value_2
            )
     VALUES ('FND01', 'NWBLN ', 'GTR02', 'NWLQLNTRADE',
             'NWLCTY'
            );
INSERT INTO rbsgbl_static_details
            (static_type_id, key_value_1, key_value_2, static_value_1,
             static_value_2
            )
     VALUES ('FND01', 'NWBLN ', 'GTR03', 'NWLQLNTRADE',
             'NWLCTY'
            );
INSERT INTO rbsgbl_static_details
            (static_type_id, key_value_1, key_value_2, static_value_1,
             static_value_2
            )
     VALUES ('FND01', 'NWBLN ', 'GTR04', 'NWLQLNTRADE',
             'NWLCTY'
            );
INSERT INTO rbsgbl_static_details
            (static_type_id, key_value_1, key_value_2, static_value_1,
             static_value_2
            )
     VALUES ('FND01', 'NWBLN ', 'GTR05', 'NWLQLNTRADE',
             'NWLCTY'
            );
INSERT INTO rbsgbl_static_details
            (static_type_id, key_value_1, key_value_2, static_value_1,
             static_value_2
            )
     VALUES ('FND01', 'NWBLN ', 'GTR06', 'NWLQLNTRADE',
             'NWLCTY'
            );
INSERT INTO rbsgbl_static_details
            (static_type_id, key_value_1, key_value_2, static_value_1,
             static_value_2
            )
     VALUES ('FND01', 'NWBLN ', 'GTR07', 'NWLQLNTRADE',
             'NWLCTY'
            );
INSERT INTO rbsgbl_static_details
            (static_type_id, key_value_1, key_value_2, static_value_1,
             static_value_2
            )
     VALUES ('FND01', 'NWBLN ', 'GTR08', 'NWLQLNTRADE',
             'NWLCTY'
            );
INSERT INTO rbsgbl_static_details
            (static_type_id, key_value_1, key_value_2, static_value_1,
             static_value_2
            )
     VALUES ('FND01', 'NWBLN ', 'GTR09', 'NWLQLNTRADE',
             'NWLCTY'
            );
INSERT INTO rbsgbl_static_details
            (static_type_id, key_value_1, key_value_2, static_value_1,
             static_value_2
            )
     VALUES ('FND01', 'NWBLN ', 'GTR10', 'NWLQLNTRADE',
             'NWLCTY'
            );
INSERT INTO rbsgbl_static_details
            (static_type_id, key_value_1, key_value_2, static_value_1,
             static_value_2
            )
     VALUES ('FND01', 'NWBLN ', 'GTR11', 'NWLQLNTRADE',
             'NWLCTY'
            );
INSERT INTO rbsgbl_static_details
            (static_type_id, key_value_1, key_value_2, static_value_1,
             static_value_2
            )
     VALUES ('FND01', 'NWBLN ', 'GTR12', 'NWLQLNTRADE',
             'NWLCTY'
            );
INSERT INTO rbsgbl_static_details
            (static_type_id, key_value_1, key_value_2, static_value_1,
             static_value_2
            )
     VALUES ('FND01', 'NWBLN ', 'GTR13', 'NWLQLNTRADE',
             'NWLCTY'
            );
INSERT INTO rbsgbl_static_details
            (static_type_id, key_value_1, key_value_2, static_value_1,
             static_value_2
            )
     VALUES ('FND01', 'NWBLN ', 'GTR14', 'NWLQLNTRADE',
             'NWLCTY'
            );
INSERT INTO rbsgbl_static_details
            (static_type_id, key_value_1, key_value_2, static_value_1,
             static_value_2
            )
     VALUES ('FND01', 'NWBLN ', 'GTR15', 'NWLQLNTRADE',
             'NWLCTY'
            );
INSERT INTO rbsgbl_static_details
            (static_type_id, key_value_1, key_value_2, static_value_1,
             static_value_2
            )
     VALUES ('FND01', 'NWBLN ', 'GTR16', 'NWLQLNTRADE',
             'NWLCTY'
            );
INSERT INTO rbsgbl_static_details
            (static_type_id, key_value_1, key_value_2, static_value_1,
             static_value_2
            )
     VALUES ('FND01', 'NWBLN ', 'GTR17', 'NWLQLNTRADE',
             'NWLCTY'
            );
INSERT INTO rbsgbl_static_details
            (static_type_id, key_value_1, key_value_2, static_value_1,
             static_value_2
            )
     VALUES ('FND01', 'NWBLN ', 'GTR18', 'NWLQLNTRADE',
             'NWLCTY'
            );
INSERT INTO rbsgbl_static_details
            (static_type_id, key_value_1, key_value_2, static_value_1,
             static_value_2
            )
     VALUES ('FND01', 'NWBLN ', 'GTR19', 'NWLQLNTRADE',
             'NWLCTY'
            );
INSERT INTO rbsgbl_static_details
            (static_type_id, key_value_1, key_value_2, static_value_1,
             static_value_2
            )
     VALUES ('FND01', 'NWBLN ', 'GTR20', 'NWLQLNTRADE',
             'NWLCTY'
            );
INSERT INTO rbsgbl_static_details
            (static_type_id, key_value_1, key_value_2, static_value_1,
             static_value_2
            )
     VALUES ('FND01', 'NWBLN ', 'GTR21', 'NWLQLNTRADE',
             'NWLCTY'
            );
INSERT INTO rbsgbl_static_details
            (static_type_id, key_value_1, key_value_2, static_value_1,
             static_value_2
            )
     VALUES ('FND01', 'NWBLN ', 'GTR22', 'NWLQLNTRADE',
             'NWLCTY'
            );
INSERT INTO rbsgbl_static_details
            (static_type_id, key_value_1, key_value_2, static_value_1,
             static_value_2
            )
     VALUES ('FND01', 'NWBLN ', 'IAS39', 'NWLQLNTRADE',
             'NWLCTY'
            );
INSERT INTO rbsgbl_static_details
            (static_type_id, key_value_1, key_value_2, static_value_1,
             static_value_2
            )
     VALUES ('FND01', 'NWBLN ', 'RTAIL', 'NWLQLNRTAIL',
             'NWLCTY'
            );
INSERT INTO rbsgbl_static_details
            (static_type_id, key_value_1, key_value_2, static_value_1,
             static_value_2
            )
     VALUES ('FND01', 'NWBLN ', 'TRADE', '',
             'NWLCTY'
            );
INSERT INTO rbsgbl_static_details
            (static_type_id, key_value_1, key_value_2, static_value_1,
             static_value_2
            )
     VALUES ('FND01', 'NWBLN ', 'UKASF', 'NWLQLNUKASF',
             'NWLCTY'
            );
INSERT INTO rbsgbl_static_details
            (static_type_id, key_value_1, key_value_2, static_value_1,
             static_value_2
            )
     VALUES ('FND01', 'NWBLN ', 'UKCB ', 'NWLQLNUKCB',
             'NWLCTY'
            );
INSERT INTO rbsgbl_static_details
            (static_type_id, key_value_1, key_value_2, static_value_1,
             static_value_2
            )
     VALUES ('FND01', 'NWBLN ', 'UKFIM', 'NWLQLNUKFIM',
             'NWLCTY'
            );
INSERT INTO rbsgbl_static_details
            (static_type_id, key_value_1, key_value_2, static_value_1,
             static_value_2
            )
     VALUES ('FND01', 'NWBLN ', 'UKPRF', '',
             'NWLCTY'
            );
INSERT INTO rbsgbl_static_details
            (static_type_id, key_value_1, key_value_2, static_value_1,
             static_value_2
            )
     VALUES ('FND01', 'NWBLN ', 'UKSHP', '',
             'NWLCTY'
            );
INSERT INTO rbsgbl_static_details
            (static_type_id, key_value_1, key_value_2, static_value_1,
             static_value_2
            )
     VALUES ('FND01', 'NWBLN ', 'UKWRH', '',
             'NWLCTY'
            );
INSERT INTO rbsgbl_static_details
            (static_type_id, key_value_1, key_value_2, static_value_1,
             static_value_2
            )
     VALUES ('FND01', 'RBSPR ', 'GBMCB', 'RBLQPRGBMCB',
             'LONCTY'
            );
INSERT INTO rbsgbl_static_details
            (static_type_id, key_value_1, key_value_2, static_value_1,
             static_value_2
            )
     VALUES ('FND01', 'RBSFF ', 'GBMCB', 'RBLQFFGBMCB',
             'LONCTY'
            );
INSERT INTO rbsgbl_static_details
            (static_type_id, key_value_1, key_value_2, static_value_1,
             static_value_2
            )
     VALUES ('FND01', 'RBSML ', 'GBMCB', 'RBLQMLGBMCB',
             'LONCTY'
            );
INSERT INTO rbsgbl_static_details
            (static_type_id, key_value_1, key_value_2, static_value_1,
             static_value_2
            )
     VALUES ('FND01', 'RBSMD', 'GBMCB', 'RBLQMDGBMCB',
             'LONCTY'
            );
INSERT INTO rbsgbl_static_details
            (static_type_id, key_value_1, key_value_2, static_value_1,
             static_value_2
            )
     VALUES ('FND01', 'RBSOS', 'GBMCB', 'RBLQOSGBMCB',
             'LONCTY'
            );
INSERT INTO rbsgbl_static_details
            (static_type_id, key_value_1, key_value_2, static_value_1,
             static_value_2
            )
     VALUES ('FND01', 'RBSHS', 'GBMCB', 'RBLQHSGBMCB',
             'LONCTY'
            );
INSERT INTO rbsgbl_static_details
            (static_type_id, key_value_1, key_value_2, static_value_1,
             static_value_2
            )
     VALUES ('FND01', 'RBSLB', 'GBMCB', 'RBLQLBGBMCB',
             'LONCTY'
            );
INSERT INTO rbsgbl_static_details
            (static_type_id, key_value_1, key_value_2, static_value_1,
             static_value_2
            )
     VALUES ('FND01', 'RBSSH', 'GBMCB', 'RBLQSHGBMCB',
             'LONCTY'
            );
  COMMIT;