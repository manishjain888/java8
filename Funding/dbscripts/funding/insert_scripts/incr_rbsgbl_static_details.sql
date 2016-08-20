/*
Module	:	Funding Interfaces
Author	:	Manish K Gupta
Date	:	03rd July 2008
Purpose	:	Entries to map branch specific funding details.
*/

SET DEFINE OFF;

Delete from RBSGBL_STATIC_DETAILS 
where static_type_id like '%FND%';

Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND01', 'RBSOS     ', 'GBMCB     ', 'RBLQOSLO                                                    ', 'LONCTY                                            ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND01', 'RBSHS     ', 'GBMCB     ', 'RBLQBHE                                                     ', 'LONCTY                                            ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND01', 'RBSLB     ', 'GBMCB     ', 'RBLQBLS                                                     ', 'LONCTY                                            ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND01', 'RBSSH     ', 'GBMCB     ', 'RBLQSTCK                                                    ', 'LONCTY                                            ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND01', 'RBSLN     ', 'GIASB     ', 'RBLQTRAD                                                    ', 'LONCTY                                            ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND01', 'NWBLN     ', 'UKSHP     ', 'NWLQASF                                                     ', 'NWLCTY                                            ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND01', 'RBSLN     ', 'GSDL4     ', 'RBLQTRAD                                                    ', 'LONCTY                                            ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND01', 'RBSLN     ', 'GSDL5     ', 'RBLQTRAD                                                    ', 'LONCTY                                            ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND01', 'NWBLN     ', 'IAS39     ', 'NWLQTRAD                                                    ', 'NWLCTY                                            ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND01', 'NWBLN     ', 'GMGTN     ', 'NWLQTRAD                                                    ', 'NWLCTY                                            ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND01', 'RBSLN     ', 'GBMCB     ', 'RBLQLGBM                                                    ', 'LONCTY                                            ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND01', 'RBSLN     ', 'GDIST     ', 'RBLQTRAD                                                    ', 'LONCTY                                            ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND01', 'RBSLN     ', 'GLEGC     ', 'RBLQTRAD                                                    ', 'LONCTY                                            ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND01', 'RBSLN     ', 'GRBS1     ', 'RBLQTRAD                                                    ', 'LONCTY                                            ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND01', 'RBSLN     ', 'GRBS2     ', 'RBLQTRAD                                                    ', 'LONCTY                                            ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND01', 'RBSLN     ', 'GRBS3     ', 'RBLQTRAD                                                    ', 'LONCTY                                            ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND01', 'RBSLN     ', 'GRBS4     ', 'RBLQTRAD                                                    ', 'LONCTY                                            ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND01', 'RBSLN     ', 'GRBS5     ', 'RBLQTRAD                                                    ', 'LONCTY                                            ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND01', 'RBSLN     ', 'GRBS6     ', 'RBLQTRAD                                                    ', 'LONCTY                                            ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND01', 'RBSLN     ', 'GSMTN     ', 'RBLQTRAD                                                    ', 'LONCTY                                            ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND01', 'RBSLN     ', 'GTROR     ', 'RBLQTRAD                                                    ', 'LONCTY                                            ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND01', 'RBSLN     ', 'GTR01     ', 'RBLQTRAD                                                    ', 'LONCTY                                            ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND01', 'RBSLN     ', 'GTR02     ', 'RBLQTRAD                                                    ', 'LONCTY                                            ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND01', 'RBSLN     ', 'GTR03     ', 'RBLQTRAD                                                    ', 'LONCTY                                            ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND01', 'RBSLN     ', 'GTR04     ', 'RBLQTRAD                                                    ', 'LONCTY                                            ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND01', 'RBSLN     ', 'GTR05     ', 'RBLQTRAD                                                    ', 'LONCTY                                            ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND01', 'RBSLN     ', 'GTR06     ', 'RBLQTRAD                                                    ', 'LONCTY                                            ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND01', 'RBSLN     ', 'GTR07     ', 'RBLQTRAD                                                    ', 'LONCTY                                            ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND01', 'RBSLN     ', 'GTR08     ', 'RBLQTRAD                                                    ', 'LONCTY                                            ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND01', 'RBSLN     ', 'GTR09     ', 'RBLQTRAD                                                    ', 'LONCTY                                            ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND01', 'RBSLN     ', 'GTR10     ', 'RBLQTRAD                                                    ', 'LONCTY                                            ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND01', 'RBSLN     ', 'GTR11     ', 'RBLQTRAD                                                    ', 'LONCTY                                            ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND01', 'RBSLN     ', 'GTR12     ', 'RBLQTRAD                                                    ', 'LONCTY                                            ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND01', 'RBSLN     ', 'GTR13     ', 'RBLQTRAD                                                    ', 'LONCTY                                            ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND01', 'RBSLN     ', 'GTR14     ', 'RBLQTRAD                                                    ', 'LONCTY                                            ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND01', 'RBSLN     ', 'GTR15     ', 'RBLQTRAD                                                    ', 'LONCTY                                            ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND01', 'RBSLN     ', 'GTR16     ', 'RBLQTRAD                                                    ', 'LONCTY                                            ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND01', 'RBSLN     ', 'GTR17     ', 'RBLQTRAD                                                    ', 'LONCTY                                            ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND01', 'RBSLN     ', 'GTR18     ', 'RBLQTRAD                                                    ', 'LONCTY                                            ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND01', 'RBSLN     ', 'GTR19     ', 'RBLQTRAD                                                    ', 'LONCTY                                            ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND01', 'RBSLN     ', 'GTR20     ', 'RBLQTRAD                                                    ', 'LONCTY                                            ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND01', 'RBSLN     ', 'GTR21     ', 'RBLQTRAD                                                    ', 'LONCTY                                            ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND01', 'RBSLN     ', 'GTR22     ', 'RBLQTRAD                                                    ', 'LONCTY                                            ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND01', 'RBSLN     ', 'IAS39     ', 'RBLQTRAD                                                    ', 'LONCTY                                            ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND01', 'RBSLN     ', 'PIRAS     ', 'RBLQPIR                                                     ', 'LONCTY                                            ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND01', 'RBSLN     ', 'RTAIL     ', 'RBLQRET                                                     ', 'LONCTY                                            ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND01', 'RBSLN     ', 'GSDL3     ', 'RBLQTRAD                                                    ', 'LONCTY                                            ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND01', 'RBSLN     ', 'TRADE     ', 'RBLQTRAD                                                    ', 'LONCTY                                            ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND01', 'RBSLN     ', 'UKASF     ', 'RBLQASF                                                     ', 'LONCTY                                            ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND01', 'RBSLN     ', 'UKCB      ', 'RBLQUKCB                                                    ', 'LONCTY                                            ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND01', 'RBSLN     ', 'UKFIM     ', 'RBLQCBFM                                                    ', 'LONCTY                                            ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND01', 'RBSLN     ', 'UKPRF     ', 'RBLQPRF                                                     ', 'LONCTY                                            ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND01', 'RBSLN     ', 'UKSHP     ', 'RBLQSHIP                                                    ', 'LONCTY                                            ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND01', 'RBSLN     ', 'UKWRH     ', 'RBLQTRAD                                                    ', 'LONCTY                                            ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND01', 'NWBLN     ', 'GBMCB     ', 'NWLQGBM                                                     ', 'NWLCTY                                            ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND01', 'NWBLN     ', 'GNWB1     ', 'NWLQTRAD                                                    ', 'NWLCTY                                            ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND01', 'NWBLN     ', 'GNWB2     ', 'NWLQTRAD                                                    ', 'NWLCTY                                            ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND01', 'NWBLN     ', 'GNWB3     ', 'NWLQTRAD                                                    ', 'NWLCTY                                            ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND01', 'NWBLN     ', 'GNWB4     ', 'NWLQTRAD                                                    ', 'NWLCTY                                            ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND01', 'NWBLN     ', 'GNWB5     ', 'NWLQTRAD                                                    ', 'NWLCTY                                            ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND01', 'NWBLN     ', 'GNWB6     ', 'NWLQTRAD                                                    ', 'NWLCTY                                            ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND01', 'NWBLN     ', 'RTAIL     ', 'NWLQRET                                                     ', 'NWLCTY                                            ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND01', 'NWBLN     ', 'UKASF     ', 'NWLQASF                                                     ', 'NWLCTY                                            ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND01', 'NWBLN     ', 'UKCB      ', 'NWLQUKCB                                                    ', 'NWLCTY                                            ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND01', 'NWBLN     ', 'UKFIM     ', 'NWLQLFM                                                     ', 'NWLCTY                                            ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND01', 'RBSPR     ', 'GBMCB     ', 'RBLQBPA                                                     ', 'LONCTY                                            ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND01', 'RBSFF     ', 'GBMCB     ', 'RBLQBFF                                                     ', 'LONCTY                                            ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND01', 'RBSML     ', 'GBMCB     ', 'RBLQMIL                                                     ', 'LONCTY                                            ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND01', 'RBSMD     ', 'GBMCB     ', 'RBLQMAD                                                     ', 'LONCTY                                            ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSLN     ', 'CHF       ', 'LNCYMM                                                      ', 'ACBSCCY                                           ', '3                                                 ', '5000000                                           ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSLN     ', 'DKK       ', 'LNCYMM                                                      ', 'ACBSCCY                                           ', '3                                                 ', '15000000                                          ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSLN     ', 'EUR       ', 'LNCYMM                                                      ', 'ACBSCCY                                           ', '3                                                 ', '1000000                                           ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSLN     ', 'GBP       ', 'LNSTMM                                                      ', 'ACBSGBP                                           ', '3                                                 ', '10000000                                          ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSLN     ', 'HKD       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSLN     ', 'HUF       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSLN     ', 'IDR       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSLN     ', 'INR       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSLN     ', 'JPY       ', 'LNCYMM                                                      ', 'ACBSCCY                                           ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBMDL     ', 'SAR       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBMDL     ', 'SEK       ', 'LNCYMM                                                      ', 'ACBSCCY                                           ', '3                                                 ', '15000000                                          ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBMDL     ', 'SGD       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ', '358392.109639314                                  ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBMDL     ', 'THB       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBMDL     ', 'USD       ', 'LNCYMM                                                      ', 'ACBSCCY                                           ', '3                                                 ', '10000000                                          ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBMDL     ', 'ZAR       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ', '62139.59037582                                    ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBMDL     ', 'MXN       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBMDL     ', 'ISK       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBMDL     ', 'SKK       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBMDL     ', 'PLN       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ', '213883.155632078                                  ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBMDL     ', 'QAR       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBMDL     ', 'CZK       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBMDL     ', 'EGP       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSOS     ', 'AED       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSOS     ', 'AUD       ', 'LNCYMM                                                      ', 'ACBSCCY                                           ', '3                                                 ', '5000000                                           ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSOS     ', 'BHD       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSOS     ', 'CAD       ', 'LNCYMM                                                      ', 'ACBSCCY                                           ', '3                                                 ', '5000000                                           ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSOS     ', 'CHF       ', 'LNCYMM                                                      ', 'ACBSCCY                                           ', '3                                                 ', '5000000                                           ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSOS     ', 'DKK       ', 'LNCYMM                                                      ', 'ACBSCCY                                           ', '3                                                 ', '15000000                                          ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSOS     ', 'EUR       ', 'LNCYMM                                                      ', 'ACBSCCY                                           ', '3                                                 ', '1000000                                           ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSOS     ', 'GBP       ', 'LNSTMM                                                      ', 'ACBSGBP                                           ', '3                                                 ', '10000000                                          ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSOS     ', 'HKD       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSOS     ', 'HUF       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSOS     ', 'IDR       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSOS     ', 'INR       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSOS     ', 'JPY       ', 'LNCYMM                                                      ', 'ACBSCCY                                           ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSOS     ', 'KWD       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSOS     ', 'MYR       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSOS     ', 'NOK       ', 'LNCYMM                                                      ', 'ACBSCCY                                           ', '3                                                 ', '15000000                                          ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSOS     ', 'NZD       ', 'LNCYMM                                                      ', 'ACBSCCY                                           ', '3                                                 ', '5000000                                           ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSOS     ', 'SAR       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSOS     ', 'SEK       ', 'LNCYMM                                                      ', 'ACBSCCY                                           ', '3                                                 ', '15000000                                          ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSOS     ', 'SGD       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ', '358392.109639314                                  ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSOS     ', 'THB       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSOS     ', 'USD       ', 'LNCYMM                                                      ', 'ACBSCCY                                           ', '3                                                 ', '10000000                                          ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSMD     ', 'HUF       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSOS     ', 'ZAR       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ', '62139.59037582                                    ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSOS     ', 'MXN       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSOS     ', 'ISK       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSOS     ', 'SKK       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSOS     ', 'PLN       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ', '213883.155632078                                  ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSOS     ', 'QAR       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSOS     ', 'CZK       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSOS     ', 'EGP       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSHS     ', 'AED       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSHS     ', 'AUD       ', 'LNCYMM                                                      ', 'ACBSCCY                                           ', '3                                                 ', '5000000                                           ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSHS     ', 'BHD       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSHS     ', 'CAD       ', 'LNCYMM                                                      ', 'ACBSCCY                                           ', '3                                                 ', '5000000                                           ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSHS     ', 'CHF       ', 'LNCYMM                                                      ', 'ACBSCCY                                           ', '3                                                 ', '5000000                                           ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSHS     ', 'DKK       ', 'LNCYMM                                                      ', 'ACBSCCY                                           ', '3                                                 ', '15000000                                          ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSHS     ', 'EUR       ', 'LNCYMM                                                      ', 'ACBSCCY                                           ', '3                                                 ', '1000000                                           ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSHS     ', 'GBP       ', 'LNSTMM                                                      ', 'ACBSGBP                                           ', '3                                                 ', '10000000                                          ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSHS     ', 'HKD       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSHS     ', 'HUF       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSHS     ', 'IDR       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSHS     ', 'INR       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSHS     ', 'JPY       ', 'LNCYMM                                                      ', 'ACBSCCY                                           ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSHS     ', 'KWD       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSHS     ', 'MYR       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSHS     ', 'NOK       ', 'LNCYMM                                                      ', 'ACBSCCY                                           ', '3                                                 ', '15000000                                          ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSLN     ', 'AED       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSLN     ', 'AUD       ', 'LNCYMM                                                      ', 'ACBSCCY                                           ', '3                                                 ', '5000000                                           ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSLN     ', 'BHD       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSLN     ', 'CAD       ', 'LNCYMM                                                      ', 'ACBSCCY                                           ', '3                                                 ', '5000000                                           ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSML     ', 'INR       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSML     ', 'JPY       ', 'LNCYMM                                                      ', 'ACBSCCY                                           ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSML     ', 'KWD       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSML     ', 'MYR       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSML     ', 'NOK       ', 'LNCYMM                                                      ', 'ACBSCCY                                           ', '3                                                 ', '15000000                                          ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSML     ', 'NZD       ', 'LNCYMM                                                      ', 'ACBSCCY                                           ', '3                                                 ', '5000000                                           ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSML     ', 'SAR       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSML     ', 'SEK       ', 'LNCYMM                                                      ', 'ACBSCCY                                           ', '3                                                 ', '15000000                                          ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSML     ', 'SGD       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ', '358392.109639314                                  ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSML     ', 'THB       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSML     ', 'USD       ', 'LNCYMM                                                      ', 'ACBSCCY                                           ', '3                                                 ', '10000000                                          ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSML     ', 'ZAR       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ', '62139.59037582                                    ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSML     ', 'MXN       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSML     ', 'ISK       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSML     ', 'SKK       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSML     ', 'PLN       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ', '213883.155632078                                  ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSML     ', 'QAR       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSML     ', 'CZK       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSML     ', 'EGP       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSMD     ', 'AED       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSMD     ', 'AUD       ', 'LNCYMM                                                      ', 'ACBSCCY                                           ', '3                                                 ', '5000000                                           ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSMD     ', 'BHD       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSMD     ', 'CAD       ', 'LNCYMM                                                      ', 'ACBSCCY                                           ', '3                                                 ', '5000000                                           ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSMD     ', 'CHF       ', 'LNCYMM                                                      ', 'ACBSCCY                                           ', '3                                                 ', '5000000                                           ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSMD     ', 'DKK       ', 'LNCYMM                                                      ', 'ACBSCCY                                           ', '3                                                 ', '15000000                                          ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSMD     ', 'EUR       ', 'LNCYMM                                                      ', 'ACBSCCY                                           ', '3                                                 ', '1000000                                           ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSMD     ', 'GBP       ', 'LNSTMM                                                      ', 'ACBSGBP                                           ', '3                                                 ', '10000000                                          ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSMD     ', 'IDR       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSMD     ', 'INR       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSMD     ', 'JPY       ', 'LNCYMM                                                      ', 'ACBSCCY                                           ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSMD     ', 'KWD       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSMD     ', 'MYR       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSMD     ', 'NOK       ', 'LNCYMM                                                      ', 'ACBSCCY                                           ', '3                                                 ', '15000000                                          ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSMD     ', 'NZD       ', 'LNCYMM                                                      ', 'ACBSCCY                                           ', '3                                                 ', '5000000                                           ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSMD     ', 'SAR       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSMD     ', 'SEK       ', 'LNCYMM                                                      ', 'ACBSCCY                                           ', '3                                                 ', '15000000                                          ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSMD     ', 'SGD       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ', '358392.109639314                                  ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSMD     ', 'THB       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSMD     ', 'USD       ', 'LNCYMM                                                      ', 'ACBSCCY                                           ', '3                                                 ', '10000000                                          ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSMD     ', 'ZAR       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ', '62139.59037582                                    ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSMD     ', 'MXN       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSMD     ', 'ISK       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSMD     ', 'SKK       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSMD     ', 'PLN       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ', '213883.155632078                                  ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSMD     ', 'QAR       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSMD     ', 'CZK       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSMD     ', 'EGP       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBMDL     ', 'AED       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBMDL     ', 'AUD       ', 'LNCYMM                                                      ', 'ACBSCCY                                           ', '3                                                 ', '5000000                                           ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBMDL     ', 'BHD       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBMDL     ', 'CAD       ', 'LNCYMM                                                      ', 'ACBSCCY                                           ', '3                                                 ', '5000000                                           ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBMDL     ', 'CHF       ', 'LNCYMM                                                      ', 'ACBSCCY                                           ', '3                                                 ', '5000000                                           ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBMDL     ', 'DKK       ', 'LNCYMM                                                      ', 'ACBSCCY                                           ', '3                                                 ', '15000000                                          ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBMDL     ', 'EUR       ', 'LNCYMM                                                      ', 'ACBSCCY                                           ', '3                                                 ', '1000000                                           ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBMDL     ', 'GBP       ', 'LNSTMM                                                      ', 'ACBSGBP                                           ', '3                                                 ', '10000000                                          ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBMDL     ', 'HKD       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBMDL     ', 'HUF       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBMDL     ', 'IDR       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBMDL     ', 'INR       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBMDL     ', 'JPY       ', 'LNCYMM                                                      ', 'ACBSCCY                                           ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBMDL     ', 'KWD       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBMDL     ', 'MYR       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBMDL     ', 'NOK       ', 'LNCYMM                                                      ', 'ACBSCCY                                           ', '3                                                 ', '15000000                                          ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBMDL     ', 'NZD       ', 'LNCYMM                                                      ', 'ACBSCCY                                           ', '3                                                 ', '5000000                                           ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSPR     ', 'GBP       ', 'LNSTMM                                                      ', 'ACBSGBP                                           ', '3                                                 ', '10000000                                          ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSPR     ', 'HKD       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSPR     ', 'HUF       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSPR     ', 'IDR       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSPR     ', 'INR       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSPR     ', 'JPY       ', 'LNCYMM                                                      ', 'ACBSCCY                                           ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSPR     ', 'KWD       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSPR     ', 'MYR       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSPR     ', 'NOK       ', 'LNCYMM                                                      ', 'ACBSCCY                                           ', '3                                                 ', '15000000                                          ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSPR     ', 'NZD       ', 'LNCYMM                                                      ', 'ACBSCCY                                           ', '3                                                 ', '5000000                                           ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSPR     ', 'SAR       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSPR     ', 'SEK       ', 'LNCYMM                                                      ', 'ACBSCCY                                           ', '3                                                 ', '15000000                                          ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSPR     ', 'SGD       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ', '358392.109639314                                  ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSPR     ', 'THB       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSPR     ', 'USD       ', 'LNCYMM                                                      ', 'ACBSCCY                                           ', '3                                                 ', '10000000                                          ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSPR     ', 'ZAR       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ', '62139.59037582                                    ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSPR     ', 'MXN       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSPR     ', 'ISK       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSPR     ', 'SKK       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSPR     ', 'PLN       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ', '213883.155632078                                  ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSPR     ', 'QAR       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSPR     ', 'CZK       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSPR     ', 'EGP       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSFF     ', 'AED       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSFF     ', 'AUD       ', 'LNCYMM                                                      ', 'ACBSCCY                                           ', '3                                                 ', '5000000                                           ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSFF     ', 'BHD       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSFF     ', 'CAD       ', 'LNCYMM                                                      ', 'ACBSCCY                                           ', '3                                                 ', '5000000                                           ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSFF     ', 'CHF       ', 'LNCYMM                                                      ', 'ACBSCCY                                           ', '3                                                 ', '5000000                                           ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSFF     ', 'DKK       ', 'LNCYMM                                                      ', 'ACBSCCY                                           ', '3                                                 ', '15000000                                          ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSFF     ', 'EUR       ', 'LNCYMM                                                      ', 'ACBSCCY                                           ', '3                                                 ', '1000000                                           ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSFF     ', 'GBP       ', 'LNSTMM                                                      ', 'ACBSGBP                                           ', '3                                                 ', '10000000                                          ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSFF     ', 'HKD       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSFF     ', 'HUF       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSFF     ', 'IDR       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSFF     ', 'INR       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSFF     ', 'JPY       ', 'LNCYMM                                                      ', 'ACBSCCY                                           ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSFF     ', 'KWD       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSFF     ', 'MYR       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSFF     ', 'NOK       ', 'LNCYMM                                                      ', 'ACBSCCY                                           ', '3                                                 ', '15000000                                          ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSFF     ', 'NZD       ', 'LNCYMM                                                      ', 'ACBSCCY                                           ', '3                                                 ', '5000000                                           ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSFF     ', 'SAR       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSFF     ', 'SEK       ', 'LNCYMM                                                      ', 'ACBSCCY                                           ', '3                                                 ', '15000000                                          ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSFF     ', 'SGD       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ', '358392.109639314                                  ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSFF     ', 'THB       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSFF     ', 'USD       ', 'LNCYMM                                                      ', 'ACBSCCY                                           ', '3                                                 ', '10000000                                          ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSFF     ', 'ZAR       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ', '62139.59037582                                    ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSFF     ', 'MXN       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSFF     ', 'ISK       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSFF     ', 'SKK       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSFF     ', 'PLN       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ', '213883.155632078                                  ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSFF     ', 'QAR       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSFF     ', 'CZK       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSFF     ', 'EGP       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSML     ', 'AED       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSML     ', 'AUD       ', 'LNCYMM                                                      ', 'ACBSCCY                                           ', '3                                                 ', '5000000                                           ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSML     ', 'BHD       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSML     ', 'CAD       ', 'LNCYMM                                                      ', 'ACBSCCY                                           ', '3                                                 ', '5000000                                           ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSML     ', 'CHF       ', 'LNCYMM                                                      ', 'ACBSCCY                                           ', '3                                                 ', '5000000                                           ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSML     ', 'DKK       ', 'LNCYMM                                                      ', 'ACBSCCY                                           ', '3                                                 ', '15000000                                          ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSML     ', 'EUR       ', 'LNCYMM                                                      ', 'ACBSCCY                                           ', '3                                                 ', '1000000                                           ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSML     ', 'GBP       ', 'LNSTMM                                                      ', 'ACBSGBP                                           ', '3                                                 ', '10000000                                          ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSML     ', 'HKD       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSML     ', 'HUF       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSML     ', 'IDR       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSSH     ', 'THB       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSSH     ', 'USD       ', 'LNCYMM                                                      ', 'ACBSCCY                                           ', '3                                                 ', '10000000                                          ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSSH     ', 'ZAR       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ', '62139.59037582                                    ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSSH     ', 'MXN       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSSH     ', 'ISK       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSSH     ', 'SKK       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSSH     ', 'PLN       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ', '213883.155632078                                  ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSSH     ', 'QAR       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSSH     ', 'CZK       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSSH     ', 'EGP       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'NWBLN     ', 'AED       ', 'EMERMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'NWBLN     ', 'AUD       ', 'NWNABK                                                      ', 'ACBSNA                                            ', '3                                                 ', '5000000                                           ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'NWBLN     ', 'BHD       ', 'EMERMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'NWBLN     ', 'CAD       ', 'NWNABK                                                      ', 'ACBSNA                                            ', '3                                                 ', '5000000                                           ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'NWBLN     ', 'CHF       ', 'NWNABK                                                      ', 'ACBSNA                                            ', '3                                                 ', '5000000                                           ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'NWBLN     ', 'DKK       ', 'NWNABK                                                      ', 'ACBSNA                                            ', '3                                                 ', '15000000                                          ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'NWBLN     ', 'EUR       ', 'NWNABK                                                      ', 'ACBSNA                                            ', '3                                                 ', '1000000                                           ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'NWBLN     ', 'GBP       ', 'NWGBBK                                                      ', 'ACBSGB                                            ', '3                                                 ', '10000000                                          ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'NWBLN     ', 'HKD       ', 'EMERMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'NWBLN     ', 'HUF       ', 'EMERMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'NWBLN     ', 'IDR       ', 'EMERMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'NWBLN     ', 'INR       ', 'EMERMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'NWBLN     ', 'JPY       ', 'NWNABK                                                      ', 'ACBSNA                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'NWBLN     ', 'KWD       ', 'EMERMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'NWBLN     ', 'MYR       ', 'EMERMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'NWBLN     ', 'NOK       ', 'NWNABK                                                      ', 'ACBSNA                                            ', '3                                                 ', '15000000                                          ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'NWBLN     ', 'NZD       ', 'NWNABK                                                      ', 'ACBSNA                                            ', '3                                                 ', '5000000                                           ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'NWBLN     ', 'SAR       ', 'EMERMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'NWBLN     ', 'SEK       ', 'NWNABK                                                      ', 'ACBSNA                                            ', '3                                                 ', '15000000                                          ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'NWBLN     ', 'SGD       ', 'EMERMM                                                      ', 'ACBSEM                                            ', '3                                                 ', '358392.109639314                                  ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'NWBLN     ', 'THB       ', 'EMERMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'NWBLN     ', 'USD       ', 'NWNABK                                                      ', 'ACBSNA                                            ', '3                                                 ', '10000000                                          ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'NWBLN     ', 'ZAR       ', 'EMERMM                                                      ', 'ACBSEM                                            ', '3                                                 ', '62139.59037582                                    ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'NWBLN     ', 'MXN       ', 'EMERMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'NWBLN     ', 'ISK       ', 'EMERMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'NWBLN     ', 'SKK       ', 'EMERMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'NWBLN     ', 'PLN       ', 'EMERMM                                                      ', 'ACBSEM                                            ', '3                                                 ', '213883.155632078                                  ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'NWBLN     ', 'QAR       ', 'EMERMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'NWBLN     ', 'CZK       ', 'EMERMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'NWBLN     ', 'EGP       ', 'EMERMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSLN     ', 'KWD       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSLN     ', 'MYR       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSLN     ', 'NOK       ', 'LNCYMM                                                      ', 'ACBSCCY                                           ', '3                                                 ', '15000000                                          ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSLN     ', 'NZD       ', 'LNCYMM                                                      ', 'ACBSCCY                                           ', '3                                                 ', '5000000                                           ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSLN     ', 'SAR       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSLN     ', 'SEK       ', 'LNCYMM                                                      ', 'ACBSCCY                                           ', '3                                                 ', '15000000                                          ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSLN     ', 'SGD       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ', '358392.109639314                                  ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSLN     ', 'THB       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSLN     ', 'USD       ', 'LNCYMM                                                      ', 'ACBSCCY                                           ', '3                                                 ', '10000000                                          ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSLN     ', 'ZAR       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ', '62139.59037582                                    ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSLN     ', 'MXN       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSLN     ', 'ISK       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSLN     ', 'SKK       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSLN     ', 'PLN       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ', '213883.155632078                                  ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSLN     ', 'QAR       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSLN     ', 'CZK       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSLN     ', 'EGP       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSPR     ', 'AED       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSPR     ', 'AUD       ', 'LNCYMM                                                      ', 'ACBSCCY                                           ', '3                                                 ', '5000000                                           ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSPR     ', 'BHD       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSPR     ', 'CAD       ', 'LNCYMM                                                      ', 'ACBSCCY                                           ', '3                                                 ', '5000000                                           ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSPR     ', 'CHF       ', 'LNCYMM                                                      ', 'ACBSCCY                                           ', '3                                                 ', '5000000                                           ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSPR     ', 'DKK       ', 'LNCYMM                                                      ', 'ACBSCCY                                           ', '3                                                 ', '15000000                                          ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSPR     ', 'EUR       ', 'LNCYMM                                                      ', 'ACBSCCY                                           ', '3                                                 ', '1000000                                           ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSHS     ', 'NZD       ', 'LNCYMM                                                      ', 'ACBSCCY                                           ', '3                                                 ', '5000000                                           ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSHS     ', 'SAR       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSHS     ', 'SEK       ', 'LNCYMM                                                      ', 'ACBSCCY                                           ', '3                                                 ', '15000000                                          ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSHS     ', 'SGD       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ', '358392.109639314                                  ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSHS     ', 'THB       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSHS     ', 'USD       ', 'LNCYMM                                                      ', 'ACBSCCY                                           ', '3                                                 ', '10000000                                          ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSHS     ', 'ZAR       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ', '62139.59037582                                    ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSHS     ', 'MXN       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSHS     ', 'ISK       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSHS     ', 'SKK       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSHS     ', 'PLN       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ', '213883.155632078                                  ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSHS     ', 'QAR       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSHS     ', 'CZK       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSHS     ', 'EGP       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSLB     ', 'AED       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSLB     ', 'AUD       ', 'LNCYMM                                                      ', 'ACBSCCY                                           ', '3                                                 ', '5000000                                           ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSLB     ', 'BHD       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSLB     ', 'CAD       ', 'LNCYMM                                                      ', 'ACBSCCY                                           ', '3                                                 ', '5000000                                           ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSLB     ', 'CHF       ', 'LNCYMM                                                      ', 'ACBSCCY                                           ', '3                                                 ', '5000000                                           ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSLB     ', 'DKK       ', 'LNCYMM                                                      ', 'ACBSCCY                                           ', '3                                                 ', '15000000                                          ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSLB     ', 'EUR       ', 'LNCYMM                                                      ', 'ACBSCCY                                           ', '3                                                 ', '1000000                                           ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSLB     ', 'GBP       ', 'LNSTMM                                                      ', 'ACBSGBP                                           ', '3                                                 ', '10000000                                          ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSLB     ', 'HKD       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSLB     ', 'HUF       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSLB     ', 'IDR       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSLB     ', 'INR       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSLB     ', 'JPY       ', 'LNCYMM                                                      ', 'ACBSCCY                                           ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSLB     ', 'KWD       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSLB     ', 'MYR       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSLB     ', 'NOK       ', 'LNCYMM                                                      ', 'ACBSCCY                                           ', '3                                                 ', '15000000                                          ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSLB     ', 'NZD       ', 'LNCYMM                                                      ', 'ACBSCCY                                           ', '3                                                 ', '5000000                                           ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSLB     ', 'SAR       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSLB     ', 'SEK       ', 'LNCYMM                                                      ', 'ACBSCCY                                           ', '3                                                 ', '15000000                                          ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSLB     ', 'SGD       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ', '358392.109639314                                  ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSLB     ', 'THB       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSLB     ', 'USD       ', 'LNCYMM                                                      ', 'ACBSCCY                                           ', '3                                                 ', '10000000                                          ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSLB     ', 'ZAR       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ', '62139.59037582                                    ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSLB     ', 'MXN       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSLB     ', 'ISK       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSLB     ', 'SKK       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSLB     ', 'PLN       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ', '213883.155632078                                  ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSLB     ', 'QAR       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSLB     ', 'CZK       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSLB     ', 'EGP       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSSH     ', 'AED       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSSH     ', 'AUD       ', 'LNCYMM                                                      ', 'ACBSCCY                                           ', '3                                                 ', '5000000                                           ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSSH     ', 'BHD       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSSH     ', 'CAD       ', 'LNCYMM                                                      ', 'ACBSCCY                                           ', '3                                                 ', '5000000                                           ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSSH     ', 'CHF       ', 'LNCYMM                                                      ', 'ACBSCCY                                           ', '3                                                 ', '5000000                                           ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSSH     ', 'DKK       ', 'LNCYMM                                                      ', 'ACBSCCY                                           ', '3                                                 ', '15000000                                          ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSSH     ', 'EUR       ', 'LNCYMM                                                      ', 'ACBSCCY                                           ', '3                                                 ', '1000000                                           ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSSH     ', 'GBP       ', 'LNSTMM                                                      ', 'ACBSGBP                                           ', '3                                                 ', '10000000                                          ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSSH     ', 'HKD       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSSH     ', 'HUF       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSSH     ', 'IDR       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSSH     ', 'INR       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSSH     ', 'JPY       ', 'LNCYMM                                                      ', 'ACBSCCY                                           ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSSH     ', 'KWD       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSSH     ', 'MYR       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSSH     ', 'NOK       ', 'LNCYMM                                                      ', 'ACBSCCY                                           ', '3                                                 ', '15000000                                          ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSSH     ', 'NZD       ', 'LNCYMM                                                      ', 'ACBSCCY                                           ', '3                                                 ', '5000000                                           ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3)
 Values
   ('FND02', 'RBSSH     ', 'SAR       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSSH     ', 'SEK       ', 'LNCYMM                                                      ', 'ACBSCCY                                           ', '3                                                 ', '15000000                                          ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND02', 'RBSSH     ', 'SGD       ', 'EMKTMM                                                      ', 'ACBSEM                                            ', '3                                                 ', '358392.109639314                                  ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND03', 'RBSSH     ', 'CORP      ', 'Corporate Bonds                                             ', 'CBLT                                              ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND03', 'RBSSH     ', 'LEASE     ', 'Lease                                                       ', 'CBLT                                              ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_4)
 Values
   ('FND03', 'NWBLN     ', 'DEPOS     ', 'Deposit                                                     ', 'CBDT                                              ', 'GBMCB                                             ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND03', 'NWBLN     ', 'LISTT     ', 'Loans - IST                                                 ', 'CBLT                                              ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND03', 'NWBLN     ', 'LOAN      ', 'Loans                                                       ', 'CBLT                                              ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND03', 'NWBLN     ', 'LPIK      ', 'Loans - PIK                                                 ', 'CBLT                                              ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_4)
 Values
   ('FND03', 'RBMDL     ', 'DEPOS     ', 'Deposit                                                     ', 'CBDT                                              ', 'GBMCB                                             ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND03', 'RBMDL     ', 'LISTT     ', 'Loans - IST                                                 ', 'CBLT                                              ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND03', 'RBMDL     ', 'LOAN      ', 'Loans                                                       ', 'CBLT                                              ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND03', 'RBMDL     ', 'LPIK      ', 'Loans - PIK                                                 ', 'CBLT                                              ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_4)
 Values
   ('FND03', 'RBSFF     ', 'DEPOS     ', 'Deposit                                                     ', 'CBDT                                              ', 'GBMCB                                             ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND03', 'RBSFF     ', 'LISTT     ', 'Loans - IST                                                 ', 'CBLT                                              ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND03', 'RBSFF     ', 'LOAN      ', 'Loans                                                       ', 'CBLT                                              ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND03', 'RBSFF     ', 'LPIK      ', 'Loans - PIK                                                 ', 'CBLT                                              ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_4)
 Values
   ('FND03', 'RBSHS     ', 'DEPOS     ', 'Deposit                                                     ', 'CBDT                                              ', 'GBMCB                                             ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND03', 'RBSHS     ', 'LISTT     ', 'Loans - IST                                                 ', 'CBLT                                              ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND03', 'RBSHS     ', 'LOAN      ', 'Loans                                                       ', 'CBLT                                              ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND03', 'RBSHS     ', 'LPIK      ', 'Loans - PIK                                                 ', 'CBLT                                              ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_4)
 Values
   ('FND03', 'RBSLB     ', 'DEPOS     ', 'Deposit                                                     ', 'CBDT                                              ', 'GBMCB                                             ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND03', 'RBSLB     ', 'LISTT     ', 'Loans - IST                                                 ', 'CBLT                                              ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND03', 'RBSLB     ', 'LOAN      ', 'Loans                                                       ', 'CBLT                                              ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND03', 'RBSLB     ', 'LPIK      ', 'Loans - PIK                                                 ', 'CBLT                                              ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4)
 Values
   ('FND03', 'RBSLN     ', 'DEPOS     ', 'Deposit                                                     ', 'CBDT                                              ', 'UKCB                                              ', 'GBMCB                                             ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND03', 'RBSLN     ', 'LISTT     ', 'Loans - IST                                                 ', 'CBLT                                              ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND03', 'RBSLN     ', 'LOAN      ', 'Loans                                                       ', 'CBLT                                              ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND03', 'RBSLN     ', 'LPIK      ', 'Loans - PIK                                                 ', 'CBLT                                              ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_4)
 Values
   ('FND03', 'RBSMD     ', 'DEPOS     ', 'Deposit                                                     ', 'CBDT                                              ', 'GBMCB                                             ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND03', 'RBSMD     ', 'LISTT     ', 'Loans - IST                                                 ', 'CBLT                                              ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND03', 'RBSMD     ', 'LOAN      ', 'Loans                                                       ', 'CBLT                                              ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND03', 'RBSMD     ', 'LPIK      ', 'Loans - PIK                                                 ', 'CBLT                                              ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_4)
 Values
   ('FND03', 'RBSML     ', 'DEPOS     ', 'Deposit                                                     ', 'CBDT                                              ', 'GBMCB                                             ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND03', 'RBSML     ', 'LISTT     ', 'Loans - IST                                                 ', 'CBLT                                              ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND03', 'RBSML     ', 'LOAN      ', 'Loans                                                       ', 'CBLT                                              ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND03', 'RBSML     ', 'LPIK      ', 'Loans - PIK                                                 ', 'CBLT                                              ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_4)
 Values
   ('FND03', 'RBSOS     ', 'DEPOS     ', 'Deposit                                                     ', 'CBDT                                              ', 'GBMCB                                             ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND03', 'RBSOS     ', 'LISTT     ', 'Loans - IST                                                 ', 'CBLT                                              ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND03', 'RBSOS     ', 'LOAN      ', 'Loans                                                       ', 'CBLT                                              ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND03', 'RBSOS     ', 'LPIK      ', 'Loans - PIK                                                 ', 'CBLT                                              ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_4)
 Values
   ('FND03', 'RBSPR     ', 'DEPOS     ', 'Deposit                                                     ', 'CBDT                                              ', 'GBMCB                                             ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND03', 'RBSPR     ', 'LISTT     ', 'Loans - IST                                                 ', 'CBLT                                              ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND03', 'RBSPR     ', 'LOAN      ', 'Loans                                                       ', 'CBLT                                              ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND03', 'RBSPR     ', 'LPIK      ', 'Loans - PIK                                                 ', 'CBLT                                              ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_4)
 Values
   ('FND03', 'RBSSH     ', 'DEPOS     ', 'Deposit                                                     ', 'CBDT                                              ', 'GBMCB                                             ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND03', 'RBSSH     ', 'LISTT     ', 'Loans - IST                                                 ', 'CBLT                                              ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND03', 'RBSSH     ', 'LOAN      ', 'Loans                                                       ', 'CBLT                                              ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND03', 'RBSSH     ', 'LPIK      ', 'Loans - PIK                                                 ', 'CBLT                                              ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND03', 'RBSLN     ', 'CORP      ', 'Corporate Bonds                                             ', 'CBLT                                              ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND03', 'RBSLN     ', 'LEASE     ', 'Lease                                                       ', 'CBLT                                              ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND03', 'NWBLN     ', 'CORP      ', 'Corporate Bonds                                             ', 'CBLT                                              ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND03', 'NWBLN     ', 'LEASE     ', 'Lease                                                       ', 'CBLT                                              ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND03', 'RBSPR     ', 'CORP      ', 'Corporate Bonds                                             ', 'CBLT                                              ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND03', 'RBSPR     ', 'LEASE     ', 'Lease                                                       ', 'CBLT                                              ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND03', 'RBSFF     ', 'CORP      ', 'Corporate Bonds                                             ', 'CBLT                                              ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND03', 'RBSFF     ', 'LEASE     ', 'Lease                                                       ', 'CBLT                                              ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND03', 'RBSML     ', 'CORP      ', 'Corporate Bonds                                             ', 'CBLT                                              ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND03', 'RBSML     ', 'LEASE     ', 'Lease                                                       ', 'CBLT                                              ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND03', 'RBSMD     ', 'CORP      ', 'Corporate Bonds                                             ', 'CBLT                                              ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND03', 'RBSMD     ', 'LEASE     ', 'Lease                                                       ', 'CBLT                                              ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND03', 'RBSMDL    ', 'CORP      ', 'Corporate Bonds                                             ', 'CBLT                                              ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND03', 'RBSMDL    ', 'LEASE     ', 'Lease                                                       ', 'CBLT                                              ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND03', 'RBSOS     ', 'CORP      ', 'Corporate Bonds                                             ', 'CBLT                                              ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND03', 'RBSOS     ', 'LEASE     ', 'Lease                                                       ', 'CBLT                                              ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND03', 'RBSHS     ', 'CORP      ', 'Corporate Bonds                                             ', 'CBLT                                              ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND03', 'RBSHS     ', 'LEASE     ', 'Lease                                                       ', 'CBLT                                              ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND03', 'RBSLB     ', 'CORP      ', 'Corporate Bonds                                             ', 'CBLT                                              ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND03', 'RBSLB     ', 'LEASE     ', 'Lease                                                       ', 'CBLT                                              ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBMDL     ', 'BUBOR     ', 'BUBOR Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSFF     ', 'BUBOR     ', 'BUBOR Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSHS     ', 'BUBOR     ', 'BUBOR Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSLB     ', 'BUBOR     ', 'BUBOR Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSLN     ', 'BUBOR     ', 'BUBOR Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSMD     ', 'BUBOR     ', 'BUBOR Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSML     ', 'BUBOR     ', 'BUBOR Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSOS     ', 'BUBOR     ', 'BUBOR Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSPR     ', 'BUBOR     ', 'BUBOR Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSSH     ', 'BUBOR     ', 'BUBOR Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'NWBLN     ', 'BUBOR     ', 'BUBOR Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSLN     ', 'BBA       ', 'BBA Libor                                                   ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSLN     ', 'BID       ', 'Competitive Bid Option                                      ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSLN     ', 'BTGTE     ', 'Guarantee (In Bank Trade)                                   ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSLN     ', 'CIBOR     ', 'CIBOR Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSLN     ', 'COF       ', 'Cost of Funds                                               ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSLN     ', 'DEBTB     ', 'Deposit Funding Back-to-Back                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSLN     ', 'DEPCS     ', 'Deposit - CSP                                               ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSLN     ', 'DEPOS     ', 'Deposit                                                     ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSLN     ', 'DMSWA     ', 'Dummy Swingline Actual                                      ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSLN     ', 'DMSWP     ', 'Dummy Swingline Pro Rata                                    ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSLN     ', 'DSCLN     ', 'Discounted loans                                            ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSLN     ', 'EIBOR     ', 'EIBOR Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSLN     ', 'EONIA     ', 'EONIA Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSLN     ', 'EURIB     ', 'EURIBOR Option                                              ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSLN     ', 'FIXED     ', 'Fixed Rate Option                                           ', 'Y                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSLN     ', 'FIXLT     ', 'Fixed Long Term Option                                      ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSLN     ', 'FIXMZ     ', 'Fixed Rate Mezzanine                                        ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSLN     ', 'GBPLI     ', 'GBP Libor                                                   ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSLN     ', 'GUAR      ', 'Guarantee                                                   ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSLN     ', 'HIBOR     ', 'HIBOR Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSLN     ', 'INTG      ', 'GBP Interpolated                                            ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSLN     ', 'INTP      ', 'Interpolated                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSLN     ', 'JIBAR     ', 'Johannesburg Interbank Agreed Rate                          ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSLN     ', 'LIBOR     ', 'Libor Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSLN     ', 'MOSPR     ', 'Moscow Prime Offered Rate                                   ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSLN     ', 'NIBOR     ', 'NIBOR Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSLN     ', 'NONLN     ', 'Non-Loan                                                    ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSLN     ', 'NORD      ', 'Loan Funding Back-to-Back                                   ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSLN     ', 'PERFB     ', 'Performance Bond                                            ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSLN     ', 'PGTEE     ', 'Performance Guarantee                                       ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSLN     ', 'PRIBO     ', 'PRIBOR Option                                               ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSLN     ', 'RBSEL     ', 'RBS EURILIBOR                                               ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSLN     ', 'RBSLI     ', 'RBS LIBOR                                                   ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSLN     ', 'REFER     ', 'Reference                                                   ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSLN     ', 'REFGB     ', 'GBP Reference                                               ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSLN     ', 'SBLC      ', 'Standby Letter of Credit                                    ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSLN     ', 'SBPF      ', 'Performance SBLC                                            ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSLN     ', 'SGSOR     ', 'Singapore Swap Option Rate Pricing                          ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSLN     ', 'SIBOR     ', 'SIBOR Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSLN     ', 'STIBO     ', 'STIBOR Option                                               ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSLN     ', 'SWING     ', 'Swing Line Option                                           ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSLN     ', 'TIBOR     ', 'TIBOR Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSLN     ', 'WIBOR     ', 'WIBOR Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'NWBLN     ', 'BBA       ', 'BBA Libor                                                   ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'NWBLN     ', 'BID       ', 'Competitive Bid Option                                      ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'NWBLN     ', 'BTGTE     ', 'Guarantee (In Bank Trade)                                   ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'NWBLN     ', 'CIBOR     ', 'CIBOR Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'NWBLN     ', 'COF       ', 'Cost of Funds                                               ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'NWBLN     ', 'DEBTB     ', 'Deposit Funding Back-to-Back                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'NWBLN     ', 'DEPCS     ', 'Deposit - CSP                                               ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'NWBLN     ', 'DEPOS     ', 'Deposit                                                     ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'NWBLN     ', 'DMSWA     ', 'Dummy Swingline Actual                                      ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'NWBLN     ', 'DMSWP     ', 'Dummy Swingline Pro Rata                                    ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'NWBLN     ', 'DSCLN     ', 'Discounted loans                                            ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'NWBLN     ', 'EIBOR     ', 'EIBOR Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'NWBLN     ', 'EONIA     ', 'EONIA Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'NWBLN     ', 'EURIB     ', 'EURIBOR Option                                              ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'NWBLN     ', 'FIXED     ', 'Fixed Rate Option                                           ', 'Y                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'NWBLN     ', 'FIXLT     ', 'Fixed Long Term Option                                      ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'NWBLN     ', 'FIXMZ     ', 'Fixed Rate Mezzanine                                        ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'NWBLN     ', 'GBPLI     ', 'GBP Libor                                                   ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'NWBLN     ', 'GUAR      ', 'Guarantee                                                   ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'NWBLN     ', 'HIBOR     ', 'HIBOR Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'NWBLN     ', 'INTG      ', 'GBP Interpolated                                            ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'NWBLN     ', 'INTP      ', 'Interpolated                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'NWBLN     ', 'JIBAR     ', 'Johannesburg Interbank Agreed Rate                          ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'NWBLN     ', 'LIBOR     ', 'Libor Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'NWBLN     ', 'MOSPR     ', 'Moscow Prime Offered Rate                                   ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'NWBLN     ', 'NIBOR     ', 'NIBOR Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'NWBLN     ', 'NONLN     ', 'Non-Loan                                                    ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'NWBLN     ', 'NORD      ', 'Loan Funding Back-to-Back                                   ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'NWBLN     ', 'PERFB     ', 'Performance Bond                                            ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'NWBLN     ', 'PGTEE     ', 'Performance Guarantee                                       ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'NWBLN     ', 'PRIBO     ', 'PRIBOR Option                                               ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'NWBLN     ', 'RBSEL     ', 'RBS EURILIBOR                                               ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'NWBLN     ', 'RBSLI     ', 'RBS LIBOR                                                   ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'NWBLN     ', 'REFER     ', 'Reference                                                   ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'NWBLN     ', 'REFGB     ', 'GBP Reference                                               ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'NWBLN     ', 'SBLC      ', 'Standby Letter of Credit                                    ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'NWBLN     ', 'SBPF      ', 'Performance SBLC                                            ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'NWBLN     ', 'SGSOR     ', 'Singapore Swap Option Rate Pricing                          ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'NWBLN     ', 'SIBOR     ', 'SIBOR Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'NWBLN     ', 'STIBO     ', 'STIBOR Option                                               ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'NWBLN     ', 'SWING     ', 'Swing Line Option                                           ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'NWBLN     ', 'TIBOR     ', 'TIBOR Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'NWBLN     ', 'WIBOR     ', 'WIBOR Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSPR     ', 'BBA       ', 'BBA Libor                                                   ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSPR     ', 'BID       ', 'Competitive Bid Option                                      ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSPR     ', 'BTGTE     ', 'Guarantee (In Bank Trade)                                   ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSPR     ', 'CIBOR     ', 'CIBOR Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSPR     ', 'COF       ', 'Cost of Funds                                               ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSPR     ', 'DEBTB     ', 'Deposit Funding Back-to-Back                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSPR     ', 'DEPCS     ', 'Deposit - CSP                                               ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSPR     ', 'DEPOS     ', 'Deposit                                                     ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSPR     ', 'DMSWA     ', 'Dummy Swingline Actual                                      ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSPR     ', 'DMSWP     ', 'Dummy Swingline Pro Rata                                    ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSPR     ', 'DSCLN     ', 'Discounted loans                                            ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSPR     ', 'EIBOR     ', 'EIBOR Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSPR     ', 'EONIA     ', 'EONIA Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSPR     ', 'EURIB     ', 'EURIBOR Option                                              ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSPR     ', 'FIXED     ', 'Fixed Rate Option                                           ', 'Y                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSPR     ', 'FIXLT     ', 'Fixed Long Term Option                                      ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSPR     ', 'FIXMZ     ', 'Fixed Rate Mezzanine                                        ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSPR     ', 'GBPLI     ', 'GBP Libor                                                   ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSPR     ', 'GUAR      ', 'Guarantee                                                   ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSPR     ', 'HIBOR     ', 'HIBOR Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSPR     ', 'INTG      ', 'GBP Interpolated                                            ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSPR     ', 'INTP      ', 'Interpolated                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSPR     ', 'JIBAR     ', 'Johannesburg Interbank Agreed Rate                          ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSPR     ', 'LIBOR     ', 'Libor Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSPR     ', 'MOSPR     ', 'Moscow Prime Offered Rate                                   ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSPR     ', 'NIBOR     ', 'NIBOR Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSPR     ', 'NONLN     ', 'Non-Loan                                                    ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSPR     ', 'NORD      ', 'Loan Funding Back-to-Back                                   ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSPR     ', 'PERFB     ', 'Performance Bond                                            ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSPR     ', 'PGTEE     ', 'Performance Guarantee                                       ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSPR     ', 'PRIBO     ', 'PRIBOR Option                                               ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSPR     ', 'RBSEL     ', 'RBS EURILIBOR                                               ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSPR     ', 'RBSLI     ', 'RBS LIBOR                                                   ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSPR     ', 'REFER     ', 'Reference                                                   ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSPR     ', 'REFGB     ', 'GBP Reference                                               ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSPR     ', 'SBLC      ', 'Standby Letter of Credit                                    ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSPR     ', 'SBPF      ', 'Performance SBLC                                            ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSPR     ', 'SGSOR     ', 'Singapore Swap Option Rate Pricing                          ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSPR     ', 'SIBOR     ', 'SIBOR Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSPR     ', 'STIBO     ', 'STIBOR Option                                               ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSPR     ', 'SWING     ', 'Swing Line Option                                           ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSPR     ', 'TIBOR     ', 'TIBOR Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSPR     ', 'WIBOR     ', 'WIBOR Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSFF     ', 'BBA       ', 'BBA Libor                                                   ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSFF     ', 'BID       ', 'Competitive Bid Option                                      ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSFF     ', 'BTGTE     ', 'Guarantee (In Bank Trade)                                   ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSFF     ', 'CIBOR     ', 'CIBOR Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSFF     ', 'COF       ', 'Cost of Funds                                               ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSFF     ', 'DEBTB     ', 'Deposit Funding Back-to-Back                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSFF     ', 'DEPCS     ', 'Deposit - CSP                                               ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSFF     ', 'DEPOS     ', 'Deposit                                                     ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSFF     ', 'DMSWA     ', 'Dummy Swingline Actual                                      ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSFF     ', 'DMSWP     ', 'Dummy Swingline Pro Rata                                    ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSFF     ', 'DSCLN     ', 'Discounted loans                                            ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSFF     ', 'EIBOR     ', 'EIBOR Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSFF     ', 'EONIA     ', 'EONIA Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSFF     ', 'EURIB     ', 'EURIBOR Option                                              ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSFF     ', 'FIXED     ', 'Fixed Rate Option                                           ', 'Y                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSFF     ', 'FIXLT     ', 'Fixed Long Term Option                                      ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSFF     ', 'FIXMZ     ', 'Fixed Rate Mezzanine                                        ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSFF     ', 'GBPLI     ', 'GBP Libor                                                   ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSFF     ', 'GUAR      ', 'Guarantee                                                   ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSFF     ', 'HIBOR     ', 'HIBOR Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSFF     ', 'INTG      ', 'GBP Interpolated                                            ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSFF     ', 'INTP      ', 'Interpolated                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSFF     ', 'JIBAR     ', 'Johannesburg Interbank Agreed Rate                          ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSFF     ', 'LIBOR     ', 'Libor Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSFF     ', 'MOSPR     ', 'Moscow Prime Offered Rate                                   ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSFF     ', 'NIBOR     ', 'NIBOR Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSFF     ', 'NONLN     ', 'Non-Loan                                                    ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSFF     ', 'NORD      ', 'Loan Funding Back-to-Back                                   ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSFF     ', 'PERFB     ', 'Performance Bond                                            ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSFF     ', 'PGTEE     ', 'Performance Guarantee                                       ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSFF     ', 'PRIBO     ', 'PRIBOR Option                                               ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSFF     ', 'RBSEL     ', 'RBS EURILIBOR                                               ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSFF     ', 'RBSLI     ', 'RBS LIBOR                                                   ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSFF     ', 'REFER     ', 'Reference                                                   ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSFF     ', 'REFGB     ', 'GBP Reference                                               ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSFF     ', 'SBLC      ', 'Standby Letter of Credit                                    ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSFF     ', 'SBPF      ', 'Performance SBLC                                            ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSFF     ', 'SGSOR     ', 'Singapore Swap Option Rate Pricing                          ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSFF     ', 'SIBOR     ', 'SIBOR Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSFF     ', 'STIBO     ', 'STIBOR Option                                               ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSFF     ', 'SWING     ', 'Swing Line Option                                           ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSFF     ', 'TIBOR     ', 'TIBOR Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSFF     ', 'WIBOR     ', 'WIBOR Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSMD     ', 'BBA       ', 'BBA Libor                                                   ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSMD     ', 'BID       ', 'Competitive Bid Option                                      ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSMD     ', 'BTGTE     ', 'Guarantee (In Bank Trade)                                   ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSMD     ', 'CIBOR     ', 'CIBOR Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSMD     ', 'COF       ', 'Cost of Funds                                               ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSMD     ', 'DEBTB     ', 'Deposit Funding Back-to-Back                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSMD     ', 'DEPCS     ', 'Deposit - CSP                                               ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSMD     ', 'DEPOS     ', 'Deposit                                                     ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSMD     ', 'DMSWA     ', 'Dummy Swingline Actual                                      ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSMD     ', 'DMSWP     ', 'Dummy Swingline Pro Rata                                    ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSMD     ', 'DSCLN     ', 'Discounted loans                                            ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSMD     ', 'EIBOR     ', 'EIBOR Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSMD     ', 'EONIA     ', 'EONIA Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSMD     ', 'EURIB     ', 'EURIBOR Option                                              ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSMD     ', 'FIXED     ', 'Fixed Rate Option                                           ', 'Y                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSMD     ', 'FIXLT     ', 'Fixed Long Term Option                                      ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSMD     ', 'FIXMZ     ', 'Fixed Rate Mezzanine                                        ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSMD     ', 'GBPLI     ', 'GBP Libor                                                   ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSMD     ', 'GUAR      ', 'Guarantee                                                   ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSMD     ', 'HIBOR     ', 'HIBOR Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSMD     ', 'INTG      ', 'GBP Interpolated                                            ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSMD     ', 'INTP      ', 'Interpolated                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSMD     ', 'JIBAR     ', 'Johannesburg Interbank Agreed Rate                          ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSMD     ', 'LIBOR     ', 'Libor Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSMD     ', 'MOSPR     ', 'Moscow Prime Offered Rate                                   ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSMD     ', 'NIBOR     ', 'NIBOR Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSMD     ', 'NONLN     ', 'Non-Loan                                                    ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSMD     ', 'NORD      ', 'Loan Funding Back-to-Back                                   ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSMD     ', 'PERFB     ', 'Performance Bond                                            ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSMD     ', 'PGTEE     ', 'Performance Guarantee                                       ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSMD     ', 'PRIBO     ', 'PRIBOR Option                                               ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSMD     ', 'RBSEL     ', 'RBS EURILIBOR                                               ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSMD     ', 'RBSLI     ', 'RBS LIBOR                                                   ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSMD     ', 'REFER     ', 'Reference                                                   ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSMD     ', 'REFGB     ', 'GBP Reference                                               ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSMD     ', 'SBLC      ', 'Standby Letter of Credit                                    ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSMD     ', 'SBPF      ', 'Performance SBLC                                            ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSMD     ', 'SGSOR     ', 'Singapore Swap Option Rate Pricing                          ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSMD     ', 'SIBOR     ', 'SIBOR Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSMD     ', 'STIBO     ', 'STIBOR Option                                               ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSMD     ', 'SWING     ', 'Swing Line Option                                           ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSMD     ', 'TIBOR     ', 'TIBOR Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSMD     ', 'WIBOR     ', 'WIBOR Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSML     ', 'BBA       ', 'BBA Libor                                                   ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSML     ', 'BID       ', 'Competitive Bid Option                                      ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSML     ', 'BTGTE     ', 'Guarantee (In Bank Trade)                                   ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSML     ', 'CIBOR     ', 'CIBOR Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSML     ', 'COF       ', 'Cost of Funds                                               ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSML     ', 'DEBTB     ', 'Deposit Funding Back-to-Back                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSML     ', 'DEPCS     ', 'Deposit - CSP                                               ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSML     ', 'DEPOS     ', 'Deposit                                                     ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSML     ', 'DMSWA     ', 'Dummy Swingline Actual                                      ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSML     ', 'DMSWP     ', 'Dummy Swingline Pro Rata                                    ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSML     ', 'DSCLN     ', 'Discounted loans                                            ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSML     ', 'EIBOR     ', 'EIBOR Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSML     ', 'EONIA     ', 'EONIA Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSML     ', 'EURIB     ', 'EURIBOR Option                                              ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSML     ', 'FIXED     ', 'Fixed Rate Option                                           ', 'Y                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSML     ', 'FIXLT     ', 'Fixed Long Term Option                                      ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSML     ', 'FIXMZ     ', 'Fixed Rate Mezzanine                                        ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSML     ', 'GBPLI     ', 'GBP Libor                                                   ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSML     ', 'GUAR      ', 'Guarantee                                                   ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSML     ', 'HIBOR     ', 'HIBOR Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSML     ', 'INTG      ', 'GBP Interpolated                                            ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSML     ', 'INTP      ', 'Interpolated                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSML     ', 'JIBAR     ', 'Johannesburg Interbank Agreed Rate                          ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSML     ', 'LIBOR     ', 'Libor Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSML     ', 'MOSPR     ', 'Moscow Prime Offered Rate                                   ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSML     ', 'NIBOR     ', 'NIBOR Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSML     ', 'NONLN     ', 'Non-Loan                                                    ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSML     ', 'NORD      ', 'Loan Funding Back-to-Back                                   ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSML     ', 'PERFB     ', 'Performance Bond                                            ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSML     ', 'PGTEE     ', 'Performance Guarantee                                       ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSML     ', 'PRIBO     ', 'PRIBOR Option                                               ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSML     ', 'RBSEL     ', 'RBS EURILIBOR                                               ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSML     ', 'RBSLI     ', 'RBS LIBOR                                                   ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSML     ', 'REFER     ', 'Reference                                                   ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSML     ', 'REFGB     ', 'GBP Reference                                               ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSML     ', 'SBLC      ', 'Standby Letter of Credit                                    ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSML     ', 'SBPF      ', 'Performance SBLC                                            ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSML     ', 'SGSOR     ', 'Singapore Swap Option Rate Pricing                          ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSML     ', 'SIBOR     ', 'SIBOR Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSML     ', 'STIBO     ', 'STIBOR Option                                               ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSML     ', 'SWING     ', 'Swing Line Option                                           ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSML     ', 'TIBOR     ', 'TIBOR Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSML     ', 'WIBOR     ', 'WIBOR Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSOS     ', 'BBA       ', 'BBA Libor                                                   ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSOS     ', 'BID       ', 'Competitive Bid Option                                      ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSOS     ', 'BTGTE     ', 'Guarantee (In Bank Trade)                                   ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSOS     ', 'CIBOR     ', 'CIBOR Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSOS     ', 'COF       ', 'Cost of Funds                                               ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSOS     ', 'DEBTB     ', 'Deposit Funding Back-to-Back                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSOS     ', 'DEPCS     ', 'Deposit - CSP                                               ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSOS     ', 'DEPOS     ', 'Deposit                                                     ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSOS     ', 'DMSWA     ', 'Dummy Swingline Actual                                      ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSOS     ', 'DMSWP     ', 'Dummy Swingline Pro Rata                                    ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSOS     ', 'DSCLN     ', 'Discounted loans                                            ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSOS     ', 'EIBOR     ', 'EIBOR Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSOS     ', 'EONIA     ', 'EONIA Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSOS     ', 'EURIB     ', 'EURIBOR Option                                              ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSOS     ', 'FIXED     ', 'Fixed Rate Option                                           ', 'Y                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSOS     ', 'FIXLT     ', 'Fixed Long Term Option                                      ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSOS     ', 'FIXMZ     ', 'Fixed Rate Mezzanine                                        ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSOS     ', 'GBPLI     ', 'GBP Libor                                                   ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSOS     ', 'GUAR      ', 'Guarantee                                                   ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSOS     ', 'HIBOR     ', 'HIBOR Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSOS     ', 'INTG      ', 'GBP Interpolated                                            ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSOS     ', 'INTP      ', 'Interpolated                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSOS     ', 'JIBAR     ', 'Johannesburg Interbank Agreed Rate                          ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSOS     ', 'LIBOR     ', 'Libor Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSOS     ', 'MOSPR     ', 'Moscow Prime Offered Rate                                   ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSOS     ', 'NIBOR     ', 'NIBOR Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSOS     ', 'NONLN     ', 'Non-Loan                                                    ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSOS     ', 'NORD      ', 'Loan Funding Back-to-Back                                   ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSOS     ', 'PERFB     ', 'Performance Bond                                            ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSOS     ', 'PGTEE     ', 'Performance Guarantee                                       ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSOS     ', 'PRIBO     ', 'PRIBOR Option                                               ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSOS     ', 'RBSEL     ', 'RBS EURILIBOR                                               ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSOS     ', 'RBSLI     ', 'RBS LIBOR                                                   ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSOS     ', 'REFER     ', 'Reference                                                   ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSOS     ', 'REFGB     ', 'GBP Reference                                               ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSOS     ', 'SBLC      ', 'Standby Letter of Credit                                    ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSOS     ', 'SBPF      ', 'Performance SBLC                                            ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSOS     ', 'SGSOR     ', 'Singapore Swap Option Rate Pricing                          ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSOS     ', 'SIBOR     ', 'SIBOR Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSOS     ', 'STIBO     ', 'STIBOR Option                                               ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSOS     ', 'SWING     ', 'Swing Line Option                                           ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSOS     ', 'TIBOR     ', 'TIBOR Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSOS     ', 'WIBOR     ', 'WIBOR Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSHS     ', 'BBA       ', 'BBA Libor                                                   ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSHS     ', 'BID       ', 'Competitive Bid Option                                      ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSHS     ', 'BTGTE     ', 'Guarantee (In Bank Trade)                                   ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSHS     ', 'CIBOR     ', 'CIBOR Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSHS     ', 'COF       ', 'Cost of Funds                                               ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSHS     ', 'DEBTB     ', 'Deposit Funding Back-to-Back                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSHS     ', 'DEPCS     ', 'Deposit - CSP                                               ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSHS     ', 'DEPOS     ', 'Deposit                                                     ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSHS     ', 'DMSWA     ', 'Dummy Swingline Actual                                      ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSHS     ', 'DMSWP     ', 'Dummy Swingline Pro Rata                                    ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSHS     ', 'DSCLN     ', 'Discounted loans                                            ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSHS     ', 'EIBOR     ', 'EIBOR Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSHS     ', 'EONIA     ', 'EONIA Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSHS     ', 'EURIB     ', 'EURIBOR Option                                              ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSHS     ', 'FIXED     ', 'Fixed Rate Option                                           ', 'Y                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSHS     ', 'FIXLT     ', 'Fixed Long Term Option                                      ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSHS     ', 'FIXMZ     ', 'Fixed Rate Mezzanine                                        ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSHS     ', 'GBPLI     ', 'GBP Libor                                                   ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSHS     ', 'GUAR      ', 'Guarantee                                                   ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSHS     ', 'HIBOR     ', 'HIBOR Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSHS     ', 'INTG      ', 'GBP Interpolated                                            ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSHS     ', 'INTP      ', 'Interpolated                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSHS     ', 'JIBAR     ', 'Johannesburg Interbank Agreed Rate                          ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSHS     ', 'LIBOR     ', 'Libor Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSHS     ', 'MOSPR     ', 'Moscow Prime Offered Rate                                   ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSHS     ', 'NIBOR     ', 'NIBOR Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSHS     ', 'NONLN     ', 'Non-Loan                                                    ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSHS     ', 'NORD      ', 'Loan Funding Back-to-Back                                   ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSHS     ', 'PERFB     ', 'Performance Bond                                            ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSHS     ', 'PGTEE     ', 'Performance Guarantee                                       ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSHS     ', 'PRIBO     ', 'PRIBOR Option                                               ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSHS     ', 'RBSEL     ', 'RBS EURILIBOR                                               ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSHS     ', 'RBSLI     ', 'RBS LIBOR                                                   ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSHS     ', 'REFER     ', 'Reference                                                   ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSHS     ', 'REFGB     ', 'GBP Reference                                               ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSHS     ', 'SBLC      ', 'Standby Letter of Credit                                    ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSHS     ', 'SBPF      ', 'Performance SBLC                                            ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSHS     ', 'SGSOR     ', 'Singapore Swap Option Rate Pricing                          ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSHS     ', 'SIBOR     ', 'SIBOR Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSHS     ', 'STIBO     ', 'STIBOR Option                                               ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSHS     ', 'SWING     ', 'Swing Line Option                                           ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSHS     ', 'TIBOR     ', 'TIBOR Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSHS     ', 'WIBOR     ', 'WIBOR Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSLB     ', 'BBA       ', 'BBA Libor                                                   ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSLB     ', 'BID       ', 'Competitive Bid Option                                      ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSLB     ', 'BTGTE     ', 'Guarantee (In Bank Trade)                                   ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSLB     ', 'CIBOR     ', 'CIBOR Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSLB     ', 'COF       ', 'Cost of Funds                                               ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSLB     ', 'DEBTB     ', 'Deposit Funding Back-to-Back                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSLB     ', 'DEPCS     ', 'Deposit - CSP                                               ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSLB     ', 'DEPOS     ', 'Deposit                                                     ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSLB     ', 'DMSWA     ', 'Dummy Swingline Actual                                      ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSLB     ', 'DMSWP     ', 'Dummy Swingline Pro Rata                                    ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSLB     ', 'DSCLN     ', 'Discounted loans                                            ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSLB     ', 'EIBOR     ', 'EIBOR Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSLB     ', 'EONIA     ', 'EONIA Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSLB     ', 'EURIB     ', 'EURIBOR Option                                              ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSLB     ', 'FIXED     ', 'Fixed Rate Option                                           ', 'Y                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSLB     ', 'FIXLT     ', 'Fixed Long Term Option                                      ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSLB     ', 'FIXMZ     ', 'Fixed Rate Mezzanine                                        ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSLB     ', 'GBPLI     ', 'GBP Libor                                                   ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSLB     ', 'GUAR      ', 'Guarantee                                                   ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSLB     ', 'HIBOR     ', 'HIBOR Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSLB     ', 'INTG      ', 'GBP Interpolated                                            ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSLB     ', 'INTP      ', 'Interpolated                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSLB     ', 'JIBAR     ', 'Johannesburg Interbank Agreed Rate                          ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSLB     ', 'LIBOR     ', 'Libor Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSLB     ', 'MOSPR     ', 'Moscow Prime Offered Rate                                   ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSLB     ', 'NIBOR     ', 'NIBOR Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSLB     ', 'NONLN     ', 'Non-Loan                                                    ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSLB     ', 'NORD      ', 'Loan Funding Back-to-Back                                   ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSLB     ', 'PERFB     ', 'Performance Bond                                            ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSLB     ', 'PGTEE     ', 'Performance Guarantee                                       ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSLB     ', 'PRIBO     ', 'PRIBOR Option                                               ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSLB     ', 'RBSEL     ', 'RBS EURILIBOR                                               ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSLB     ', 'RBSLI     ', 'RBS LIBOR                                                   ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSLB     ', 'REFER     ', 'Reference                                                   ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSLB     ', 'REFGB     ', 'GBP Reference                                               ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSLB     ', 'SBLC      ', 'Standby Letter of Credit                                    ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSLB     ', 'SBPF      ', 'Performance SBLC                                            ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSLB     ', 'SGSOR     ', 'Singapore Swap Option Rate Pricing                          ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSLB     ', 'SIBOR     ', 'SIBOR Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSLB     ', 'STIBO     ', 'STIBOR Option                                               ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSLB     ', 'SWING     ', 'Swing Line Option                                           ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSLB     ', 'TIBOR     ', 'TIBOR Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSLB     ', 'WIBOR     ', 'WIBOR Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSSH     ', 'BBA       ', 'BBA Libor                                                   ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSSH     ', 'BID       ', 'Competitive Bid Option                                      ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSSH     ', 'BTGTE     ', 'Guarantee (In Bank Trade)                                   ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSSH     ', 'CIBOR     ', 'CIBOR Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSSH     ', 'COF       ', 'Cost of Funds                                               ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSSH     ', 'DEBTB     ', 'Deposit Funding Back-to-Back                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSSH     ', 'DEPCS     ', 'Deposit - CSP                                               ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSSH     ', 'DEPOS     ', 'Deposit                                                     ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSSH     ', 'DMSWA     ', 'Dummy Swingline Actual                                      ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSSH     ', 'DMSWP     ', 'Dummy Swingline Pro Rata                                    ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSSH     ', 'DSCLN     ', 'Discounted loans                                            ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSSH     ', 'EIBOR     ', 'EIBOR Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSSH     ', 'EONIA     ', 'EONIA Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSSH     ', 'EURIB     ', 'EURIBOR Option                                              ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSSH     ', 'FIXED     ', 'Fixed Rate Option                                           ', 'Y                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSSH     ', 'FIXLT     ', 'Fixed Long Term Option                                      ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSSH     ', 'FIXMZ     ', 'Fixed Rate Mezzanine                                        ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSSH     ', 'GBPLI     ', 'GBP Libor                                                   ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSSH     ', 'GUAR      ', 'Guarantee                                                   ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSSH     ', 'HIBOR     ', 'HIBOR Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSSH     ', 'INTG      ', 'GBP Interpolated                                            ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSSH     ', 'INTP      ', 'Interpolated                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSSH     ', 'JIBAR     ', 'Johannesburg Interbank Agreed Rate                          ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSSH     ', 'LIBOR     ', 'Libor Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSSH     ', 'MOSPR     ', 'Moscow Prime Offered Rate                                   ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSSH     ', 'NIBOR     ', 'NIBOR Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSSH     ', 'NONLN     ', 'Non-Loan                                                    ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSSH     ', 'NORD      ', 'Loan Funding Back-to-Back                                   ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSSH     ', 'PERFB     ', 'Performance Bond                                            ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSSH     ', 'PGTEE     ', 'Performance Guarantee                                       ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSSH     ', 'PRIBO     ', 'PRIBOR Option                                               ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSSH     ', 'RBSEL     ', 'RBS EURILIBOR                                               ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSSH     ', 'RBSLI     ', 'RBS LIBOR                                                   ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSSH     ', 'REFER     ', 'Reference                                                   ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSSH     ', 'REFGB     ', 'GBP Reference                                               ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSSH     ', 'SBLC      ', 'Standby Letter of Credit                                    ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSSH     ', 'SBPF      ', 'Performance SBLC                                            ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSSH     ', 'SGSOR     ', 'Singapore Swap Option Rate Pricing                          ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSSH     ', 'SIBOR     ', 'SIBOR Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSSH     ', 'STIBO     ', 'STIBOR Option                                               ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSSH     ', 'SWING     ', 'Swing Line Option                                           ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSSH     ', 'TIBOR     ', 'TIBOR Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBSSH     ', 'WIBOR     ', 'WIBOR Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBMDL     ', 'BBA       ', 'BBA Libor                                                   ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBMDL     ', 'BID       ', 'Competitive Bid Option                                      ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBMDL     ', 'BTGTE     ', 'Guarantee (In Bank Trade)                                   ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBMDL     ', 'CIBOR     ', 'CIBOR Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBMDL     ', 'COF       ', 'Cost of Funds                                               ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBMDL     ', 'DEBTB     ', 'Deposit Funding Back-to-Back                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBMDL     ', 'DEPCS     ', 'Deposit - CSP                                               ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBMDL     ', 'DEPOS     ', 'Deposit                                                     ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBMDL     ', 'DMSWA     ', 'Dummy Swingline Actual                                      ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBMDL     ', 'DMSWP     ', 'Dummy Swingline Pro Rata                                    ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBMDL     ', 'DSCLN     ', 'Discounted loans                                            ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBMDL     ', 'EIBOR     ', 'EIBOR Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBMDL     ', 'EONIA     ', 'EONIA Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBMDL     ', 'EURIB     ', 'EURIBOR Option                                              ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBMDL     ', 'FIXED     ', 'Fixed Rate Option                                           ', 'Y                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBMDL     ', 'FIXLT     ', 'Fixed Long Term Option                                      ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBMDL     ', 'FIXMZ     ', 'Fixed Rate Mezzanine                                        ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBMDL     ', 'GBPLI     ', 'GBP Libor                                                   ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBMDL     ', 'GUAR      ', 'Guarantee                                                   ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBMDL     ', 'HIBOR     ', 'HIBOR Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBMDL     ', 'INTG      ', 'GBP Interpolated                                            ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBMDL     ', 'INTP      ', 'Interpolated                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBMDL     ', 'JIBAR     ', 'Johannesburg Interbank Agreed Rate                          ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBMDL     ', 'LIBOR     ', 'Libor Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBMDL     ', 'MOSPR     ', 'Moscow Prime Offered Rate                                   ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBMDL     ', 'NIBOR     ', 'NIBOR Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBMDL     ', 'NONLN     ', 'Non-Loan                                                    ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBMDL     ', 'NORD      ', 'Loan Funding Back-to-Back                                   ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBMDL     ', 'PERFB     ', 'Performance Bond                                            ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBMDL     ', 'PGTEE     ', 'Performance Guarantee                                       ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBMDL     ', 'PRIBO     ', 'PRIBOR Option                                               ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBMDL     ', 'RBSEL     ', 'RBS EURILIBOR                                               ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBMDL     ', 'RBSLI     ', 'RBS LIBOR                                                   ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBMDL     ', 'REFER     ', 'Reference                                                   ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBMDL     ', 'REFGB     ', 'GBP Reference                                               ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBMDL     ', 'SBLC      ', 'Standby Letter of Credit                                    ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBMDL     ', 'SBPF      ', 'Performance SBLC                                            ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBMDL     ', 'SGSOR     ', 'Singapore Swap Option Rate Pricing                          ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBMDL     ', 'SIBOR     ', 'SIBOR Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBMDL     ', 'STIBO     ', 'STIBOR Option                                               ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBMDL     ', 'SWING     ', 'Swing Line Option                                           ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBMDL     ', 'TIBOR     ', 'TIBOR Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND04', 'RBMDL     ', 'WIBOR     ', 'WIBOR Option                                                ', 'N                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, STATIC_VALUE_1)
 Values
   ('FND05', 'RBSLN     ', 'LIQRBS                                                      ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, STATIC_VALUE_1)
 Values
   ('FND05', 'NWBLN     ', 'LIQNWB                                                      ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, STATIC_VALUE_1)
 Values
   ('FND05', 'RBSPR     ', 'LIQRBS                                                      ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, STATIC_VALUE_1)
 Values
   ('FND05', 'RBSFF     ', 'LIQRBS                                                      ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, STATIC_VALUE_1)
 Values
   ('FND05', 'RBSML     ', 'LIQRBS                                                      ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, STATIC_VALUE_1)
 Values
   ('FND05', 'RBSSH     ', 'LIQRBS                                                      ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, STATIC_VALUE_1)
 Values
   ('FND05', 'RBMDL     ', 'LIQRBS                                                      ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, STATIC_VALUE_1)
 Values
   ('FND05', 'RBSOS     ', 'LIQRBS                                                      ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, STATIC_VALUE_1)
 Values
   ('FND05', 'RBSHS     ', 'LIQRBS                                                      ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, STATIC_VALUE_1)
 Values
   ('FND05', 'RBSLB     ', 'LIQRBS                                                      ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, STATIC_VALUE_1)
 Values
   ('FND05', 'RBSMD     ', 'LIQRBS                                                      ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSOS     ', 'MIG       ', 'Migration Approach                                          ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSPR     ', 'MIG       ', 'Migration Approach                                          ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSSH     ', 'MIG       ', 'Migration Approach                                          ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSSH     ', 'UPPMT     ', 'Unscheduled Loan Principal Payment                          ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'NWBLN     ', 'PRDCR     ', 'Loan Conversion from Existing (Part of Repricing)           ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBMDL     ', 'PRDCR     ', 'Loan Conversion from Existing (Part of Repricing)           ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSFF     ', 'PRDCR     ', 'Loan Conversion from Existing (Part of Repricing)           ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSHS     ', 'PRDCR     ', 'Loan Conversion from Existing (Part of Repricing)           ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSLB     ', 'PRDCR     ', 'Loan Conversion from Existing (Part of Repricing)           ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSLN     ', 'PRDCR     ', 'Loan Conversion from Existing (Part of Repricing)           ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSMD     ', 'PRDCR     ', 'Loan Conversion from Existing (Part of Repricing)           ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSML     ', 'PRDCR     ', 'Loan Conversion from Existing (Part of Repricing)           ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSOS     ', 'PRDCR     ', 'Loan Conversion from Existing (Part of Repricing)           ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSPR     ', 'PRDCR     ', 'Loan Conversion from Existing (Part of Repricing)           ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSSH     ', 'PRDCR     ', 'Loan Conversion from Existing (Part of Repricing)           ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'NWBLN     ', 'MIG       ', 'Migration Approach                                          ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBMDL     ', 'MIG       ', 'Migration Approach                                          ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSFF     ', 'MIG       ', 'Migration Approach                                          ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSHS     ', 'MIG       ', 'Migration Approach                                          ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSLB     ', 'MIG       ', 'Migration Approach                                          ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSLN     ', 'MIG       ', 'Migration Approach                                          ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSMD     ', 'MIG       ', 'Migration Approach                                          ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSML     ', 'MIG       ', 'Migration Approach                                          ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSHS     ', 'QRADJ     ', 'Quick Loan Repricing Share Adjustment                       ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSHS     ', 'RCMF      ', 'Loan Conversion to New (Part of Repricing)                  ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSHS     ', 'RENEW     ', 'Renewal                                                     ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSLB     ', 'MADJS     ', 'Manual Loan Share Adjustment                                ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSLB     ', 'OST       ', 'Outstanding                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSLB     ', 'PLSAD     ', 'Manual Portfolio Share Adjustment                           ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSLB     ', 'PPYMT     ', 'Loan Principal Payment                                      ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSLB     ', 'QDRPR     ', 'Deposit Quick Repricing                                     ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSLB     ', 'QLRPR     ', 'Quick Loan Repricing                                        ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSLB     ', 'QRADJ     ', 'Quick Loan Repricing Share Adjustment                       ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSLB     ', 'RCMF      ', 'Loan Conversion to New (Part of Repricing)                  ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSLB     ', 'RENEW     ', 'Renewal                                                     ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSLB     ', 'SDPIN     ', 'Scheduled Deposit Increase                                  ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSLB     ', 'SDPPT     ', 'Scheduled Deposit Principal Payment                         ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSLB     ', 'SINCR     ', 'Scheduled Loan Increase                                     ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSLB     ', 'SPPMT     ', 'Scheduled Loan Principal Payment                            ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSLB     ', 'UDPIN     ', 'Unscheduled Deposit Increase                                ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSLB     ', 'UDPPT     ', 'Unscheduled Deposit Principal Payment                       ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSLB     ', 'UINCR     ', 'Unscheduled Loan Increase                                   ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSLB     ', 'UPPMT     ', 'Unscheduled Loan Principal Payment                          ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSSH     ', 'ADJST     ', 'Automatic Share Adjustment                                  ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSSH     ', 'ATPLS     ', 'Automatic Portfolio Share Adjustment                        ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSSH     ', 'CENMF     ', 'Loan Conversion to Existing (Part of Repricing)             ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSSH     ', 'CHOFF     ', 'Book Chargeoff                                              ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSSH     ', 'COMPR     ', 'Repricing                                                   ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSSH     ', 'DCPMT     ', 'Discount Loan Principal Payment                             ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSSH     ', 'DEPIN     ', 'Deposit Increase                                            ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSSH     ', 'DEPPP     ', 'Deposit Principal Payment                                   ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSSH     ', 'DEPSA     ', 'Deposit Manual Share Adjustment                             ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSSH     ', 'DLADJ     ', 'Discount Loan Share Adjustment                              ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSSH     ', 'DPSDR     ', 'Initial Deposit                                             ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSSH     ', 'DQADJ     ', 'Deposit Quick Repricing Share Adjustment                    ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSSH     ', 'DTLDR     ', 'Discount Loan Drawdown                                      ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSSH     ', 'ID        ', 'Loan Initial Drawdown                                       ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSSH     ', 'INCR      ', 'Loan Increase                                               ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSSH     ', 'LCPIN     ', 'Capitalized Interest Payment Increase                       ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSSH     ', 'LRPPY     ', 'Loan Reverse Principal Payment                              ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSSH     ', 'MADJS     ', 'Manual Loan Share Adjustment                                ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSSH     ', 'OST       ', 'Outstanding                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSSH     ', 'PLSAD     ', 'Manual Portfolio Share Adjustment                           ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSSH     ', 'PPYMT     ', 'Loan Principal Payment                                      ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSSH     ', 'QDRPR     ', 'Deposit Quick Repricing                                     ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSSH     ', 'QLRPR     ', 'Quick Loan Repricing                                        ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSSH     ', 'QRADJ     ', 'Quick Loan Repricing Share Adjustment                       ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSSH     ', 'RCMF      ', 'Loan Conversion to New (Part of Repricing)                  ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSSH     ', 'RENEW     ', 'Renewal                                                     ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSSH     ', 'SDPIN     ', 'Scheduled Deposit Increase                                  ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSSH     ', 'SDPPT     ', 'Scheduled Deposit Principal Payment                         ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSSH     ', 'SINCR     ', 'Scheduled Loan Increase                                     ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSSH     ', 'SPPMT     ', 'Scheduled Loan Principal Payment                            ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSSH     ', 'UDPIN     ', 'Unscheduled Deposit Increase                                ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSSH     ', 'UDPPT     ', 'Unscheduled Deposit Principal Payment                       ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSSH     ', 'UINCR     ', 'Unscheduled Loan Increase                                   ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBMDL     ', 'SDPPT     ', 'Scheduled Deposit Principal Payment                         ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBMDL     ', 'SINCR     ', 'Scheduled Loan Increase                                     ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBMDL     ', 'SPPMT     ', 'Scheduled Loan Principal Payment                            ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBMDL     ', 'UDPIN     ', 'Unscheduled Deposit Increase                                ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBMDL     ', 'UDPPT     ', 'Unscheduled Deposit Principal Payment                       ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBMDL     ', 'UINCR     ', 'Unscheduled Loan Increase                                   ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBMDL     ', 'UPPMT     ', 'Unscheduled Loan Principal Payment                          ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSOS     ', 'ADJST     ', 'Automatic Share Adjustment                                  ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSOS     ', 'ATPLS     ', 'Automatic Portfolio Share Adjustment                        ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSOS     ', 'CENMF     ', 'Loan Conversion to Existing (Part of Repricing)             ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSOS     ', 'CHOFF     ', 'Book Chargeoff                                              ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSOS     ', 'COMPR     ', 'Repricing                                                   ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSOS     ', 'DCPMT     ', 'Discount Loan Principal Payment                             ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSOS     ', 'DEPIN     ', 'Deposit Increase                                            ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSOS     ', 'DEPPP     ', 'Deposit Principal Payment                                   ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSOS     ', 'DEPSA     ', 'Deposit Manual Share Adjustment                             ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSOS     ', 'DLADJ     ', 'Discount Loan Share Adjustment                              ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSOS     ', 'DPSDR     ', 'Initial Deposit                                             ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSOS     ', 'DQADJ     ', 'Deposit Quick Repricing Share Adjustment                    ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSOS     ', 'DTLDR     ', 'Discount Loan Drawdown                                      ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSOS     ', 'ID        ', 'Loan Initial Drawdown                                       ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSOS     ', 'INCR      ', 'Loan Increase                                               ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSOS     ', 'LCPIN     ', 'Capitalized Interest Payment Increase                       ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSOS     ', 'LRPPY     ', 'Loan Reverse Principal Payment                              ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSOS     ', 'MADJS     ', 'Manual Loan Share Adjustment                                ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSOS     ', 'OST       ', 'Outstanding                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSOS     ', 'PLSAD     ', 'Manual Portfolio Share Adjustment                           ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSOS     ', 'PPYMT     ', 'Loan Principal Payment                                      ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSOS     ', 'QDRPR     ', 'Deposit Quick Repricing                                     ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSOS     ', 'QLRPR     ', 'Quick Loan Repricing                                        ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSOS     ', 'QRADJ     ', 'Quick Loan Repricing Share Adjustment                       ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSOS     ', 'RCMF      ', 'Loan Conversion to New (Part of Repricing)                  ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSOS     ', 'RENEW     ', 'Renewal                                                     ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSOS     ', 'SDPIN     ', 'Scheduled Deposit Increase                                  ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSOS     ', 'SDPPT     ', 'Scheduled Deposit Principal Payment                         ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSOS     ', 'SINCR     ', 'Scheduled Loan Increase                                     ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSOS     ', 'SPPMT     ', 'Scheduled Loan Principal Payment                            ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSOS     ', 'UDPIN     ', 'Unscheduled Deposit Increase                                ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSOS     ', 'UDPPT     ', 'Unscheduled Deposit Principal Payment                       ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSOS     ', 'UINCR     ', 'Unscheduled Loan Increase                                   ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSOS     ', 'UPPMT     ', 'Unscheduled Loan Principal Payment                          ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSHS     ', 'ADJST     ', 'Automatic Share Adjustment                                  ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSHS     ', 'ATPLS     ', 'Automatic Portfolio Share Adjustment                        ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSHS     ', 'CENMF     ', 'Loan Conversion to Existing (Part of Repricing)             ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSHS     ', 'CHOFF     ', 'Book Chargeoff                                              ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSHS     ', 'COMPR     ', 'Repricing                                                   ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSHS     ', 'DCPMT     ', 'Discount Loan Principal Payment                             ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSHS     ', 'DEPIN     ', 'Deposit Increase                                            ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSHS     ', 'DEPPP     ', 'Deposit Principal Payment                                   ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSHS     ', 'DEPSA     ', 'Deposit Manual Share Adjustment                             ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSHS     ', 'DLADJ     ', 'Discount Loan Share Adjustment                              ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSHS     ', 'DPSDR     ', 'Initial Deposit                                             ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSHS     ', 'DQADJ     ', 'Deposit Quick Repricing Share Adjustment                    ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSHS     ', 'DTLDR     ', 'Discount Loan Drawdown                                      ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSHS     ', 'ID        ', 'Loan Initial Drawdown                                       ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSHS     ', 'INCR      ', 'Loan Increase                                               ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSHS     ', 'LCPIN     ', 'Capitalized Interest Payment Increase                       ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSHS     ', 'LRPPY     ', 'Loan Reverse Principal Payment                              ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSHS     ', 'MADJS     ', 'Manual Loan Share Adjustment                                ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSHS     ', 'OST       ', 'Outstanding                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSHS     ', 'PLSAD     ', 'Manual Portfolio Share Adjustment                           ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSHS     ', 'PPYMT     ', 'Loan Principal Payment                                      ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSHS     ', 'QDRPR     ', 'Deposit Quick Repricing                                     ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSHS     ', 'QLRPR     ', 'Quick Loan Repricing                                        ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSML     ', 'UDPPT     ', 'Unscheduled Deposit Principal Payment                       ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSML     ', 'UINCR     ', 'Unscheduled Loan Increase                                   ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSML     ', 'UPPMT     ', 'Unscheduled Loan Principal Payment                          ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSMD     ', 'ADJST     ', 'Automatic Share Adjustment                                  ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSMD     ', 'ATPLS     ', 'Automatic Portfolio Share Adjustment                        ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSMD     ', 'CENMF     ', 'Loan Conversion to Existing (Part of Repricing)             ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSMD     ', 'CHOFF     ', 'Book Chargeoff                                              ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSMD     ', 'COMPR     ', 'Repricing                                                   ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSMD     ', 'DCPMT     ', 'Discount Loan Principal Payment                             ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSMD     ', 'DEPIN     ', 'Deposit Increase                                            ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSMD     ', 'DEPPP     ', 'Deposit Principal Payment                                   ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSMD     ', 'DEPSA     ', 'Deposit Manual Share Adjustment                             ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSMD     ', 'DLADJ     ', 'Discount Loan Share Adjustment                              ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSMD     ', 'DPSDR     ', 'Initial Deposit                                             ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSMD     ', 'DQADJ     ', 'Deposit Quick Repricing Share Adjustment                    ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSMD     ', 'DTLDR     ', 'Discount Loan Drawdown                                      ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSMD     ', 'ID        ', 'Loan Initial Drawdown                                       ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSMD     ', 'INCR      ', 'Loan Increase                                               ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSMD     ', 'LCPIN     ', 'Capitalized Interest Payment Increase                       ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSMD     ', 'LRPPY     ', 'Loan Reverse Principal Payment                              ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSMD     ', 'MADJS     ', 'Manual Loan Share Adjustment                                ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSMD     ', 'OST       ', 'Outstanding                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSMD     ', 'PLSAD     ', 'Manual Portfolio Share Adjustment                           ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSMD     ', 'PPYMT     ', 'Loan Principal Payment                                      ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSMD     ', 'QDRPR     ', 'Deposit Quick Repricing                                     ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSMD     ', 'QLRPR     ', 'Quick Loan Repricing                                        ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSMD     ', 'QRADJ     ', 'Quick Loan Repricing Share Adjustment                       ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSMD     ', 'RCMF      ', 'Loan Conversion to New (Part of Repricing)                  ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSMD     ', 'RENEW     ', 'Renewal                                                     ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSMD     ', 'SDPIN     ', 'Scheduled Deposit Increase                                  ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSMD     ', 'SDPPT     ', 'Scheduled Deposit Principal Payment                         ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSMD     ', 'SINCR     ', 'Scheduled Loan Increase                                     ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSMD     ', 'SPPMT     ', 'Scheduled Loan Principal Payment                            ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSMD     ', 'UDPIN     ', 'Unscheduled Deposit Increase                                ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSMD     ', 'UDPPT     ', 'Unscheduled Deposit Principal Payment                       ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSMD     ', 'UINCR     ', 'Unscheduled Loan Increase                                   ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSMD     ', 'UPPMT     ', 'Unscheduled Loan Principal Payment                          ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBMDL     ', 'ADJST     ', 'Automatic Share Adjustment                                  ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBMDL     ', 'ATPLS     ', 'Automatic Portfolio Share Adjustment                        ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBMDL     ', 'CENMF     ', 'Loan Conversion to Existing (Part of Repricing)             ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBMDL     ', 'CHOFF     ', 'Book Chargeoff                                              ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBMDL     ', 'COMPR     ', 'Repricing                                                   ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBMDL     ', 'DCPMT     ', 'Discount Loan Principal Payment                             ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBMDL     ', 'DEPIN     ', 'Deposit Increase                                            ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBMDL     ', 'DEPPP     ', 'Deposit Principal Payment                                   ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBMDL     ', 'DEPSA     ', 'Deposit Manual Share Adjustment                             ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBMDL     ', 'DLADJ     ', 'Discount Loan Share Adjustment                              ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBMDL     ', 'DPSDR     ', 'Initial Deposit                                             ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBMDL     ', 'DQADJ     ', 'Deposit Quick Repricing Share Adjustment                    ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBMDL     ', 'DTLDR     ', 'Discount Loan Drawdown                                      ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBMDL     ', 'ID        ', 'Loan Initial Drawdown                                       ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBMDL     ', 'INCR      ', 'Loan Increase                                               ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBMDL     ', 'LCPIN     ', 'Capitalized Interest Payment Increase                       ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBMDL     ', 'LRPPY     ', 'Loan Reverse Principal Payment                              ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBMDL     ', 'MADJS     ', 'Manual Loan Share Adjustment                                ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBMDL     ', 'OST       ', 'Outstanding                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBMDL     ', 'PLSAD     ', 'Manual Portfolio Share Adjustment                           ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBMDL     ', 'PPYMT     ', 'Loan Principal Payment                                      ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBMDL     ', 'QDRPR     ', 'Deposit Quick Repricing                                     ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBMDL     ', 'QLRPR     ', 'Quick Loan Repricing                                        ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBMDL     ', 'QRADJ     ', 'Quick Loan Repricing Share Adjustment                       ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBMDL     ', 'RCMF      ', 'Loan Conversion to New (Part of Repricing)                  ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBMDL     ', 'RENEW     ', 'Renewal                                                     ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBMDL     ', 'SDPIN     ', 'Scheduled Deposit Increase                                  ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSFF     ', 'COMPR     ', 'Repricing                                                   ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSFF     ', 'DCPMT     ', 'Discount Loan Principal Payment                             ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSFF     ', 'DEPIN     ', 'Deposit Increase                                            ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSFF     ', 'DEPPP     ', 'Deposit Principal Payment                                   ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSFF     ', 'DEPSA     ', 'Deposit Manual Share Adjustment                             ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSFF     ', 'DLADJ     ', 'Discount Loan Share Adjustment                              ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSFF     ', 'DPSDR     ', 'Initial Deposit                                             ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSFF     ', 'DQADJ     ', 'Deposit Quick Repricing Share Adjustment                    ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSFF     ', 'DTLDR     ', 'Discount Loan Drawdown                                      ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSFF     ', 'ID        ', 'Loan Initial Drawdown                                       ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSFF     ', 'INCR      ', 'Loan Increase                                               ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSFF     ', 'LCPIN     ', 'Capitalized Interest Payment Increase                       ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSFF     ', 'LRPPY     ', 'Loan Reverse Principal Payment                              ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSFF     ', 'MADJS     ', 'Manual Loan Share Adjustment                                ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSFF     ', 'OST       ', 'Outstanding                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSFF     ', 'PLSAD     ', 'Manual Portfolio Share Adjustment                           ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSFF     ', 'PPYMT     ', 'Loan Principal Payment                                      ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSFF     ', 'QDRPR     ', 'Deposit Quick Repricing                                     ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSFF     ', 'QLRPR     ', 'Quick Loan Repricing                                        ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSFF     ', 'QRADJ     ', 'Quick Loan Repricing Share Adjustment                       ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSFF     ', 'RCMF      ', 'Loan Conversion to New (Part of Repricing)                  ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSFF     ', 'RENEW     ', 'Renewal                                                     ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSFF     ', 'SDPIN     ', 'Scheduled Deposit Increase                                  ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSFF     ', 'SDPPT     ', 'Scheduled Deposit Principal Payment                         ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSFF     ', 'SINCR     ', 'Scheduled Loan Increase                                     ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSFF     ', 'SPPMT     ', 'Scheduled Loan Principal Payment                            ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSFF     ', 'UDPIN     ', 'Unscheduled Deposit Increase                                ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSFF     ', 'UDPPT     ', 'Unscheduled Deposit Principal Payment                       ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSFF     ', 'UINCR     ', 'Unscheduled Loan Increase                                   ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSFF     ', 'UPPMT     ', 'Unscheduled Loan Principal Payment                          ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSML     ', 'ADJST     ', 'Automatic Share Adjustment                                  ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSML     ', 'ATPLS     ', 'Automatic Portfolio Share Adjustment                        ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSML     ', 'CENMF     ', 'Loan Conversion to Existing (Part of Repricing)             ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSML     ', 'CHOFF     ', 'Book Chargeoff                                              ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSML     ', 'COMPR     ', 'Repricing                                                   ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSML     ', 'DCPMT     ', 'Discount Loan Principal Payment                             ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSML     ', 'DEPIN     ', 'Deposit Increase                                            ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSML     ', 'DEPPP     ', 'Deposit Principal Payment                                   ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSML     ', 'DEPSA     ', 'Deposit Manual Share Adjustment                             ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSML     ', 'DLADJ     ', 'Discount Loan Share Adjustment                              ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSML     ', 'DPSDR     ', 'Initial Deposit                                             ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSML     ', 'DQADJ     ', 'Deposit Quick Repricing Share Adjustment                    ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSML     ', 'DTLDR     ', 'Discount Loan Drawdown                                      ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSML     ', 'ID        ', 'Loan Initial Drawdown                                       ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSML     ', 'INCR      ', 'Loan Increase                                               ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSML     ', 'LCPIN     ', 'Capitalized Interest Payment Increase                       ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSLN     ', 'CHOFF     ', 'Book Chargeoff                                              ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSML     ', 'LRPPY     ', 'Loan Reverse Principal Payment                              ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSML     ', 'MADJS     ', 'Manual Loan Share Adjustment                                ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSML     ', 'OST       ', 'Outstanding                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSLB     ', 'ATPLS     ', 'Automatic Portfolio Share Adjustment                        ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSLB     ', 'LRPPY     ', 'Loan Reverse Principal Payment                              ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSML     ', 'PLSAD     ', 'Manual Portfolio Share Adjustment                           ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSML     ', 'PPYMT     ', 'Loan Principal Payment                                      ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSML     ', 'QDRPR     ', 'Deposit Quick Repricing                                     ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSML     ', 'QLRPR     ', 'Quick Loan Repricing                                        ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSML     ', 'QRADJ     ', 'Quick Loan Repricing Share Adjustment                       ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSML     ', 'RCMF      ', 'Loan Conversion to New (Part of Repricing)                  ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSML     ', 'RENEW     ', 'Renewal                                                     ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSML     ', 'SDPIN     ', 'Scheduled Deposit Increase                                  ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSML     ', 'SDPPT     ', 'Scheduled Deposit Principal Payment                         ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSML     ', 'SINCR     ', 'Scheduled Loan Increase                                     ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSML     ', 'SPPMT     ', 'Scheduled Loan Principal Payment                            ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSML     ', 'UDPIN     ', 'Unscheduled Deposit Increase                                ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'NWBLN     ', 'DEPSA     ', 'Deposit Manual Share Adjustment                             ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'NWBLN     ', 'DLADJ     ', 'Discount Loan Share Adjustment                              ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'NWBLN     ', 'DPSDR     ', 'Initial Deposit                                             ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'NWBLN     ', 'DQADJ     ', 'Deposit Quick Repricing Share Adjustment                    ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'NWBLN     ', 'DTLDR     ', 'Discount Loan Drawdown                                      ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'NWBLN     ', 'ID        ', 'Loan Initial Drawdown                                       ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'NWBLN     ', 'INCR      ', 'Loan Increase                                               ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'NWBLN     ', 'LCPIN     ', 'Capitalized Interest Payment Increase                       ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'NWBLN     ', 'LRPPY     ', 'Loan Reverse Principal Payment                              ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'NWBLN     ', 'MADJS     ', 'Manual Loan Share Adjustment                                ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'NWBLN     ', 'OST       ', 'Outstanding                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'NWBLN     ', 'PLSAD     ', 'Manual Portfolio Share Adjustment                           ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'NWBLN     ', 'PPYMT     ', 'Loan Principal Payment                                      ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'NWBLN     ', 'QDRPR     ', 'Deposit Quick Repricing                                     ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'NWBLN     ', 'QLRPR     ', 'Quick Loan Repricing                                        ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'NWBLN     ', 'QRADJ     ', 'Quick Loan Repricing Share Adjustment                       ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'NWBLN     ', 'RCMF      ', 'Loan Conversion to New (Part of Repricing)                  ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'NWBLN     ', 'RENEW     ', 'Renewal                                                     ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'NWBLN     ', 'SDPIN     ', 'Scheduled Deposit Increase                                  ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'NWBLN     ', 'SDPPT     ', 'Scheduled Deposit Principal Payment                         ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'NWBLN     ', 'SINCR     ', 'Scheduled Loan Increase                                     ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'NWBLN     ', 'SPPMT     ', 'Scheduled Loan Principal Payment                            ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'NWBLN     ', 'UDPIN     ', 'Unscheduled Deposit Increase                                ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'NWBLN     ', 'UDPPT     ', 'Unscheduled Deposit Principal Payment                       ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'NWBLN     ', 'UINCR     ', 'Unscheduled Loan Increase                                   ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'NWBLN     ', 'UPPMT     ', 'Unscheduled Loan Principal Payment                          ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSPR     ', 'ADJST     ', 'Automatic Share Adjustment                                  ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSPR     ', 'ATPLS     ', 'Automatic Portfolio Share Adjustment                        ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSPR     ', 'CENMF     ', 'Loan Conversion to Existing (Part of Repricing)             ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSPR     ', 'CHOFF     ', 'Book Chargeoff                                              ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSPR     ', 'COMPR     ', 'Repricing                                                   ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSPR     ', 'DCPMT     ', 'Discount Loan Principal Payment                             ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSPR     ', 'DEPIN     ', 'Deposit Increase                                            ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSPR     ', 'DEPPP     ', 'Deposit Principal Payment                                   ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSPR     ', 'DEPSA     ', 'Deposit Manual Share Adjustment                             ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSPR     ', 'DLADJ     ', 'Discount Loan Share Adjustment                              ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSPR     ', 'DPSDR     ', 'Initial Deposit                                             ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSPR     ', 'DQADJ     ', 'Deposit Quick Repricing Share Adjustment                    ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSPR     ', 'DTLDR     ', 'Discount Loan Drawdown                                      ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSPR     ', 'ID        ', 'Loan Initial Drawdown                                       ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSPR     ', 'INCR      ', 'Loan Increase                                               ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSPR     ', 'LCPIN     ', 'Capitalized Interest Payment Increase                       ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSPR     ', 'LRPPY     ', 'Loan Reverse Principal Payment                              ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSPR     ', 'MADJS     ', 'Manual Loan Share Adjustment                                ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSPR     ', 'OST       ', 'Outstanding                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSPR     ', 'PLSAD     ', 'Manual Portfolio Share Adjustment                           ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSPR     ', 'PPYMT     ', 'Loan Principal Payment                                      ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSPR     ', 'QDRPR     ', 'Deposit Quick Repricing                                     ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSPR     ', 'QLRPR     ', 'Quick Loan Repricing                                        ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSPR     ', 'QRADJ     ', 'Quick Loan Repricing Share Adjustment                       ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSPR     ', 'RCMF      ', 'Loan Conversion to New (Part of Repricing)                  ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSPR     ', 'RENEW     ', 'Renewal                                                     ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSPR     ', 'SDPIN     ', 'Scheduled Deposit Increase                                  ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSPR     ', 'SDPPT     ', 'Scheduled Deposit Principal Payment                         ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSPR     ', 'SINCR     ', 'Scheduled Loan Increase                                     ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSPR     ', 'SPPMT     ', 'Scheduled Loan Principal Payment                            ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSPR     ', 'UDPIN     ', 'Unscheduled Deposit Increase                                ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSPR     ', 'UDPPT     ', 'Unscheduled Deposit Principal Payment                       ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSPR     ', 'UINCR     ', 'Unscheduled Loan Increase                                   ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSPR     ', 'UPPMT     ', 'Unscheduled Loan Principal Payment                          ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSFF     ', 'ADJST     ', 'Automatic Share Adjustment                                  ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSFF     ', 'ATPLS     ', 'Automatic Portfolio Share Adjustment                        ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSFF     ', 'CENMF     ', 'Loan Conversion to Existing (Part of Repricing)             ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSFF     ', 'CHOFF     ', 'Book Chargeoff                                              ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSHS     ', 'SDPIN     ', 'Scheduled Deposit Increase                                  ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSHS     ', 'SDPPT     ', 'Scheduled Deposit Principal Payment                         ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSHS     ', 'SINCR     ', 'Scheduled Loan Increase                                     ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSHS     ', 'SPPMT     ', 'Scheduled Loan Principal Payment                            ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSHS     ', 'UDPIN     ', 'Unscheduled Deposit Increase                                ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSHS     ', 'UDPPT     ', 'Unscheduled Deposit Principal Payment                       ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSHS     ', 'UINCR     ', 'Unscheduled Loan Increase                                   ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSHS     ', 'UPPMT     ', 'Unscheduled Loan Principal Payment                          ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSLB     ', 'ADJST     ', 'Automatic Share Adjustment                                  ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSLB     ', 'CENMF     ', 'Loan Conversion to Existing (Part of Repricing)             ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSLB     ', 'CHOFF     ', 'Book Chargeoff                                              ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSLB     ', 'COMPR     ', 'Repricing                                                   ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSLB     ', 'DCPMT     ', 'Discount Loan Principal Payment                             ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSLB     ', 'DEPIN     ', 'Deposit Increase                                            ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSLB     ', 'DEPPP     ', 'Deposit Principal Payment                                   ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSLB     ', 'DEPSA     ', 'Deposit Manual Share Adjustment                             ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSLB     ', 'DLADJ     ', 'Discount Loan Share Adjustment                              ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSLB     ', 'DPSDR     ', 'Initial Deposit                                             ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSLB     ', 'DQADJ     ', 'Deposit Quick Repricing Share Adjustment                    ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSLB     ', 'DTLDR     ', 'Discount Loan Drawdown                                      ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSLB     ', 'ID        ', 'Loan Initial Drawdown                                       ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSLB     ', 'INCR      ', 'Loan Increase                                               ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSLB     ', 'LCPIN     ', 'Capitalized Interest Payment Increase                       ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSLN     ', 'ADJST     ', 'Automatic Share Adjustment                                  ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSLN     ', 'ATPLS     ', 'Automatic Portfolio Share Adjustment                        ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSLN     ', 'CENMF     ', 'Loan Conversion to Existing (Part of Repricing)             ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSLN     ', 'COMPR     ', 'Repricing                                                   ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSLN     ', 'DCPMT     ', 'Discount Loan Principal Payment                             ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSLN     ', 'DEPIN     ', 'Deposit Increase                                            ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSLN     ', 'DEPPP     ', 'Deposit Principal Payment                                   ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSLN     ', 'DEPSA     ', 'Deposit Manual Share Adjustment                             ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSLN     ', 'DLADJ     ', 'Discount Loan Share Adjustment                              ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSLN     ', 'DPSDR     ', 'Initial Deposit                                             ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSLN     ', 'DQADJ     ', 'Deposit Quick Repricing Share Adjustment                    ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSLN     ', 'DTLDR     ', 'Discount Loan Drawdown                                      ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSLN     ', 'ID        ', 'Loan Initial Drawdown                                       ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSLN     ', 'INCR      ', 'Loan Increase                                               ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSLN     ', 'LCPIN     ', 'Capitalized Interest Payment Increase                       ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSLN     ', 'LRPPY     ', 'Loan Reverse Principal Payment                              ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSLN     ', 'MADJS     ', 'Manual Loan Share Adjustment                                ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSLN     ', 'OST       ', 'Outstanding                                                 ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSLN     ', 'PLSAD     ', 'Manual Portfolio Share Adjustment                           ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSLN     ', 'PPYMT     ', 'Loan Principal Payment                                      ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSLN     ', 'QDRPR     ', 'Deposit Quick Repricing                                     ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSLN     ', 'QLRPR     ', 'Quick Loan Repricing                                        ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSLN     ', 'QRADJ     ', 'Quick Loan Repricing Share Adjustment                       ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSLN     ', 'RCMF      ', 'Loan Conversion to New (Part of Repricing)                  ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSLN     ', 'RENEW     ', 'Renewal                                                     ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSLN     ', 'SDPIN     ', 'Scheduled Deposit Increase                                  ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSLN     ', 'SDPPT     ', 'Scheduled Deposit Principal Payment                         ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSLN     ', 'SINCR     ', 'Scheduled Loan Increase                                     ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSLN     ', 'SPPMT     ', 'Scheduled Loan Principal Payment                            ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSLN     ', 'UDPIN     ', 'Unscheduled Deposit Increase                                ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSLN     ', 'UDPPT     ', 'Unscheduled Deposit Principal Payment                       ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSLN     ', 'UINCR     ', 'Unscheduled Loan Increase                                   ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'RBSLN     ', 'UPPMT     ', 'Unscheduled Loan Principal Payment                          ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'NWBLN     ', 'ADJST     ', 'Automatic Share Adjustment                                  ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'NWBLN     ', 'ATPLS     ', 'Automatic Portfolio Share Adjustment                        ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'NWBLN     ', 'CENMF     ', 'Loan Conversion to Existing (Part of Repricing)             ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'NWBLN     ', 'CHOFF     ', 'Book Chargeoff                                              ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'NWBLN     ', 'COMPR     ', 'Repricing                                                   ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'NWBLN     ', 'DCPMT     ', 'Discount Loan Principal Payment                             ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'NWBLN     ', 'DEPIN     ', 'Deposit Increase                                            ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, STATIC_VALUE_1)
 Values
   ('FND06', 'NWBLN     ', 'DEPPP     ', 'Deposit Principal Payment                                   ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, STATIC_VALUE_1)
 Values
   ('FND07', 'G5/6      ', 'Actual/365/366                                              ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, STATIC_VALUE_1)
 Values
   ('FND07', 'B30E      ', 'Bond 30E/360                                                ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, STATIC_VALUE_1)
 Values
   ('FND07', 'A1230     ', 'Bond Actual/(12 30-Day Months)                              ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND07', 'G365      ', 'Actual/365                                                  ', 'ACT365                                            ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND07', 'BOND      ', 'Bond 30/360                                                 ', '30 360                                            ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, STATIC_VALUE_1, STATIC_VALUE_2)
 Values
   ('FND07', 'BANK      ', 'Actual/360                                                  ', 'ACT360                                            ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, STATIC_VALUE_1)
 Values
   ('FND07', 'M30E      ', 'Modified 30E/360                                            ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, STATIC_VALUE_1)
 Values
   ('FND07', 'M30       ', 'Modified 30/360                                             ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, STATIC_VALUE_1)
 Values
   ('FND08', '012       ', 'ACK-FAIL                                                    ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, STATIC_VALUE_1)
 Values
   ('FND08', '013       ', 'ACK-FAIL                                                    ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, STATIC_VALUE_1)
 Values
   ('FND08', '014       ', 'ACK-FAIL                                                    ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, STATIC_VALUE_1)
 Values
   ('FND08', '015       ', 'ACK-FAIL                                                    ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, STATIC_VALUE_1)
 Values
   ('FND08', '018       ', 'ACK-FAIL                                                    ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, STATIC_VALUE_1)
 Values
   ('FND08', '019       ', 'ACK-FAIL                                                    ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, STATIC_VALUE_1)
 Values
   ('FND08', '020       ', 'ACK-FAIL                                                    ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, STATIC_VALUE_1)
 Values
   ('FND08', '021       ', 'ACK-FAIL                                                    ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, STATIC_VALUE_1)
 Values
   ('FND08', '026       ', 'ACK-FAIL                                                    ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, STATIC_VALUE_1)
 Values
   ('FND08', '027       ', 'ACK-FAIL                                                    ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, STATIC_VALUE_1)
 Values
   ('FND08', '028       ', 'ACK-FAIL                                                    ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, STATIC_VALUE_1)
 Values
   ('FND08', '029       ', 'ACK-FAIL                                                    ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, STATIC_VALUE_1)
 Values
   ('FND08', '030       ', 'ACK-FAIL                                                    ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, STATIC_VALUE_1)
 Values
   ('FND08', '031       ', 'ACK-FAIL                                                    ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, STATIC_VALUE_1)
 Values
   ('FND08', '032       ', 'ACK-FAIL                                                    ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, STATIC_VALUE_1)
 Values
   ('FND08', '033       ', 'ACK-FAIL                                                    ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, STATIC_VALUE_1)
 Values
   ('FND08', '034       ', 'ACK-FAIL                                                    ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, STATIC_VALUE_1)
 Values
   ('FND08', '035       ', 'ACK-FAIL                                                    ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, STATIC_VALUE_1)
 Values
   ('FND08', '036       ', 'ACK-FAIL                                                    ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, STATIC_VALUE_1)
 Values
   ('FND08', '037       ', 'ACK-FAIL                                                    ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, STATIC_VALUE_1)
 Values
   ('FND08', '038       ', 'ACK-FAIL                                                    ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, STATIC_VALUE_1)
 Values
   ('FND08', '039       ', 'ACK-FAIL                                                    ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, STATIC_VALUE_1)
 Values
   ('FND08', '040       ', 'ACK-FAIL                                                    ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, STATIC_VALUE_1)
 Values
   ('FND08', '041       ', 'ACK-FAIL                                                    ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, STATIC_VALUE_1)
 Values
   ('FND08', '050       ', 'ACK-FAIL                                                    ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, STATIC_VALUE_1)
 Values
   ('FND08', '052       ', 'ACK-FAIL                                                    ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, STATIC_VALUE_1)
 Values
   ('FND08', '053       ', 'ACK-FAIL                                                    ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, STATIC_VALUE_1)
 Values
   ('FND08', '054       ', 'ACK-FAIL                                                    ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, STATIC_VALUE_1)
 Values
   ('FND08', '055       ', 'ACK-FAIL                                                    ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, STATIC_VALUE_1)
 Values
   ('FND08', '056       ', 'ACK-FAIL                                                    ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, STATIC_VALUE_1)
 Values
   ('FND08', '057       ', 'ACK-FAIL                                                    ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, STATIC_VALUE_1)
 Values
   ('FND08', '058       ', 'ACK-FAIL                                                    ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, STATIC_VALUE_1)
 Values
   ('FND08', '059       ', 'ACK-FAIL                                                    ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, STATIC_VALUE_1)
 Values
   ('FND08', '0115      ', 'ACK-FAIL                                                    ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, STATIC_VALUE_1)
 Values
   ('FND08', '0116      ', 'ACK-FAIL                                                    ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, STATIC_VALUE_1)
 Values
   ('FND08', '0117      ', 'ACK-FAIL                                                    ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, STATIC_VALUE_1)
 Values
   ('FND08', '0118      ', 'ACK-FAIL                                                    ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, STATIC_VALUE_1)
 Values
   ('FND08', '022       ', 'ACK-FAIL                                                    ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, STATIC_VALUE_1)
 Values
   ('FND08', '023       ', 'ACK-FAIL                                                    ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, STATIC_VALUE_1)
 Values
   ('FND08', '024       ', 'ACK-FAIL                                                    ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, STATIC_VALUE_1)
 Values
   ('FND08', '025       ', 'ACK-FAIL                                                    ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, STATIC_VALUE_1)
 Values
   ('FND08', '08        ', 'ACK-FAIL                                                    ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, STATIC_VALUE_1)
 Values
   ('FND08', '07        ', 'ACK-FAIL                                                    ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, STATIC_VALUE_1)
 Values
   ('FND08', '006       ', 'ACK-FAIL                                                    ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, STATIC_VALUE_1)
 Values
   ('FND08', '05        ', 'ACK-FAIL                                                    ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, STATIC_VALUE_1)
 Values
   ('FND08', '04        ', 'ACK-FAIL                                                    ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, STATIC_VALUE_1)
 Values
   ('FND08', '02        ', 'ACK-FAIL                                                    ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, STATIC_VALUE_1)
 Values
   ('FND08', '00        ', 'ACK                                                         ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, STATIC_VALUE_1)
 Values
   ('FND08', '03        ', 'ACK-FAIL                                                    ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, STATIC_VALUE_1)
 Values
   ('FND08', '51        ', 'Missing Internal area                                       ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, STATIC_VALUE_1)
 Values
   ('FND10', 'DAM       ', 'Debt & Asset Management                                    ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, STATIC_VALUE_1)
 Values
   ('FND10', 'EURCM     ', 'European Commercial                                         ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, STATIC_VALUE_1)
 Values
   ('FND10', 'CO1       ', 'UK Agency - Corporate Finance CO1                           ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, STATIC_VALUE_1)
 Values
   ('FND10', 'CO3       ', 'UK Agency - Corporate Finance CO3                           ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, STATIC_VALUE_1)
 Values
   ('FND10', 'CO5       ', 'UK Agency - Corporate Finance CO5                           ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, STATIC_VALUE_1)
 Values
   ('FND10', 'HSGAG     ', 'Housing Agency                                              ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, STATIC_VALUE_1)
 Values
   ('FND10', 'HSGCM     ', 'Housing Commercial                                          ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, STATIC_VALUE_1)
 Values
   ('FND10', 'GCMCORP   ', 'Corporate                                                   ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, STATIC_VALUE_1)
 Values
   ('FND10', 'SFB/SHP   ', 'UK Structured Finance                                       ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, STATIC_VALUE_1)
 Values
   ('FND10', 'UKMCB     ', 'UKCB - Major Corporate Business                             ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, STATIC_VALUE_1)
 Values
   ('FND10', 'UKRCB     ', 'UKCB - Regional Corporate Business                          ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, STATIC_VALUE_1)
 Values
   ('FND10', 'UKCOMM    ', 'UKCB - Commercial                                           ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, STATIC_VALUE_1)
 Values
   ('FND10', 'UKSCOT    ', 'UKCB - Scotland                                             ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, STATIC_VALUE_1)
 Values
   ('FND10', 'LF1       ', 'UK Agency - Structured Finance LF1                          ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, STATIC_VALUE_1)
 Values
   ('FND10', 'LF3       ', 'UK Agency - Structured Finance LF3                          ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, STATIC_VALUE_1)
 Values
   ('FND10', 'LF5       ', 'UK Agency - Structured Finance LF5                          ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, STATIC_VALUE_1)
 Values
   ('FND10', 'EURAG     ', 'European Agency                                             ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, STATIC_VALUE_1)
 Values
   ('FND10', 'UKSHP     ', 'Shipping Middle Office                                      ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, STATIC_VALUE_1)
 Values
   ('FND_M', 'mplOstRID ', '0                                                           ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, STATIC_VALUE_1)
 Values
   ('FND_M', 'mplIntAmt ', '-1                                                          ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, STATIC_VALUE_1)
 Values
   ('FND_M', 'mplTranRID', '2                                                           ');
Insert into RBSGBL_STATIC_DETAILS
   (STATIC_TYPE_ID, KEY_VALUE_1, STATIC_VALUE_1)
 Values
   ('FND_M', 'mplEffDate', '1                                                           ');
   
insert into rbsgbl_static_details (static_type_id, key_value_1, key_value_2, static_value_1, static_value_2) values
('FND04', 'NWBLN', 'FIXQR', 'Fixed Rate Option', 'Y');
insert into rbsgbl_static_details (static_type_id, key_value_1, key_value_2, static_value_1, static_value_2) values
('FND04', 'RBMDL', 'FIXQR', 'Fixed Rate Option', 'Y');
insert into rbsgbl_static_details (static_type_id, key_value_1, key_value_2, static_value_1, static_value_2) values
('FND04', 'RBSFF', 'FIXQR', 'Fixed Rate Option', 'Y');
insert into rbsgbl_static_details (static_type_id, key_value_1, key_value_2, static_value_1, static_value_2) values
('FND04', 'RBSHS', 'FIXQR', 'Fixed Rate Option', 'Y');
insert into rbsgbl_static_details (static_type_id, key_value_1, key_value_2, static_value_1, static_value_2) values
('FND04', 'RBSLB', 'FIXQR', 'Fixed Rate Option', 'Y');
insert into rbsgbl_static_details (static_type_id, key_value_1, key_value_2, static_value_1, static_value_2) values
('FND04', 'RBSLN', 'FIXQR', 'Fixed Rate Option', 'Y');
insert into rbsgbl_static_details (static_type_id, key_value_1, key_value_2, static_value_1, static_value_2) values
('FND04', 'RBSMD', 'FIXQR', 'Fixed Rate Option', 'Y');
insert into rbsgbl_static_details (static_type_id, key_value_1, key_value_2, static_value_1, static_value_2) values
('FND04', 'RBSML', 'FIXQR', 'Fixed Rate Option', 'Y');
insert into rbsgbl_static_details (static_type_id, key_value_1, key_value_2, static_value_1, static_value_2) values
('FND04', 'RBSOS', 'FIXQR', 'Fixed Rate Option', 'Y');
insert into rbsgbl_static_details (static_type_id, key_value_1, key_value_2, static_value_1, static_value_2) values
('FND04', 'RBSPR', 'FIXQR', 'Fixed Rate Option', 'Y');
insert into rbsgbl_static_details (static_type_id, key_value_1, key_value_2, static_value_1, static_value_2) values
('FND04', 'RBSSH', 'FIXQR', 'Fixed Rate Option', 'Y');

insert into rbsgbl_static_details (static_type_id, key_value_1, key_value_2, static_value_1, static_value_2) values
('FND04', 'NWBLN', 'WFDCY', 'Fixed Rate Option', 'Y');
insert into rbsgbl_static_details (static_type_id, key_value_1, key_value_2, static_value_1, static_value_2) values
('FND04', 'RBMDL', 'WFDCY', 'Fixed Rate Option', 'Y');
insert into rbsgbl_static_details (static_type_id, key_value_1, key_value_2, static_value_1, static_value_2) values
('FND04', 'RBSFF', 'WFDCY', 'Fixed Rate Option', 'Y');
insert into rbsgbl_static_details (static_type_id, key_value_1, key_value_2, static_value_1, static_value_2) values
('FND04', 'RBSHS', 'WFDCY', 'Fixed Rate Option', 'Y');
insert into rbsgbl_static_details (static_type_id, key_value_1, key_value_2, static_value_1, static_value_2) values
('FND04', 'RBSLB', 'WFDCY', 'Fixed Rate Option', 'Y');
insert into rbsgbl_static_details (static_type_id, key_value_1, key_value_2, static_value_1, static_value_2) values
('FND04', 'RBSLN', 'WFDCY', 'Fixed Rate Option', 'Y');
insert into rbsgbl_static_details (static_type_id, key_value_1, key_value_2, static_value_1, static_value_2) values
('FND04', 'RBSMD', 'WFDCY', 'Fixed Rate Option', 'Y');
insert into rbsgbl_static_details (static_type_id, key_value_1, key_value_2, static_value_1, static_value_2) values
('FND04', 'RBSML', 'WFDCY', 'Fixed Rate Option', 'Y');
insert into rbsgbl_static_details (static_type_id, key_value_1, key_value_2, static_value_1, static_value_2) values
('FND04', 'RBSOS', 'WFDCY', 'Fixed Rate Option', 'Y');
insert into rbsgbl_static_details (static_type_id, key_value_1, key_value_2, static_value_1, static_value_2) values
('FND04', 'RBSPR', 'WFDCY', 'Fixed Rate Option', 'Y');
insert into rbsgbl_static_details (static_type_id, key_value_1, key_value_2, static_value_1, static_value_2) values
('FND04', 'RBSSH', 'WFDCY', 'Fixed Rate Option', 'Y');
insert into rbsgbl_static_details (static_type_id, key_value_1, key_value_2, static_value_1, static_value_2) values
('FND04', 'NWBLN', 'WFDGB', 'Fixed Rate Option', 'Y');
insert into rbsgbl_static_details (static_type_id, key_value_1, key_value_2, static_value_1, static_value_2) values
('FND04', 'RBMDL', 'WFDGB', 'Fixed Rate Option', 'Y');
insert into rbsgbl_static_details (static_type_id, key_value_1, key_value_2, static_value_1, static_value_2) values
('FND04', 'RBSFF', 'WFDGB', 'Fixed Rate Option', 'Y');
insert into rbsgbl_static_details (static_type_id, key_value_1, key_value_2, static_value_1, static_value_2) values
('FND04', 'RBSHS', 'WFDGB', 'Fixed Rate Option', 'Y');
insert into rbsgbl_static_details (static_type_id, key_value_1, key_value_2, static_value_1, static_value_2) values
('FND04', 'RBSLB', 'WFDGB', 'Fixed Rate Option', 'Y');
insert into rbsgbl_static_details (static_type_id, key_value_1, key_value_2, static_value_1, static_value_2) values
('FND04', 'RBSLN', 'WFDGB', 'Fixed Rate Option', 'Y');
insert into rbsgbl_static_details (static_type_id, key_value_1, key_value_2, static_value_1, static_value_2) values
('FND04', 'RBSMD', 'WFDGB', 'Fixed Rate Option', 'Y');
insert into rbsgbl_static_details (static_type_id, key_value_1, key_value_2, static_value_1, static_value_2) values
('FND04', 'RBSML', 'WFDGB', 'Fixed Rate Option', 'Y');
insert into rbsgbl_static_details (static_type_id, key_value_1, key_value_2, static_value_1, static_value_2) values
('FND04', 'RBSOS', 'WFDGB', 'Fixed Rate Option', 'Y');
insert into rbsgbl_static_details (static_type_id, key_value_1, key_value_2, static_value_1, static_value_2) values
('FND04', 'RBSPR', 'WFDGB', 'Fixed Rate Option', 'Y');
insert into rbsgbl_static_details (static_type_id, key_value_1, key_value_2, static_value_1, static_value_2) values
('FND04', 'RBSSH', 'WFDGB', 'Fixed Rate Option', 'Y');

/* TD 1354 */
update rbsgbl_static_details set static_value_2='ACBSCZK' where static_type_id ='FND02' and key_value_1 like 'RB%' and key_value_2 in('CZK','HUF','PLN');

Insert into RBSGBL_STATIC_DETAILS (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, KEY_VALUE_3, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4, STATIC_VALUE_5)
 Values ('FND02','RBMDL','RON',NULL,'EMKTMM','ACBSCZK','3',NULL,NULL);
Insert into RBSGBL_STATIC_DETAILS (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, KEY_VALUE_3, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4, STATIC_VALUE_5)
 Values ('FND02','RBSFF','RON',NULL,'EMKTMM','ACBSCZK','3',NULL,NULL);
Insert into RBSGBL_STATIC_DETAILS (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, KEY_VALUE_3, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4, STATIC_VALUE_5)
 Values ('FND02','RBSHS','RON',NULL,'EMKTMM','ACBSCZK','3',NULL,NULL);
Insert into RBSGBL_STATIC_DETAILS (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, KEY_VALUE_3, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4, STATIC_VALUE_5)
 Values ('FND02','RBSLB','RON',NULL,'EMKTMM','ACBSCZK','3',NULL,NULL);
Insert into RBSGBL_STATIC_DETAILS (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, KEY_VALUE_3, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4, STATIC_VALUE_5)
 Values ('FND02','RBSLN','RON',NULL,'EMKTMM','ACBSCZK','3',NULL,NULL);
Insert into RBSGBL_STATIC_DETAILS (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, KEY_VALUE_3, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4, STATIC_VALUE_5)
 Values ('FND02','RBSMD','RON',NULL,'EMKTMM','ACBSCZK','3',NULL,NULL);
Insert into RBSGBL_STATIC_DETAILS (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, KEY_VALUE_3, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4, STATIC_VALUE_5)
 Values ('FND02','RBSML','RON',NULL,'EMKTMM','ACBSCZK','3',NULL,NULL);
Insert into RBSGBL_STATIC_DETAILS (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, KEY_VALUE_3, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4, STATIC_VALUE_5)
 Values ('FND02','RBSOS','RON',NULL,'EMKTMM','ACBSCZK','3',NULL,NULL);
Insert into RBSGBL_STATIC_DETAILS (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, KEY_VALUE_3, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4, STATIC_VALUE_5)
 Values ('FND02','RBSPR','RON',NULL,'EMKTMM','ACBSCZK','3',NULL,NULL);
Insert into RBSGBL_STATIC_DETAILS (STATIC_TYPE_ID, KEY_VALUE_1, KEY_VALUE_2, KEY_VALUE_3, STATIC_VALUE_1, STATIC_VALUE_2, STATIC_VALUE_3, STATIC_VALUE_4, STATIC_VALUE_5)
 Values ('FND02','RBSSH','RON',NULL,'EMKTMM','ACBSCZK','3',NULL,NULL);
COMMIT;