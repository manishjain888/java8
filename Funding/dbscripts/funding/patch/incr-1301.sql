delete from rbsgbl_static_details where static_type_id = 'FND04' and key_value_2 = 'WFDCY';

delete from rbsgbl_static_details where static_type_id = 'FND04' and key_value_2 = 'WFDGB';

-- Insert scripts for weighted funding rate for FND04
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

commit;