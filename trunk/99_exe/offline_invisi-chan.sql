truncate table trs_shipment_mst;
truncate table trs_sales_mst;
 truncate table trs_retur_mst;
 truncate table trs_receipt_mst;
 truncate table trs_payment_mst;
 truncate table trs_order_mst;
 truncate table trs_money_trans_mst;
 truncate table trs_item_use_mst;
 truncate table trs_holded_mst;
 truncate table mst_relation_service;
 truncate table mst_money_balance;
 truncate table inv_relation_balance;
 truncate table inv_item_balance;
 truncate table inv_cashier_balance;
 update mst_item set current_stock = 0;
 update mst_relation_service set jumlah = 0, total =0;

-- Begin on 12/09/06 14:42:13 - Gania
XA START 'INVISI-CHANGania';
delete from mst_code where code_id = 171;
delete from mst_code where code_id = 171;
delete from mst_code where code_id = 171;
delete from mst_code where code_id = 171;
delete from mst_code where code_id = 171;
delete from mst_code where code_id = 171;
delete from mst_code where code_id = 171;
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 12/09/06 14:42:16 - Gania
XA START 'INVISI-CHANGania';
delete from mst_code where code_id = 18;
delete from mst_code where code_id = 18;
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 12/09/06 14:42:20 - Gania
XA START 'INVISI-CHANGania';
delete from mst_code where code_id = 16;
delete from mst_code where code_id = 16;
delete from mst_code where code_id = 16;
delete from mst_code where code_id = 16;
delete from mst_code where code_id = 16;
delete from mst_code where code_id = 16;
delete from mst_code where code_id = 16;
delete from mst_code where code_id = 16;
delete from mst_code where code_id = 16;
delete from mst_code where code_id = 16;
delete from mst_code where code_id = 16;
delete from mst_code where code_id = 16;
delete from mst_code where code_id = 16;
delete from mst_code where code_id = 16;
delete from mst_code where code_id = 16;
delete from mst_code where code_id = 16;
delete from mst_code where code_id = 16;
delete from mst_code where code_id = 16;
delete from mst_code where code_id = 16;
delete from mst_code where code_id = 16;
delete from mst_code where code_id = 16;
delete from mst_code where code_id = 16;
delete from mst_code where code_id = 16;
delete from mst_code where code_id = 16;
delete from mst_code where code_id = 16;
delete from mst_code where code_id = 16;
delete from mst_code where code_id = 16;
delete from mst_code where code_id = 16;
delete from mst_code where code_id = 16;
delete from mst_code where code_id = 16;
delete from mst_code where code_id = 16;
delete from mst_code where code_id = 16;
delete from mst_code where code_id = 16;
delete from mst_code where code_id = 16;
delete from mst_code where code_id = 16;
delete from mst_code where code_id = 16;
delete from mst_code where code_id = 16;
delete from mst_code where code_id = 16;
delete from mst_code where code_id = 16;
delete from mst_code where code_id = 16;
delete from mst_code where code_id = 16;
delete from mst_code where code_id = 16;
delete from mst_code where code_id = 16;
delete from mst_code where code_id = 16;
delete from mst_code where code_id = 16;
delete from mst_code where code_id = 16;
delete from mst_code where code_id = 16;
delete from mst_code where code_id = 16;
delete from mst_code where code_id = 16;
delete from mst_code where code_id = 16;
delete from mst_code where code_id = 16;
delete from mst_code where code_id = 16;
delete from mst_code where code_id = 16;
delete from mst_code where code_id = 16;
delete from mst_code where code_id = 16;
delete from mst_code where code_id = 16;
delete from mst_code where code_id = 16;
delete from mst_code where code_id = 16;
delete from mst_code where code_id = 16;
delete from mst_code where code_id = 16;
delete from mst_code where code_id = 16;
delete from mst_code where code_id = 16;
delete from mst_code where code_id = 16;
delete from mst_code where code_id = 16;
delete from mst_code where code_id = 16;
delete from mst_code where code_id = 16;
delete from mst_code where code_id = 16;
delete from mst_code where code_id = 16;
delete from mst_code where code_id = 16;
delete from mst_code where code_id = 16;
delete from mst_code where code_id = 16;
delete from mst_code where code_id = 16;
delete from mst_code where code_id = 16;
delete from mst_code where code_id = 16;
delete from mst_code where code_id = 16;
delete from mst_code where code_id = 16;
delete from mst_code where code_id = 16;
delete from mst_code where code_id = 16;
delete from mst_code where code_id = 16;
delete from mst_code where code_id = 16;
delete from mst_code where code_id = 16;
delete from mst_code where code_id = 16;
delete from mst_code where code_id = 16;
delete from mst_code where code_id = 16;
delete from mst_code where code_id = 16;
delete from mst_code where code_id = 16;
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 12/09/06 14:42:25 - Gania
XA START 'INVISI-CHANGania';
delete from mst_code where code_id = 207;
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 12/09/06 14:42:26 - Gania
XA START 'INVISI-CHANGania';
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
delete from mst_code where code_id = 1;
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 12/09/06 14:42:36 - Gania
XA START 'INVISI-CHANGania';
update mst_code set code_name = 'JENIS_ITEM', code_code = '', parent_id = 102, urut = 0 where code_id = 107;
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 12/09/06 14:45:06 - Gania
XA START 'INVISI-CHANGania';
update mst_code set code_name = 'Makanan', code_code = '01', parent_id = 109, urut = 0 where code_id = 110;
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 12/09/06 14:46:26 - Gania
XA START 'INVISI-CHANGania';
insert into mst_code (code_name,code_code, parent_id, urut, level) values ('Makanan','',1,0,2);
insert into point_maping (code_id, root_id) values (2,2);
insert into point_maping (code_id, root_id) values (2,1);
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 12/09/06 14:46:34 - Gania
XA START 'INVISI-CHANGania';
insert into mst_code (code_name,code_code, parent_id, urut, level) values ('Minuman','',1,0,2);
insert into point_maping (code_id, root_id) values (3,3);
insert into point_maping (code_id, root_id) values (3,1);
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 12/09/06 14:46:55 - Gania
XA START 'INVISI-CHANGania';
insert into mst_code (code_name,code_code, parent_id, urut, level) values ('Makanan Ringan','',2,0,3);
insert into point_maping (code_id, root_id) values (4,4);
insert into point_maping (code_id, root_id) values (4,2);
insert into point_maping (code_id, root_id) values (4,1);
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 12/09/06 14:47:03 - Gania
XA START 'INVISI-CHANGania';
insert into mst_code (code_name,code_code, parent_id, urut, level) values ('Minuman Energi','',3,0,3);
insert into point_maping (code_id, root_id) values (5,5);
insert into point_maping (code_id, root_id) values (5,3);
insert into point_maping (code_id, root_id) values (5,1);
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 12/09/06 14:49:09 - Gania
XA START 'INVISI-CHANGania';
INSERT INTO System_Users (User_Id, User_Name, Passwd, Access_Level)  VALUES ('lukman','lukman','', 5);
INSERT INTO System_Access (User_Id,Menu_Id,Access_List,Outlook_Panel,Outlook_Button,Usage_Count, can_acces,can_add,can_edit,can_delete,can_view,can_print) VALUES ('lukman',101,0,'','',0,0,-1,-1,-1,-1,-1);
INSERT INTO System_Access (User_Id,Menu_Id,Access_List,Outlook_Panel,Outlook_Button,Usage_Count, can_acces,can_add,can_edit,can_delete,can_view,can_print) VALUES ('lukman',102,0,'','',0,0,-1,-1,-1,-1,-1);
INSERT INTO System_Access (User_Id,Menu_Id,Access_List,Outlook_Panel,Outlook_Button,Usage_Count, can_acces,can_add,can_edit,can_delete,can_view,can_print) VALUES ('lukman',210,0,'','',0,0,-1,-1,-1,-1,-1);
INSERT INTO System_Access (User_Id,Menu_Id,Access_List,Outlook_Panel,Outlook_Button,Usage_Count, can_acces,can_add,can_edit,can_delete,can_view,can_print) VALUES ('lukman',220,0,'','',0,0,-1,-1,-1,-1,-1);
INSERT INTO System_Access (User_Id,Menu_Id,Access_List,Outlook_Panel,Outlook_Button,Usage_Count, can_acces,can_add,can_edit,can_delete,can_view,can_print) VALUES ('lukman',223,0,'','',0,0,-1,-1,-1,-1,-1);
INSERT INTO System_Access (User_Id,Menu_Id,Access_List,Outlook_Panel,Outlook_Button,Usage_Count, can_acces,can_add,can_edit,can_delete,can_view,can_print) VALUES ('lukman',301,0,'','',0,0,-1,-1,-1,-1,-1);
INSERT INTO System_Access (User_Id,Menu_Id,Access_List,Outlook_Panel,Outlook_Button,Usage_Count, can_acces,can_add,can_edit,can_delete,can_view,can_print) VALUES ('lukman',302,0,'','',0,0,-1,-1,-1,-1,-1);
INSERT INTO System_Access (User_Id,Menu_Id,Access_List,Outlook_Panel,Outlook_Button,Usage_Count, can_acces,can_add,can_edit,can_delete,can_view,can_print) VALUES ('lukman',323,0,'','',0,0,-1,-1,-1,-1,-1);
INSERT INTO System_Access (User_Id,Menu_Id,Access_List,Outlook_Panel,Outlook_Button,Usage_Count, can_acces,can_add,can_edit,can_delete,can_view,can_print) VALUES ('lukman',330,0,'','',0,0,-1,-1,-1,-1,-1);
INSERT INTO System_Access (User_Id,Menu_Id,Access_List,Outlook_Panel,Outlook_Button,Usage_Count, can_acces,can_add,can_edit,can_delete,can_view,can_print) VALUES ('lukman',331,0,'','',0,0,-1,-1,-1,-1,-1);
INSERT INTO System_Access (User_Id,Menu_Id,Access_List,Outlook_Panel,Outlook_Button,Usage_Count, can_acces,can_add,can_edit,can_delete,can_view,can_print) VALUES ('lukman',401,0,'','',0,0,-1,-1,-1,-1,-1);
INSERT INTO System_Access (User_Id,Menu_Id,Access_List,Outlook_Panel,Outlook_Button,Usage_Count, can_acces,can_add,can_edit,can_delete,can_view,can_print) VALUES ('lukman',501,0,'','',0,0,-1,-1,-1,-1,-1);
INSERT INTO System_Access (User_Id,Menu_Id,Access_List,Outlook_Panel,Outlook_Button,Usage_Count, can_acces,can_add,can_edit,can_delete,can_view,can_print) VALUES ('lukman',510,0,'','',0,0,-1,-1,-1,-1,-1);
INSERT INTO System_Access (User_Id,Menu_Id,Access_List,Outlook_Panel,Outlook_Button,Usage_Count, can_acces,can_add,can_edit,can_delete,can_view,can_print) VALUES ('lukman',530,0,'','',0,0,-1,-1,-1,-1,-1);
INSERT INTO System_Access (User_Id,Menu_Id,Access_List,Outlook_Panel,Outlook_Button,Usage_Count, can_acces,can_add,can_edit,can_delete,can_view,can_print) VALUES ('lukman',1001,0,'','',0,0,-1,-1,-1,-1,-1);
INSERT INTO System_Access (User_Id,Menu_Id,Access_List,Outlook_Panel,Outlook_Button,Usage_Count, can_acces,can_add,can_edit,can_delete,can_view,can_print) VALUES ('lukman',1002,0,'','',0,0,-1,-1,-1,-1,-1);
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 12/09/06 15:08:15 - Gania
XA START 'INVISI-CHANGania';
insert into mst_item (specification, item_code, barcode, struk_name, merk, avg_price, vendor_id, produsen_id, kemasan_id, bkp, konsinyasi, item_name, dosis, kategori, expire_date) values (4,'0001','222','kacang ijo','SObo',0,NULL,NULL,8,0,0,'kacang ijo',0,0,cast('2012-09-06 'as date));
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 12/09/06 15:21:10 - Gania
XA START 'INVISI-CHANGania';
UPDATE System_Users SET User_Name='lukman', Access_Level=5 WHERE User_Id='lukman';
UPDATE System_Access SET Access_List=0, Outlook_Panel='', Outlook_Button='', Usage_Count=0, Can_Acces =0, Can_Add =-1, Can_edit =-1, Can_delete =-1, Can_view =-1, Can_print =-1 WHERE User_Id='lukman' AND Menu_Id=101;
UPDATE System_Access SET Access_List=0, Outlook_Panel='', Outlook_Button='', Usage_Count=0, Can_Acces =0, Can_Add =-1, Can_edit =-1, Can_delete =-1, Can_view =-1, Can_print =-1 WHERE User_Id='lukman' AND Menu_Id=102;
INSERT INTO System_Access (User_Id,Menu_Id,Access_List,Outlook_Panel,Outlook_Button,Usage_Count, can_acces,can_add,can_edit,can_delete,can_view,can_print) VALUES ('lukman',205,0,'','',0,0,-1,-1,-1,-1,0);
UPDATE System_Access SET Access_List=0, Outlook_Panel='', Outlook_Button='', Usage_Count=0, Can_Acces =0, Can_Add =-1, Can_edit =-1, Can_delete =-1, Can_view =-1, Can_print =-1 WHERE User_Id='lukman' AND Menu_Id=210;
UPDATE System_Access SET Access_List=0, Outlook_Panel='', Outlook_Button='', Usage_Count=0, Can_Acces =0, Can_Add =-1, Can_edit =-1, Can_delete =-1, Can_view =-1, Can_print =-1 WHERE User_Id='lukman' AND Menu_Id=220;
UPDATE System_Access SET Access_List=0, Outlook_Panel='', Outlook_Button='', Usage_Count=0, Can_Acces =0, Can_Add =-1, Can_edit =-1, Can_delete =-1, Can_view =-1, Can_print =-1 WHERE User_Id='lukman' AND Menu_Id=223;
UPDATE System_Access SET Access_List=0, Outlook_Panel='', Outlook_Button='', Usage_Count=0, Can_Acces =0, Can_Add =-1, Can_edit =-1, Can_delete =-1, Can_view =-1, Can_print =-1 WHERE User_Id='lukman' AND Menu_Id=301;
UPDATE System_Access SET Access_List=0, Outlook_Panel='', Outlook_Button='', Usage_Count=0, Can_Acces =0, Can_Add =-1, Can_edit =-1, Can_delete =-1, Can_view =-1, Can_print =-1 WHERE User_Id='lukman' AND Menu_Id=302;
UPDATE System_Access SET Access_List=0, Outlook_Panel='', Outlook_Button='', Usage_Count=0, Can_Acces =0, Can_Add =-1, Can_edit =-1, Can_delete =-1, Can_view =-1, Can_print =-1 WHERE User_Id='lukman' AND Menu_Id=323;
UPDATE System_Access SET Access_List=0, Outlook_Panel='', Outlook_Button='', Usage_Count=0, Can_Acces =0, Can_Add =-1, Can_edit =-1, Can_delete =-1, Can_view =-1, Can_print =-1 WHERE User_Id='lukman' AND Menu_Id=330;
UPDATE System_Access SET Access_List=0, Outlook_Panel='', Outlook_Button='', Usage_Count=0, Can_Acces =0, Can_Add =-1, Can_edit =-1, Can_delete =-1, Can_view =-1, Can_print =-1 WHERE User_Id='lukman' AND Menu_Id=331;
UPDATE System_Access SET Access_List=0, Outlook_Panel='', Outlook_Button='', Usage_Count=0, Can_Acces =0, Can_Add =-1, Can_edit =-1, Can_delete =-1, Can_view =-1, Can_print =-1 WHERE User_Id='lukman' AND Menu_Id=401;
UPDATE System_Access SET Access_List=0, Outlook_Panel='', Outlook_Button='', Usage_Count=0, Can_Acces =0, Can_Add =-1, Can_edit =-1, Can_delete =-1, Can_view =-1, Can_print =-1 WHERE User_Id='lukman' AND Menu_Id=501;
UPDATE System_Access SET Access_List=0, Outlook_Panel='', Outlook_Button='', Usage_Count=0, Can_Acces =0, Can_Add =-1, Can_edit =-1, Can_delete =-1, Can_view =-1, Can_print =-1 WHERE User_Id='lukman' AND Menu_Id=510;
UPDATE System_Access SET Access_List=0, Outlook_Panel='', Outlook_Button='', Usage_Count=0, Can_Acces =0, Can_Add =-1, Can_edit =-1, Can_delete =-1, Can_view =-1, Can_print =-1 WHERE User_Id='lukman' AND Menu_Id=530;
UPDATE System_Access SET Access_List=0, Outlook_Panel='', Outlook_Button='', Usage_Count=0, Can_Acces =0, Can_Add =-1, Can_edit =-1, Can_delete =-1, Can_view =-1, Can_print =-1 WHERE User_Id='lukman' AND Menu_Id=1001;
UPDATE System_Access SET Access_List=0, Outlook_Panel='', Outlook_Button='', Usage_Count=0, Can_Acces =0, Can_Add =-1, Can_edit =-1, Can_delete =-1, Can_view =-1, Can_print =-1 WHERE User_Id='lukman' AND Menu_Id=1002;
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 12/09/06 15:23:29 - Gania
XA START 'INVISI-CHANGania';
delete from mst_master where mst_id = 14;
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 12/09/06 15:23:34 - Gania
XA START 'INVISI-CHANGania';
delete from mst_master where mst_id = 24;
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 12/09/06 15:23:37 - Gania
XA START 'INVISI-CHANGania';
delete from mst_master where mst_id = 15;
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 12/09/06 15:23:41 - Gania
XA START 'INVISI-CHANGania';
delete from mst_master where mst_id = 12;
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 12/09/06 15:23:43 - Gania
XA START 'INVISI-CHANGania';
delete from mst_master where mst_id = 16;
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 12/09/06 15:23:53 - Gania
XA START 'INVISI-CHANGania';
insert into mst_master (mst_tipe, mst_code, mst_name)values (1,'GLS','GELAS');
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 12/09/06 19:44:57 - Gania
XA START 'INVISI-CHANGania';
insert into mst_item (specification, item_code, barcode, struk_name, merk, avg_price, vendor_id, produsen_id, kemasan_id, bkp, konsinyasi, item_name, dosis, kategori, expire_date) values (5,'ADFDASFSADFSDAFDSFSDAF','','Extra Jozz','Exc',0,NULL,NULL,25,0,0,'Extra Jozz',0,0,cast('2012-09-06 'as date));
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';
update mst_company set company_name = 'Gania Snack', address = 'Jl. Sayati', telp1 = '022-', telp2 = '', fax = '', city = 'Bandung', branch = '0002 Jangki Depok', npwp = '', post_code = '', info = 'All about snack', user_id = 'Rd. Irwan Herlambang', current_branch=3,serial_number = '49EE0BD6-42608C74-498A02B5';

-- Begin on 12/09/07 15:26:56 - Gania
XA START 'INVISI-CHANGania';
insert into trs_receipt_mst (trans_num, trans_date, tipe, expr_date, relation_id, order_id, gudang_id, subtotal, disc_detail, disc_mst, tax, biaya, materai, total, notes, dpp_disc2, user_id) values ('RC/20120900001',cast('2012-09-07 'as date),1,cast('1899-12-30 'as date),47,NULL,1,2000,10,0,0,0,0,1990,'rrrr',0,'adm');
insert into trs_receipt_detail (receipt_id, item_id, conv_id, conv_bonus_id, quantity, qty_bonus, price, amount, disc1, disc2, disc3, conversion, conv_bonus, disc1_is_prc, disc2_is_prc, disc3_is_prc, tax)values (last_insert_id(), 1,0,0,2,0,1000,2000,10,0,0,1,0,0,0,0,0);
update trs_order_mst set sudah_diterima = 1 where order_id = 0;
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 12/09/07 15:27:15 - Gania
XA START 'INVISI-CHANGania';
update trs_receipt_mst set status_id = 1, sisa = total where receipt_id = 1;
update mst_item set buying_price = 1000, avg_price = (ifnull((0 * avg_price),0) + 2000) / (ifnull(0,0) + 2) where item_id = 1;
update mst_item set current_stock = current_stock + 2 where item_id = 1;
call save_to_item_balance(1, 1, cast('2012-09-07 'as date), 2, 'D');
update mst_item set  buying_price = 1000 WHERE item_id = 1;
insert into mst_buying_price_hist(item_id,price,end_date,supplier,insert_log)  values(1,1000,now(),'bu eny (CS.004)','adm;2012-09-07 16:26:51 ');
call save_to_relation_balance(47, cast('2012-09-07 'as date), 1990, 'D');
update mst_relation set current_debt = current_debt + 1990 where relation_id = 47;
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 12/09/14 17:36:50 - Gania
XA START 'INVISI-CHANGania';
update mst_item set disabled_date = if(disabled_date is null, curdate(), null) where item_id = 1;
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 12/09/14 18:20:30 - Gania
XA START 'INVISI-CHANGania';
update mst_item set disabled_date = if(disabled_date is null, curdate(), null) where item_id = 1;
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 12/09/14 19:34:36 - Gania
XA START 'INVISI-CHANGania';
delete from mst_relation_animal where relation_id = 52;

-- Begin on 12/09/14 19:36:46 - Gania
XA START 'INVISI-CHANGania';
delete from mst_relation where relation_id = 27;
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 12/09/14 19:36:49 - Gania
XA START 'INVISI-CHANGania';
delete from mst_relation where relation_id = 52;
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 12/09/14 19:36:57 - Gania
XA START 'INVISI-CHANGania';
delete from mst_relation where relation_id = 20;
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 12/09/14 19:38:09 - Gania
XA START 'INVISI-CHANGania';
insert into trs_receipt_mst (trans_num, trans_date, tipe, expr_date, relation_id, order_id, gudang_id, subtotal, disc_detail, disc_mst, tax, biaya, materai, total, notes, dpp_disc2, user_id) values ('RC/20120900002',cast('2012-09-14 'as date),1,cast('1899-12-30 'as date),47,NULL,1,150000,0,0,0,0,0,150000,'',0,'adm');
insert into trs_receipt_detail (receipt_id, item_id, conv_id, conv_bonus_id, quantity, qty_bonus, price, amount, disc1, disc2, disc3, conversion, conv_bonus, disc1_is_prc, disc2_is_prc, disc3_is_prc, tax)values (last_insert_id(), 2,0,0,100,0,1500,150000,0,0,0,1,0,0,0,0,0);
update trs_order_mst set sudah_diterima = 1 where order_id = 0;
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 12/09/14 19:38:12 - Gania
XA START 'INVISI-CHANGania';
update trs_receipt_mst set status_id = 1, sisa = total where receipt_id = 2;
update mst_item set buying_price = 1500, avg_price = (ifnull((0 * avg_price),0) + 150000) / (ifnull(0,0) + 100) where item_id = 2;
update mst_item set current_stock = current_stock + 100 where item_id = 2;
call save_to_item_balance(1, 2, cast('2012-09-14 'as date), 100, 'D');
update mst_item set  buying_price = 1500 WHERE item_id = 2;
insert into mst_buying_price_hist(item_id,price,end_date,supplier,insert_log)  values(2,1500,now(),'bu eny (CS.004)','adm;2012-09-14 20:37:48 ');
call save_to_relation_balance(47, cast('2012-09-14 'as date), 150000, 'D');
update mst_relation set current_debt = current_debt + 150000 where relation_id = 47;
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 12/09/14 19:41:26 - Gania
XA START 'INVISI-CHANGania';
insert into mst_item (specification, item_code, barcode, struk_name, merk, avg_price, vendor_id, produsen_id, kemasan_id, bkp, konsinyasi, item_name, dosis, kategori, expire_date) values (3,'0002','0002','Teh Botol','Sosro',0,NULL,NULL,25,0,0,'Teh Botol',0,0,cast('2012-09-14 'as date));
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 12/10/04 17:20:06 - Gania
XA START 'INVISI-CHANGania';
insert into trs_money_trans_mst (trans_num, trans_date, trans_type,  total, notes, person_id,insert_log) values ('UM20121000001',cast('2012-10-04 'as date),1,20000,'',26,'adm;2012-10-04 18:19:42 ');
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA ROLLBACK 'INVISI-CHANGania';

-- Begin on 12/10/04 17:21:19 - Gania
XA START 'INVISI-CHANGania';
insert into trs_money_trans_mst (trans_num, trans_date, trans_type,  total, notes, relation_id,insert_log) values ('UM20121000001',cast('2012-10-04 'as date),1,5000,'',57,'adm;2012-10-04 18:20:55 ');
insert into trs_money_trans_detail (money_trans_id, description, amount,akun_id, money_id)values (1,'',5000,NULL,2);
call save_to_relation_balance(57, cast('2012-10-04 'as date), 5000, 'D');
update mst_relation set current_debt = current_debt + 5000 where relation_id = 57;
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 12/10/05 11:30:10 - Gania
XA START 'INVISI-CHANGania';
insert into trs_money_trans_mst (trans_num, trans_date, trans_type,  total, notes, relation_id,insert_log) values ('UK20121000001',cast('2012-10-05 'as date),2,500,'',57,'adm;2012-10-05 12:29:46 ');
insert into trs_money_trans_detail (money_trans_id, description, amount,akun_id, money_id)values (2,'',500,NULL,2);
call save_to_relation_balance(57, cast('2012-10-05 'as date), 500, 'C');
update mst_relation set current_debt = current_debt + -500 where relation_id = 57;
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';
truncate table trs_shipment_mst;
truncate table trs_sales_mst;
 truncate table trs_retur_mst;
 truncate table trs_receipt_mst;
 truncate table trs_payment_mst;
 truncate table trs_order_mst;
 truncate table trs_money_trans_mst;
 truncate table trs_item_use_mst;
 truncate table trs_holded_mst;
 truncate table mst_relation_service;
truncate table trs_shipment_mst;
truncate table trs_sales_mst;
 truncate table trs_retur_mst;
 truncate table trs_receipt_mst;
 truncate table trs_payment_mst;
 truncate table trs_order_mst;
 truncate table trs_money_trans_mst;
 truncate table trs_item_use_mst;
 truncate table trs_holded_mst;
 truncate table mst_money_balance;
 truncate table inv_relation_balance;
 truncate table inv_item_balance;
 truncate table inv_cashier_balance;
 update mst_item set current_stock = 0;
 update mst_relation_service set jumlah = 0, total =0;
truncate table trs_shipment_mst;
truncate table trs_sales_mst;
 truncate table trs_retur_mst;
 truncate table trs_receipt_mst;
 truncate table trs_payment_mst;
 truncate table trs_order_mst;
 truncate table trs_money_trans_mst;
 truncate table trs_item_use_mst;
 truncate table trs_holded_mst;
 truncate table mst_money_balance;
 truncate table inv_relation_balance;
 truncate table inv_item_balance;
 truncate table inv_cashier_balance;
 update mst_item set current_stock = 0;
update mst_company set company_name = 'Gania Snack', address = 'Jl. Sayati', telp1 = '022-', telp2 = '', fax = '', city = 'Bandung', branch = '0002 Jangki Depok', npwp = '', post_code = '', info = 'All about snack', user_id = 'Rd. Irwan Herlambang', current_branch=3,serial_number = '49EE0BD6-42608C74-498A02B5';

-- Begin on 12/10/07 12:48:15 - Gania
XA START 'INVISI-CHANGania';
insert into mst_relation (relation_type, relation_code, relation_name, address1, address2, post_code, city, phone1, phone2, contact_person, npwp,discount,wajib_discount, due_date) values (2,'SP.001','Jaya Makmur Sentosa','Gardujati','','','','','','','',0,0,0);
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 12/10/07 12:48:41 - Gania
XA START 'INVISI-CHANGania';
insert into mst_relation (relation_type, relation_code, relation_name, address1, address2, post_code, city, phone1, phone2, contact_person, npwp,discount,wajib_discount, due_date) values (1,'CS.001','Acie Warung','Gg.Saleh','','','','','','','',0,0,0);
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 12/10/07 12:48:55 - Gania
XA START 'INVISI-CHANGania';
insert into mst_relation (relation_type, relation_code, relation_name, address1, address2, post_code, city, phone1, phone2, contact_person, npwp,discount,wajib_discount, due_date) values (1,'CS.002','Pa Emin','G.saleh','','','','','','','',0,0,0);
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 12/10/07 12:49:56 - Gania
XA START 'INVISI-CHANGania';
insert into trs_receipt_mst (trans_num, trans_date, tipe, expr_date, relation_id, order_id, gudang_id, subtotal, disc_detail, disc_mst, tax, biaya, materai, total, notes, dpp_disc2, user_id) values ('RC/20121000001',cast('2012-10-07 'as date),1,cast('1899-12-30 'as date),1,NULL,1,660000,0,0,0,0,0,660000,'',0,'adm');
insert into trs_receipt_detail (receipt_id, item_id, conv_id, conv_bonus_id, quantity, qty_bonus, price, amount, disc1, disc2, disc3, conversion, conv_bonus, disc1_is_prc, disc2_is_prc, disc3_is_prc, tax)values (last_insert_id(), 1,0,0,10,0,1000,10000,0,0,0,1,0,0,0,0,0);
insert into trs_receipt_detail (receipt_id, item_id, conv_id, conv_bonus_id, quantity, qty_bonus, price, amount, disc1, disc2, disc3, conversion, conv_bonus, disc1_is_prc, disc2_is_prc, disc3_is_prc, tax)values (last_insert_id(), 2,0,0,100,0,1500,150000,0,0,0,1,0,0,0,0,0);
insert into trs_receipt_detail (receipt_id, item_id, conv_id, conv_bonus_id, quantity, qty_bonus, price, amount, disc1, disc2, disc3, conversion, conv_bonus, disc1_is_prc, disc2_is_prc, disc3_is_prc, tax)values (last_insert_id(), 3,0,0,200,0,2500,500000,0,0,0,1,0,0,0,0,0);
update trs_order_mst set sudah_diterima = 1 where order_id = 0;
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 12/10/07 12:49:58 - Gania
XA START 'INVISI-CHANGania';
update trs_receipt_mst set status_id = 1, sisa = total where receipt_id = 1;
update mst_item set buying_price = 1000, avg_price = (ifnull((0 * avg_price),0) + 10000) / (ifnull(0,0) + 10) where item_id = 1;
update mst_item set current_stock = current_stock + 10 where item_id = 1;
call save_to_item_balance(1, 1, cast('2012-10-07 'as date), 10, 'D');
update mst_item set  buying_price = 1000 WHERE item_id = 1;
insert into mst_buying_price_hist(item_id,price,end_date,supplier,insert_log)  values(1,1000,now(),'','adm;2012-10-07 13:49:34 ');
update mst_item set buying_price = 1500, avg_price = (ifnull((0 * avg_price),0) + 150000) / (ifnull(0,0) + 100) where item_id = 2;
update mst_item set current_stock = current_stock + 100 where item_id = 2;
call save_to_item_balance(1, 2, cast('2012-10-07 'as date), 100, 'D');
update mst_item set  buying_price = 1500 WHERE item_id = 2;
insert into mst_buying_price_hist(item_id,price,end_date,supplier,insert_log)  values(2,1500,now(),'','adm;2012-10-07 13:49:34 ');
update mst_item set buying_price = 2500, avg_price = (ifnull((0 * avg_price),0) + 500000) / (ifnull(0,0) + 200) where item_id = 3;
update mst_item set current_stock = current_stock + 200 where item_id = 3;
call save_to_item_balance(1, 3, cast('2012-10-07 'as date), 200, 'D');
update mst_item set  buying_price = 2500 WHERE item_id = 3;
insert into mst_buying_price_hist(item_id,price,end_date,supplier,insert_log)  values(3,2500,now(),'','adm;2012-10-07 13:49:34 ');
call save_to_relation_balance(1, cast('2012-10-07 'as date), 660000, 'D');
update mst_relation set current_debt = current_debt + 660000 where relation_id = 1;
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 12/10/07 14:14:35 - Gania
XA START 'INVISI-CHANGania';
insert into trs_sales_mst (trans_num, trans_type, trans_date, cashier_id, gudang_id, pasien_id, subtotal, profit, disc_mst, disc_val_mst, disc_detail, tax, total, embalase, real_amount, sisa, user_id, shift_id, cash, cara_bayar, card_id, bank,animal_seq,animal_id, dokter_id,dp, no_resep) values (get_new_sales_num('201210'), 13,cast('2012-10-07 'as date),NULL,1,NULL,3000,0,0,0,0,0,3000,0,3000,0,'adm',0,3000,0,'','','','',NULL,0,'');
insert into trs_sales_detail (sales_id, item_id, quantity, price, disc, disc_val, amount, amount_profit, price_purchase, paket_id, points, hrg_beli, conversion)values ((select sales_id from trs_sales_mst y where y.trans_num = (select max(x.trans_num) from trs_sales_mst x where x.cashier_id = 0) and y.cashier_id = 0), NULL,2,1500,0,0,3000,1000,1000,NULL,0,1000,1);
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA ROLLBACK 'INVISI-CHANGania';
update system_config set conf_value = '-1'where conf_id = 1;
update system_config set conf_value = '-1'where conf_id = 2;
update system_config set conf_value = 'Harga Sudah Termasuk PPN'where conf_id = 12;
update system_config set conf_value = 'Terimakasih Atas Kunjungn Anda'where conf_id = 13;

-- Begin on 12/10/07 14:18:58 - Gania
XA START 'INVISI-CHANGania';
insert into trs_sales_mst (trans_num, trans_type, trans_date, cashier_id, gudang_id, pasien_id, subtotal, profit, disc_mst, disc_val_mst, disc_detail, tax, total, embalase, real_amount, sisa, user_id, shift_id, cash, cara_bayar, card_id, bank,animal_seq,animal_id, dokter_id,dp, no_resep) values (get_new_sales_num('201210'), 13,cast('2012-10-07 'as date),5,1,NULL,10000,0,0,0,0,0,10000,0,10000,0,'adm',0,10000,0,'','','','',NULL,0,'');
insert into trs_sales_detail (sales_id, item_id, quantity, price, disc, disc_val, amount, amount_profit, price_purchase, paket_id, points, hrg_beli, conversion)values ((select sales_id from trs_sales_mst y where y.trans_num = (select max(x.trans_num) from trs_sales_mst x where x.cashier_id = 5) and y.cashier_id = 5), NULL,10,1000,0,0,10000,0,1000,NULL,0,1000,1);
call save_to_cashier_balance(5, 0, 0, 10000, 0, 0, 0, 'D', 'adm');
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 12/10/07 14:19:00 - Gania
XA START 'INVISI-CHANGania';
insert into trs_sales_mst (trans_num, trans_type, trans_date, cashier_id, gudang_id, pasien_id, subtotal, profit, disc_mst, disc_val_mst, disc_detail, tax, total, embalase, real_amount, sisa, user_id, shift_id, cash, cara_bayar, card_id, bank,animal_seq,animal_id, dokter_id,dp, no_resep) values (get_new_sales_num('201210'), 13,cast('2012-10-07 'as date),5,1,NULL,10000,0,0,0,0,0,10000,0,10000,0,'adm',0,10000,0,'','','','',NULL,0,'');
insert into trs_sales_detail (sales_id, item_id, quantity, price, disc, disc_val, amount, amount_profit, price_purchase, paket_id, points, hrg_beli, conversion)values ((select sales_id from trs_sales_mst y where y.trans_num = (select max(x.trans_num) from trs_sales_mst x where x.cashier_id = 5) and y.cashier_id = 5), NULL,10,1000,0,0,10000,0,1000,NULL,0,1000,1);
call save_to_cashier_balance(5, 0, 0, 10000, 0, 0, 0, 'D', 'adm');
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 12/10/07 14:19:01 - Gania
XA START 'INVISI-CHANGania';
insert into trs_sales_mst (trans_num, trans_type, trans_date, cashier_id, gudang_id, pasien_id, subtotal, profit, disc_mst, disc_val_mst, disc_detail, tax, total, embalase, real_amount, sisa, user_id, shift_id, cash, cara_bayar, card_id, bank,animal_seq,animal_id, dokter_id,dp, no_resep) values (get_new_sales_num('201210'), 13,cast('2012-10-07 'as date),5,1,NULL,10000,0,0,0,0,0,10000,0,10000,0,'adm',0,10000,0,'','','','',NULL,0,'');
insert into trs_sales_detail (sales_id, item_id, quantity, price, disc, disc_val, amount, amount_profit, price_purchase, paket_id, points, hrg_beli, conversion)values ((select sales_id from trs_sales_mst y where y.trans_num = (select max(x.trans_num) from trs_sales_mst x where x.cashier_id = 5) and y.cashier_id = 5), NULL,10,1000,0,0,10000,0,1000,NULL,0,1000,1);
call save_to_cashier_balance(5, 0, 0, 10000, 0, 0, 0, 'D', 'adm');
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 12/10/07 14:19:03 - Gania
XA START 'INVISI-CHANGania';
insert into trs_sales_mst (trans_num, trans_type, trans_date, cashier_id, gudang_id, pasien_id, subtotal, profit, disc_mst, disc_val_mst, disc_detail, tax, total, embalase, real_amount, sisa, user_id, shift_id, cash, cara_bayar, card_id, bank,animal_seq,animal_id, dokter_id,dp, no_resep) values (get_new_sales_num('201210'), 13,cast('2012-10-07 'as date),5,1,NULL,10000,0,0,0,0,0,10000,0,10000,0,'adm',0,10000,0,'','','','',NULL,0,'');
insert into trs_sales_detail (sales_id, item_id, quantity, price, disc, disc_val, amount, amount_profit, price_purchase, paket_id, points, hrg_beli, conversion)values ((select sales_id from trs_sales_mst y where y.trans_num = (select max(x.trans_num) from trs_sales_mst x where x.cashier_id = 5) and y.cashier_id = 5), NULL,10,1000,0,0,10000,0,1000,NULL,0,1000,1);
call save_to_cashier_balance(5, 0, 0, 10000, 0, 0, 0, 'D', 'adm');
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 12/10/07 14:19:04 - Gania
XA START 'INVISI-CHANGania';
insert into trs_sales_mst (trans_num, trans_type, trans_date, cashier_id, gudang_id, pasien_id, subtotal, profit, disc_mst, disc_val_mst, disc_detail, tax, total, embalase, real_amount, sisa, user_id, shift_id, cash, cara_bayar, card_id, bank,animal_seq,animal_id, dokter_id,dp, no_resep) values (get_new_sales_num('201210'), 13,cast('2012-10-07 'as date),5,1,NULL,10000,0,0,0,0,0,10000,0,10000,0,'adm',0,10000,0,'','','','',NULL,0,'');
insert into trs_sales_detail (sales_id, item_id, quantity, price, disc, disc_val, amount, amount_profit, price_purchase, paket_id, points, hrg_beli, conversion)values ((select sales_id from trs_sales_mst y where y.trans_num = (select max(x.trans_num) from trs_sales_mst x where x.cashier_id = 5) and y.cashier_id = 5), NULL,10,1000,0,0,10000,0,1000,NULL,0,1000,1);
call save_to_cashier_balance(5, 0, 0, 10000, 0, 0, 0, 'D', 'adm');
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 12/10/07 14:19:05 - Gania
XA START 'INVISI-CHANGania';
insert into trs_sales_mst (trans_num, trans_type, trans_date, cashier_id, gudang_id, pasien_id, subtotal, profit, disc_mst, disc_val_mst, disc_detail, tax, total, embalase, real_amount, sisa, user_id, shift_id, cash, cara_bayar, card_id, bank,animal_seq,animal_id, dokter_id,dp, no_resep) values (get_new_sales_num('201210'), 13,cast('2012-10-07 'as date),5,1,NULL,10000,0,0,0,0,0,10000,0,10000,0,'adm',0,10000,0,'','','','',NULL,0,'');
insert into trs_sales_detail (sales_id, item_id, quantity, price, disc, disc_val, amount, amount_profit, price_purchase, paket_id, points, hrg_beli, conversion)values ((select sales_id from trs_sales_mst y where y.trans_num = (select max(x.trans_num) from trs_sales_mst x where x.cashier_id = 5) and y.cashier_id = 5), NULL,10,1000,0,0,10000,0,1000,NULL,0,1000,1);
call save_to_cashier_balance(5, 0, 0, 10000, 0, 0, 0, 'D', 'adm');
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 12/10/07 14:19:05 - Gania
XA START 'INVISI-CHANGania';
insert into trs_sales_mst (trans_num, trans_type, trans_date, cashier_id, gudang_id, pasien_id, subtotal, profit, disc_mst, disc_val_mst, disc_detail, tax, total, embalase, real_amount, sisa, user_id, shift_id, cash, cara_bayar, card_id, bank,animal_seq,animal_id, dokter_id,dp, no_resep) values (get_new_sales_num('201210'), 13,cast('2012-10-07 'as date),5,1,NULL,10000,0,0,0,0,0,10000,0,10000,0,'adm',0,10000,0,'','','','',NULL,0,'');
insert into trs_sales_detail (sales_id, item_id, quantity, price, disc, disc_val, amount, amount_profit, price_purchase, paket_id, points, hrg_beli, conversion)values ((select sales_id from trs_sales_mst y where y.trans_num = (select max(x.trans_num) from trs_sales_mst x where x.cashier_id = 5) and y.cashier_id = 5), NULL,10,1000,0,0,10000,0,1000,NULL,0,1000,1);
call save_to_cashier_balance(5, 0, 0, 10000, 0, 0, 0, 'D', 'adm');
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 12/10/07 14:19:06 - Gania
XA START 'INVISI-CHANGania';
insert into trs_sales_mst (trans_num, trans_type, trans_date, cashier_id, gudang_id, pasien_id, subtotal, profit, disc_mst, disc_val_mst, disc_detail, tax, total, embalase, real_amount, sisa, user_id, shift_id, cash, cara_bayar, card_id, bank,animal_seq,animal_id, dokter_id,dp, no_resep) values (get_new_sales_num('201210'), 13,cast('2012-10-07 'as date),5,1,NULL,10000,0,0,0,0,0,10000,0,10000,0,'adm',0,10000,0,'','','','',NULL,0,'');
insert into trs_sales_detail (sales_id, item_id, quantity, price, disc, disc_val, amount, amount_profit, price_purchase, paket_id, points, hrg_beli, conversion)values ((select sales_id from trs_sales_mst y where y.trans_num = (select max(x.trans_num) from trs_sales_mst x where x.cashier_id = 5) and y.cashier_id = 5), NULL,10,1000,0,0,10000,0,1000,NULL,0,1000,1);
call save_to_cashier_balance(5, 0, 0, 10000, 0, 0, 0, 'D', 'adm');
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 12/10/07 14:19:06 - Gania
XA START 'INVISI-CHANGania';
insert into trs_sales_mst (trans_num, trans_type, trans_date, cashier_id, gudang_id, pasien_id, subtotal, profit, disc_mst, disc_val_mst, disc_detail, tax, total, embalase, real_amount, sisa, user_id, shift_id, cash, cara_bayar, card_id, bank,animal_seq,animal_id, dokter_id,dp, no_resep) values (get_new_sales_num('201210'), 13,cast('2012-10-07 'as date),5,1,NULL,10000,0,0,0,0,0,10000,0,10000,0,'adm',0,10000,0,'','','','',NULL,0,'');
insert into trs_sales_detail (sales_id, item_id, quantity, price, disc, disc_val, amount, amount_profit, price_purchase, paket_id, points, hrg_beli, conversion)values ((select sales_id from trs_sales_mst y where y.trans_num = (select max(x.trans_num) from trs_sales_mst x where x.cashier_id = 5) and y.cashier_id = 5), NULL,10,1000,0,0,10000,0,1000,NULL,0,1000,1);
call save_to_cashier_balance(5, 0, 0, 10000, 0, 0, 0, 'D', 'adm');
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 12/10/07 14:19:06 - Gania
XA START 'INVISI-CHANGania';
insert into trs_sales_mst (trans_num, trans_type, trans_date, cashier_id, gudang_id, pasien_id, subtotal, profit, disc_mst, disc_val_mst, disc_detail, tax, total, embalase, real_amount, sisa, user_id, shift_id, cash, cara_bayar, card_id, bank,animal_seq,animal_id, dokter_id,dp, no_resep) values (get_new_sales_num('201210'), 13,cast('2012-10-07 'as date),5,1,NULL,10000,0,0,0,0,0,10000,0,10000,0,'adm',0,10000,0,'','','','',NULL,0,'');
insert into trs_sales_detail (sales_id, item_id, quantity, price, disc, disc_val, amount, amount_profit, price_purchase, paket_id, points, hrg_beli, conversion)values ((select sales_id from trs_sales_mst y where y.trans_num = (select max(x.trans_num) from trs_sales_mst x where x.cashier_id = 5) and y.cashier_id = 5), NULL,10,1000,0,0,10000,0,1000,NULL,0,1000,1);
call save_to_cashier_balance(5, 0, 0, 10000, 0, 0, 0, 'D', 'adm');
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 12/10/07 14:19:07 - Gania
XA START 'INVISI-CHANGania';
insert into trs_sales_mst (trans_num, trans_type, trans_date, cashier_id, gudang_id, pasien_id, subtotal, profit, disc_mst, disc_val_mst, disc_detail, tax, total, embalase, real_amount, sisa, user_id, shift_id, cash, cara_bayar, card_id, bank,animal_seq,animal_id, dokter_id,dp, no_resep) values (get_new_sales_num('201210'), 13,cast('2012-10-07 'as date),5,1,NULL,10000,0,0,0,0,0,10000,0,10000,0,'adm',0,10000,0,'','','','',NULL,0,'');
insert into trs_sales_detail (sales_id, item_id, quantity, price, disc, disc_val, amount, amount_profit, price_purchase, paket_id, points, hrg_beli, conversion)values ((select sales_id from trs_sales_mst y where y.trans_num = (select max(x.trans_num) from trs_sales_mst x where x.cashier_id = 5) and y.cashier_id = 5), NULL,10,1000,0,0,10000,0,1000,NULL,0,1000,1);
call save_to_cashier_balance(5, 0, 0, 10000, 0, 0, 0, 'D', 'adm');
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 12/10/07 14:19:24 - Gania
XA START 'INVISI-CHANGania';
insert into trs_sales_mst (trans_num, trans_type, trans_date, cashier_id, gudang_id, pasien_id, subtotal, profit, disc_mst, disc_val_mst, disc_detail, tax, total, embalase, real_amount, sisa, user_id, shift_id, cash, cara_bayar, card_id, bank,animal_seq,animal_id, dokter_id,dp, no_resep) values (get_new_sales_num('201210'), 13,cast('2012-10-07 'as date),5,1,NULL,10000,0,0,0,0,0,10000,0,10000,0,'adm',0,10000,0,'','','','',NULL,0,'');
insert into trs_sales_detail (sales_id, item_id, quantity, price, disc, disc_val, amount, amount_profit, price_purchase, paket_id, points, hrg_beli, conversion)values ((select sales_id from trs_sales_mst y where y.trans_num = (select max(x.trans_num) from trs_sales_mst x where x.cashier_id = 5) and y.cashier_id = 5), NULL,10,1000,0,0,10000,0,1000,NULL,0,1000,1);
call save_to_cashier_balance(5, 0, 0, 10000, 0, 0, 0, 'D', 'adm');
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 12/10/07 17:04:53 - Gania
XA START 'INVISI-CHANGania';
insert into trs_sales_mst (trans_num, trans_type, trans_date, cashier_id, gudang_id, pasien_id, subtotal, profit, disc_mst, disc_val_mst, disc_detail, tax, total, embalase, real_amount, sisa, user_id, shift_id, cash, cara_bayar, card_id, bank,animal_seq,animal_id, dokter_id,dp, no_resep) values (get_new_sales_num('201210'), 13,cast('2012-10-07 'as date),5,1,2,3250,750,0,0,0,0,3250,0,3250,0,'adm',0,3250,0,'','','','',NULL,0,'');
insert into trs_sales_detail (sales_id, item_id, quantity, price, disc, disc_val, amount, amount_profit, price_purchase, paket_id, points, hrg_beli, conversion)values ((select sales_id from trs_sales_mst y where y.trans_num = (select max(x.trans_num) from trs_sales_mst x where x.cashier_id = 5) and y.cashier_id = 5), 1,1,1250,0,0,1250,250,1000,NULL,0,1000,1);
update mst_item set current_stock = current_stock + -1 where item_id = 1;
call save_to_item_balance(1, 1, cast('2012-10-07 'as date), 1, 'C');
insert into trs_sales_detail (sales_id, item_id, quantity, price, disc, disc_val, amount, amount_profit, price_purchase, paket_id, points, hrg_beli, conversion)values ((select sales_id from trs_sales_mst y where y.trans_num = (select max(x.trans_num) from trs_sales_mst x where x.cashier_id = 5) and y.cashier_id = 5), 2,1,2000,0,0,2000,500,1500,NULL,0,1500,1);
update mst_item set current_stock = current_stock + -1 where item_id = 2;
call save_to_item_balance(1, 2, cast('2012-10-07 'as date), 1, 'C');
call save_to_cashier_balance(5, 0, 0, 3250, 0, 0, 0, 'D', 'adm');
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 12/10/07 17:04:57 - Gania
XA START 'INVISI-CHANGania';
update trs_receipt_mst set status_id = 1, sisa = total where receipt_id = 1;
update mst_item set buying_price = 1000, avg_price = (ifnull((9 * avg_price),0) + 10000) / (ifnull(9,0) + 10) where item_id = 1;
update mst_item set current_stock = current_stock + 10 where item_id = 1;
call save_to_item_balance(1, 1, cast('2012-10-07 'as date), 10, 'D');
update mst_item set  buying_price = 1000 WHERE item_id = 1;
insert into mst_buying_price_hist(item_id,price,end_date,supplier,insert_log)  values(1,1000,now(),'','adm;2012-10-07 18:04:33 ');
update mst_item set buying_price = 1500, avg_price = (ifnull((99 * avg_price),0) + 150000) / (ifnull(99,0) + 100) where item_id = 2;
update mst_item set current_stock = current_stock + 100 where item_id = 2;
call save_to_item_balance(1, 2, cast('2012-10-07 'as date), 100, 'D');
update mst_item set  buying_price = 1500 WHERE item_id = 2;
insert into mst_buying_price_hist(item_id,price,end_date,supplier,insert_log)  values(2,1500,now(),'','adm;2012-10-07 18:04:33 ');
update mst_item set buying_price = 2500, avg_price = (ifnull((200 * avg_price),0) + 500000) / (ifnull(200,0) + 200) where item_id = 3;
update mst_item set current_stock = current_stock + 200 where item_id = 3;
call save_to_item_balance(1, 3, cast('2012-10-07 'as date), 200, 'D');
update mst_item set  buying_price = 2500 WHERE item_id = 3;
insert into mst_buying_price_hist(item_id,price,end_date,supplier,insert_log)  values(3,2500,now(),'','adm;2012-10-07 18:04:33 ');
call save_to_relation_balance(1, cast('2012-10-07 'as date), 660000, 'D');
update mst_relation set current_debt = current_debt + 660000 where relation_id = 1;
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 12/10/09 16:20:02 - Gania
XA START 'INVISI-CHANGania';
update mst_item SET specification=5, item_code='ADFDASFSADFSDAF', barcode='ADFDASFSADFSDAF', struk_name='Extra Jozz', merk='Exc', avg_price=0, bkp=0, konsinyasi=0, vendor_id =NULL, produsen_id =NULL, kemasan_id =25, kategori =0, dosis =0, expire_date =cast('2012-10-09 'as date), buying_price =1500, selling_price =1750, item_name='Extra Jozz' WHERE item_id=2;
delete from mst_rak_item where item_id = 2;
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA ROLLBACK 'INVISI-CHANGania';

-- Begin on 12/10/09 16:28:52 - Gania
XA START 'INVISI-CHANGania';
update mst_item SET specification=5, item_code='ADFDASFSADFSDAF', barcode='ADFDASFSADFSDAF', struk_name='Extra Jozz', merk='Exc', avg_price=0, bkp=0, konsinyasi=0, vendor_id =NULL, produsen_id =NULL, kemasan_id =25, kategori =0, dosis =0, expire_date =cast('2012-10-09 'as date), buying_price =1500, selling_price =1750, item_name='Extra Jozz' WHERE item_id=2;
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 12/10/09 16:29:00 - Gania
XA START 'INVISI-CHANGania';
update mst_item SET specification=4, item_code='0001', barcode='0001', struk_name='kacang ijo', merk='SObo', avg_price=0, bkp=0, konsinyasi=0, vendor_id =NULL, produsen_id =NULL, kemasan_id =8, kategori =0, dosis =0, expire_date =cast('2012-10-09 'as date), buying_price =1000, selling_price =1250, item_name='kacang ijo' WHERE item_id=1;
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 12/10/09 16:29:12 - Gania
XA START 'INVISI-CHANGania';
update mst_item SET specification=3, item_code='0002', barcode='0002', struk_name='Teh Botol', merk='Sosro', avg_price=0, bkp=0, konsinyasi=0, vendor_id =NULL, produsen_id =NULL, kemasan_id =25, kategori =0, dosis =0, expire_date =cast('2012-10-09 'as date), buying_price =2500, selling_price =3000, item_name='Teh Botol' WHERE item_id=3;
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 12/10/11 10:08:34 - Gania
XA START 'INVISI-CHANGania';
insert into mst_relation (relation_type, relation_code, relation_name, address1, address2, post_code, city, phone1, phone2, contact_person, npwp,discount,wajib_discount, due_date) values (6,'001','Abdul Kadir','Sayati','','','','','','','',0,0,0);
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 12/10/11 10:12:01 - Gania
XA START 'INVISI-CHANGania';
insert into trs_money_trans_mst (trans_num, trans_date, trans_type,  total, notes, relation_id,insert_log) values ('UM20121000001',cast('2012-10-11 'as date),1,10000,'',4,'adm;2012-10-11 11:11:37 ');
insert into trs_money_trans_detail (money_trans_id, description, amount,akun_id, money_id)values (1,'',10000,NULL,2);
call save_to_relation_balance(4, cast('2012-10-11 'as date), 10000, 'D');
update mst_relation set current_debt = current_debt + 10000 where relation_id = 4;
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 12/10/14 11:09:23 - Gania
XA START 'INVISI-CHANGania';
update trs_receipt_mst set status_id = 1, sisa = total where receipt_id = 1;
update mst_item set buying_price = 1000, avg_price = (ifnull((19 * avg_price),0) + 10000) / (ifnull(19,0) + 10) where item_id = 1;
update mst_item set current_stock = current_stock + 10 where item_id = 1;
call save_to_item_balance(1, 1, cast('2012-10-07 'as date), 10, 'D');
update mst_item set  buying_price = 1000 WHERE item_id = 1;
insert into mst_buying_price_hist(item_id,price,end_date,supplier,insert_log)  values(1,1000,now(),'','adm;2012-10-14 12:08:59 ');
update mst_item set buying_price = 1500, avg_price = (ifnull((199 * avg_price),0) + 150000) / (ifnull(199,0) + 100) where item_id = 2;
update mst_item set current_stock = current_stock + 100 where item_id = 2;
call save_to_item_balance(1, 2, cast('2012-10-07 'as date), 100, 'D');
update mst_item set  buying_price = 1500 WHERE item_id = 2;
insert into mst_buying_price_hist(item_id,price,end_date,supplier,insert_log)  values(2,1500,now(),'','adm;2012-10-14 12:08:59 ');
update mst_item set buying_price = 2500, avg_price = (ifnull((400 * avg_price),0) + 500000) / (ifnull(400,0) + 200) where item_id = 3;
update mst_item set current_stock = current_stock + 200 where item_id = 3;
call save_to_item_balance(1, 3, cast('2012-10-07 'as date), 200, 'D');
update mst_item set  buying_price = 2500 WHERE item_id = 3;
insert into mst_buying_price_hist(item_id,price,end_date,supplier,insert_log)  values(3,2500,now(),'','adm;2012-10-14 12:08:59 ');
call save_to_relation_balance(1, cast('2012-10-07 'as date), 660000, 'D');
update mst_relation set current_debt = current_debt + 660000 where relation_id = 1;
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 12/10/14 12:22:38 - Gania
XA START 'INVISI-CHANGania';
insert into trs_retur_mst (trans_num, trans_date, tipe, relation_id, gudang_id, subtotal, discount, tax, biaya, materai, total, notes, user_id) values ('RT/20121000001',cast('2012-10-14 'as date),0,1,1,1500,0,0,0,0,1500,'','adm');
insert into trs_retur_detail (retur_id, item_id, conv_id, quantity, price, amount, disc, tax, disc_is_prc, conversion, faktur_id)values (last_insert_id(), 2,0,1,1500,1500,0,0,0,1,NULL);
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 12/10/14 12:22:38 - Gania
XA START 'INVISI-CHANGania';
update mst_item set current_stock = current_stock + -1 where item_id = 2;
call save_to_item_balance(1, 2, cast('2012-10-14 'as date), 1, 'C');
update trs_receipt_mst set sisa = sisa - 1500 where receipt_id = 0;
update trs_retur_mst set status_id = 1 where retur_id = 1;
call save_to_relation_balance(1, cast('2012-10-14 'as date), 1500, 'C');
update mst_relation set current_debt = current_debt + -1500 where relation_id = 1;
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 12/10/14 12:28:40 - Gania
XA START 'INVISI-CHANGania';
insert into trs_shipment_mst (trans_num, tipe, trans_date, notes, gudang_asal, gudang_tujuan, user_id) values ('SA/20121000001',1,cast('2012-10-14 'as date),'',1,1,'adm');
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 12/10/14 12:31:51 - Gania
XA START 'INVISI-CHANGania';
update mst_item SET specification=5, item_code='0003', barcode='0003', struk_name='Extra Jozz', merk='Exc', avg_price=0, bkp=0, konsinyasi=0, vendor_id =NULL, produsen_id =NULL, kemasan_id =25, kategori =0, dosis =0, expire_date =cast('2012-10-14 'as date), buying_price =1500, selling_price =1750, item_name='Extra Jozz' WHERE item_id=2;
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 12/10/14 12:32:27 - Gania
XA START 'INVISI-CHANGania';
insert into mst_item (specification, item_code, barcode, struk_name, merk, avg_price,buying_price,selling_price, vendor_id, produsen_id, kemasan_id, bkp, konsinyasi, item_name, dosis, kategori, expire_date) values (5,'0004','0004','Kratingdeng','Krating',0,5500,6000,NULL,NULL,25,0,0,'Kratingdeng',0,0,cast('2012-10-14 'as date));
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 12/10/14 12:55:29 - Gania
XA START 'INVISI-CHANGania';
insert into trs_money_trans_mst (trans_num, trans_date, trans_type,  total, notes, relation_id,insert_log) values ('UK20121000001',cast('2012-10-14 'as date),12,500,'',4,'adm;2012-10-14 13:55:05 ');
insert into trs_money_trans_detail (money_trans_id, description, amount,akun_id, money_id)values (2,'',500,NULL,2);
call save_to_relation_balance(4, cast('2012-10-14 'as date), 500, 'C');
update mst_relation set current_debt = current_debt + -500 where relation_id = 4;
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 12/10/15 10:14:24 - Gania
XA START 'INVISI-CHANGania';
insert into mst_relation (relation_type, relation_code, relation_name, address1, address2, post_code, city, phone1, phone2, contact_person, npwp,discount,wajib_discount, due_date) values (2,'SP.002','Sukses Selalu','Soekarno Hatta','','','','','','','',0,0,0);
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 12/10/15 10:14:49 - Gania
XA START 'INVISI-CHANGania';
insert into trs_receipt_mst (trans_num, trans_date, tipe, expr_date, relation_id, order_id, gudang_id, subtotal, disc_detail, disc_mst, tax, biaya, materai, total, notes, dpp_disc2, user_id) values ('RC/20121000002',cast('2012-10-15 'as date),1,cast('1899-12-30 'as date),5,NULL,1,550000,0,0,0,0,0,550000,'111',0,'adm');
insert into trs_receipt_detail (receipt_id, item_id, conv_id, conv_bonus_id, quantity, qty_bonus, price, amount, disc1, disc2, disc3, conversion, conv_bonus, disc1_is_prc, disc2_is_prc, disc3_is_prc, tax)values (last_insert_id(), 4,0,0,100,0,5500,550000,0,0,0,1,0,0,0,0,0);
update trs_order_mst set sudah_diterima = 1 where order_id = 0;
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 12/10/15 10:14:50 - Gania
XA START 'INVISI-CHANGania';
update trs_receipt_mst set status_id = 1, sisa = total where receipt_id = 2;
update mst_item set buying_price = 5500, avg_price = (ifnull((0 * avg_price),0) + 550000) / (ifnull(0,0) + 100) where item_id = 4;
update mst_item set current_stock = current_stock + 100 where item_id = 4;
call save_to_item_balance(1, 4, cast('2012-10-15 'as date), 100, 'D');
update mst_item set  buying_price = 5500 WHERE item_id = 4;
insert into mst_buying_price_hist(item_id,price,end_date,supplier,insert_log)  values(4,5500,now(),'Sukses Selalu (SP.002)','adm;2012-10-15 11:14:26 ');
call save_to_relation_balance(5, cast('2012-10-15 'as date), 550000, 'D');
update mst_relation set current_debt = current_debt + 550000 where relation_id = 5;
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 12/10/15 10:15:22 - Gania
XA START 'INVISI-CHANGania';
insert into trs_retur_mst (trans_num, trans_date, tipe, relation_id, gudang_id, subtotal, discount, tax, biaya, materai, total, notes, user_id) values ('RT/20121000002',cast('2012-10-15 'as date),0,5,1,55000,0,0,0,0,55000,'','adm');
insert into trs_retur_detail (retur_id, item_id, conv_id, quantity, price, amount, disc, tax, disc_is_prc, conversion, faktur_id)values (last_insert_id(), 4,0,10,5500,55000,0,0,0,1,NULL);
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 12/10/15 10:15:26 - Gania
XA START 'INVISI-CHANGania';
update mst_item set current_stock = current_stock + -10 where item_id = 4;
call save_to_item_balance(1, 4, cast('2012-10-15 'as date), 10, 'C');
update trs_receipt_mst set sisa = sisa - 55000 where receipt_id = 0;
update trs_retur_mst set status_id = 1 where retur_id = 2;
call save_to_relation_balance(5, cast('2012-10-15 'as date), 55000, 'C');
update mst_relation set current_debt = current_debt + -55000 where relation_id = 5;
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 12/10/15 10:16:07 - Gania
XA START 'INVISI-CHANGania';
insert into trs_retur_mst (trans_num, trans_date, tipe, relation_id, gudang_id, subtotal, discount, tax, biaya, materai, total, notes, user_id) values ('RT/20121000003',cast('2012-10-16 'as date),0,5,1,27500,0,0,0,0,27500,'','adm');
insert into trs_retur_detail (retur_id, item_id, conv_id, quantity, price, amount, disc, tax, disc_is_prc, conversion, faktur_id)values (last_insert_id(), 4,0,5,5500,27500,0,0,0,1,NULL);
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 12/10/15 10:16:10 - Gania
XA START 'INVISI-CHANGania';
update mst_item set current_stock = current_stock + -5 where item_id = 4;
call save_to_item_balance(1, 4, cast('2012-10-16 'as date), 5, 'C');
update trs_receipt_mst set sisa = sisa - 27500 where receipt_id = 0;
update trs_retur_mst set status_id = 1 where retur_id = 3;
call save_to_relation_balance(5, cast('2012-10-16 'as date), 27500, 'C');
update mst_relation set current_debt = current_debt + -27500 where relation_id = 5;
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 12/10/15 17:17:12 - Gania
XA START 'INVISI-CHANGania';
insert into trs_payment_mst (trans_num, trans_date, tipe, relation_id, inv_id, subtotal, discount, biaya, total, notes, user_id) values ('PY20121000001',cast('2012-10-15 'as date),9,1,1,660000,0,0,660000,'','adm');
insert into trs_payment_detail (payment_id, jenis_bayar, amount, bank, dok_num, tgl_cair)values (last_insert_id(), 1,660000,'','',cast('1899-12-30 'as date));
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 12/10/15 17:17:13 - Gania
XA START 'INVISI-CHANGania';
call save_to_relation_balance(1, cast('2012-10-15 'as date), 660000, 'C');
update mst_relation set current_debt = current_debt + -660000 where relation_id = 1;
update trs_receipt_mst set sisa = sisa - 660000 where receipt_id = 1;
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 12/10/17 09:38:43 - Gania
XA START 'INVISI-CHANGania';
UPDATE System_Users SET User_Name='lukman', Access_Level=5 WHERE User_Id='lukman';
UPDATE System_Access SET Access_List=0, Outlook_Panel='', Outlook_Button='', Usage_Count=0, Can_Acces =0, Can_Add =-1, Can_edit =-1, Can_delete =-1, Can_view =-1, Can_print =-1 WHERE User_Id='lukman' AND Menu_Id=101;
UPDATE System_Access SET Access_List=0, Outlook_Panel='', Outlook_Button='', Usage_Count=0, Can_Acces =0, Can_Add =-1, Can_edit =-1, Can_delete =-1, Can_view =-1, Can_print =-1 WHERE User_Id='lukman' AND Menu_Id=102;
UPDATE System_Access SET Access_List=0, Outlook_Panel='', Outlook_Button='', Usage_Count=0, Can_Acces =0, Can_Add =-1, Can_edit =-1, Can_delete =-1, Can_view =-1, Can_print =0 WHERE User_Id='lukman' AND Menu_Id=205;
UPDATE System_Access SET Access_List=0, Outlook_Panel='', Outlook_Button='', Usage_Count=0, Can_Acces =0, Can_Add =-1, Can_edit =-1, Can_delete =-1, Can_view =-1, Can_print =-1 WHERE User_Id='lukman' AND Menu_Id=210;
UPDATE System_Access SET Access_List=0, Outlook_Panel='', Outlook_Button='', Usage_Count=0, Can_Acces =0, Can_Add =-1, Can_edit =-1, Can_delete =-1, Can_view =-1, Can_print =-1 WHERE User_Id='lukman' AND Menu_Id=220;
INSERT INTO System_Access (User_Id,Menu_Id,Access_List,Outlook_Panel,Outlook_Button,Usage_Count, can_acces,can_add,can_edit,can_delete,can_view,can_print) VALUES ('lukman',221,0,'','',0,0,-1,-1,-1,-1,-1);
UPDATE System_Access SET Access_List=0, Outlook_Panel='', Outlook_Button='', Usage_Count=0, Can_Acces =0, Can_Add =-1, Can_edit =-1, Can_delete =-1, Can_view =-1, Can_print =-1 WHERE User_Id='lukman' AND Menu_Id=223;
UPDATE System_Access SET Access_List=0, Outlook_Panel='', Outlook_Button='', Usage_Count=0, Can_Acces =0, Can_Add =-1, Can_edit =-1, Can_delete =-1, Can_view =-1, Can_print =-1 WHERE User_Id='lukman' AND Menu_Id=301;
UPDATE System_Access SET Access_List=0, Outlook_Panel='', Outlook_Button='', Usage_Count=0, Can_Acces =0, Can_Add =-1, Can_edit =-1, Can_delete =-1, Can_view =-1, Can_print =-1 WHERE User_Id='lukman' AND Menu_Id=302;
UPDATE System_Access SET Access_List=0, Outlook_Panel='', Outlook_Button='', Usage_Count=0, Can_Acces =0, Can_Add =-1, Can_edit =-1, Can_delete =-1, Can_view =-1, Can_print =-1 WHERE User_Id='lukman' AND Menu_Id=323;
UPDATE System_Access SET Access_List=0, Outlook_Panel='', Outlook_Button='', Usage_Count=0, Can_Acces =0, Can_Add =-1, Can_edit =-1, Can_delete =-1, Can_view =-1, Can_print =-1 WHERE User_Id='lukman' AND Menu_Id=330;
UPDATE System_Access SET Access_List=0, Outlook_Panel='', Outlook_Button='', Usage_Count=0, Can_Acces =0, Can_Add =-1, Can_edit =-1, Can_delete =-1, Can_view =-1, Can_print =-1 WHERE User_Id='lukman' AND Menu_Id=331;
INSERT INTO System_Access (User_Id,Menu_Id,Access_List,Outlook_Panel,Outlook_Button,Usage_Count, can_acces,can_add,can_edit,can_delete,can_view,can_print) VALUES ('lukman',400,0,'','',0,0,-1,-1,-1,-1,-1);
INSERT INTO System_Access (User_Id,Menu_Id,Access_List,Outlook_Panel,Outlook_Button,Usage_Count, can_acces,can_add,can_edit,can_delete,can_view,can_print) VALUES ('lukman',401,0,'','',0,0,-1,-1,-1,-1,-1);
UPDATE System_Access SET Access_List=0, Outlook_Panel='', Outlook_Button='', Usage_Count=0, Can_Acces =0, Can_Add =-1, Can_edit =-1, Can_delete =-1, Can_view =-1, Can_print =-1 WHERE User_Id='lukman' AND Menu_Id=402;
UPDATE System_Access SET Access_List=0, Outlook_Panel='', Outlook_Button='', Usage_Count=0, Can_Acces =0, Can_Add =-1, Can_edit =-1, Can_delete =-1, Can_view =-1, Can_print =-1 WHERE User_Id='lukman' AND Menu_Id=501;
INSERT INTO System_Access (User_Id,Menu_Id,Access_List,Outlook_Panel,Outlook_Button,Usage_Count, can_acces,can_add,can_edit,can_delete,can_view,can_print) VALUES ('lukman',504,0,'','',0,0,-1,-1,-1,-1,-1);
UPDATE System_Access SET Access_List=0, Outlook_Panel='', Outlook_Button='', Usage_Count=0, Can_Acces =0, Can_Add =-1, Can_edit =-1, Can_delete =-1, Can_view =-1, Can_print =-1 WHERE User_Id='lukman' AND Menu_Id=510;
INSERT INTO System_Access (User_Id,Menu_Id,Access_List,Outlook_Panel,Outlook_Button,Usage_Count, can_acces,can_add,can_edit,can_delete,can_view,can_print) VALUES ('lukman',520,0,'','',0,0,-1,-1,-1,-1,-1);
UPDATE System_Access SET Access_List=0, Outlook_Panel='', Outlook_Button='', Usage_Count=0, Can_Acces =0, Can_Add =-1, Can_edit =-1, Can_delete =-1, Can_view =-1, Can_print =-1 WHERE User_Id='lukman' AND Menu_Id=530;
UPDATE System_Access SET Access_List=0, Outlook_Panel='', Outlook_Button='', Usage_Count=0, Can_Acces =0, Can_Add =-1, Can_edit =-1, Can_delete =-1, Can_view =-1, Can_print =-1 WHERE User_Id='lukman' AND Menu_Id=1001;
UPDATE System_Access SET Access_List=0, Outlook_Panel='', Outlook_Button='', Usage_Count=0, Can_Acces =0, Can_Add =-1, Can_edit =-1, Can_delete =-1, Can_view =-1, Can_print =-1 WHERE User_Id='lukman' AND Menu_Id=1002;
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 12/10/18 11:13:46 - Gania
XA START 'INVISI-CHANGania';
UPDATE System_Users SET User_Name='lukman', Access_Level=5 WHERE User_Id='lukman';
UPDATE System_Access SET Access_List=0, Outlook_Panel='', Outlook_Button='', Usage_Count=0, Can_Acces =0, Can_Add =-1, Can_edit =-1, Can_delete =-1, Can_view =-1, Can_print =-1 WHERE User_Id='lukman' AND Menu_Id=101;
UPDATE System_Access SET Access_List=0, Outlook_Panel='', Outlook_Button='', Usage_Count=0, Can_Acces =0, Can_Add =-1, Can_edit =-1, Can_delete =-1, Can_view =-1, Can_print =-1 WHERE User_Id='lukman' AND Menu_Id=102;
UPDATE System_Access SET Access_List=0, Outlook_Panel='', Outlook_Button='', Usage_Count=0, Can_Acces =0, Can_Add =-1, Can_edit =-1, Can_delete =-1, Can_view =-1, Can_print =-1 WHERE User_Id='lukman' AND Menu_Id=205;
UPDATE System_Access SET Access_List=0, Outlook_Panel='', Outlook_Button='', Usage_Count=0, Can_Acces =0, Can_Add =-1, Can_edit =-1, Can_delete =-1, Can_view =-1, Can_print =-1 WHERE User_Id='lukman' AND Menu_Id=210;
UPDATE System_Access SET Access_List=0, Outlook_Panel='', Outlook_Button='', Usage_Count=0, Can_Acces =0, Can_Add =-1, Can_edit =-1, Can_delete =-1, Can_view =-1, Can_print =-1 WHERE User_Id='lukman' AND Menu_Id=220;
UPDATE System_Access SET Access_List=0, Outlook_Panel='', Outlook_Button='', Usage_Count=0, Can_Acces =0, Can_Add =-1, Can_edit =-1, Can_delete =-1, Can_view =-1, Can_print =-1 WHERE User_Id='lukman' AND Menu_Id=221;
UPDATE System_Access SET Access_List=0, Outlook_Panel='', Outlook_Button='', Usage_Count=0, Can_Acces =0, Can_Add =-1, Can_edit =-1, Can_delete =-1, Can_view =-1, Can_print =-1 WHERE User_Id='lukman' AND Menu_Id=223;
UPDATE System_Access SET Access_List=0, Outlook_Panel='', Outlook_Button='', Usage_Count=0, Can_Acces =0, Can_Add =-1, Can_edit =-1, Can_delete =-1, Can_view =-1, Can_print =-1 WHERE User_Id='lukman' AND Menu_Id=301;
UPDATE System_Access SET Access_List=0, Outlook_Panel='', Outlook_Button='', Usage_Count=0, Can_Acces =0, Can_Add =-1, Can_edit =-1, Can_delete =-1, Can_view =-1, Can_print =-1 WHERE User_Id='lukman' AND Menu_Id=302;
UPDATE System_Access SET Access_List=0, Outlook_Panel='', Outlook_Button='', Usage_Count=0, Can_Acces =0, Can_Add =-1, Can_edit =-1, Can_delete =-1, Can_view =-1, Can_print =-1 WHERE User_Id='lukman' AND Menu_Id=323;
UPDATE System_Access SET Access_List=0, Outlook_Panel='', Outlook_Button='', Usage_Count=0, Can_Acces =0, Can_Add =-1, Can_edit =-1, Can_delete =-1, Can_view =-1, Can_print =-1 WHERE User_Id='lukman' AND Menu_Id=330;
UPDATE System_Access SET Access_List=0, Outlook_Panel='', Outlook_Button='', Usage_Count=0, Can_Acces =0, Can_Add =-1, Can_edit =-1, Can_delete =-1, Can_view =-1, Can_print =-1 WHERE User_Id='lukman' AND Menu_Id=331;
UPDATE System_Access SET Access_List=0, Outlook_Panel='', Outlook_Button='', Usage_Count=0, Can_Acces =0, Can_Add =-1, Can_edit =-1, Can_delete =-1, Can_view =-1, Can_print =-1 WHERE User_Id='lukman' AND Menu_Id=400;
UPDATE System_Access SET Access_List=0, Outlook_Panel='', Outlook_Button='', Usage_Count=0, Can_Acces =0, Can_Add =-1, Can_edit =-1, Can_delete =-1, Can_view =-1, Can_print =-1 WHERE User_Id='lukman' AND Menu_Id=401;
UPDATE System_Access SET Access_List=0, Outlook_Panel='', Outlook_Button='', Usage_Count=0, Can_Acces =0, Can_Add =-1, Can_edit =-1, Can_delete =-1, Can_view =-1, Can_print =-1 WHERE User_Id='lukman' AND Menu_Id=402;
UPDATE System_Access SET Access_List=0, Outlook_Panel='', Outlook_Button='', Usage_Count=0, Can_Acces =0, Can_Add =-1, Can_edit =-1, Can_delete =-1, Can_view =-1, Can_print =-1 WHERE User_Id='lukman' AND Menu_Id=501;
UPDATE System_Access SET Access_List=0, Outlook_Panel='', Outlook_Button='', Usage_Count=0, Can_Acces =0, Can_Add =-1, Can_edit =-1, Can_delete =-1, Can_view =-1, Can_print =-1 WHERE User_Id='lukman' AND Menu_Id=504;
UPDATE System_Access SET Access_List=0, Outlook_Panel='', Outlook_Button='', Usage_Count=0, Can_Acces =0, Can_Add =-1, Can_edit =-1, Can_delete =-1, Can_view =-1, Can_print =-1 WHERE User_Id='lukman' AND Menu_Id=510;
UPDATE System_Access SET Access_List=0, Outlook_Panel='', Outlook_Button='', Usage_Count=0, Can_Acces =0, Can_Add =-1, Can_edit =-1, Can_delete =-1, Can_view =-1, Can_print =-1 WHERE User_Id='lukman' AND Menu_Id=520;
INSERT INTO System_Access (User_Id,Menu_Id,Access_List,Outlook_Panel,Outlook_Button,Usage_Count, can_acces,can_add,can_edit,can_delete,can_view,can_print) VALUES ('lukman',525,0,'','',0,0,-1,-1,-1,-1,-1);
UPDATE System_Access SET Access_List=0, Outlook_Panel='', Outlook_Button='', Usage_Count=0, Can_Acces =0, Can_Add =-1, Can_edit =-1, Can_delete =-1, Can_view =-1, Can_print =-1 WHERE User_Id='lukman' AND Menu_Id=530;
UPDATE System_Access SET Access_List=0, Outlook_Panel='', Outlook_Button='', Usage_Count=0, Can_Acces =0, Can_Add =-1, Can_edit =-1, Can_delete =-1, Can_view =-1, Can_print =-1 WHERE User_Id='lukman' AND Menu_Id=1001;
UPDATE System_Access SET Access_List=0, Outlook_Panel='', Outlook_Button='', Usage_Count=0, Can_Acces =0, Can_Add =-1, Can_edit =-1, Can_delete =-1, Can_view =-1, Can_print =-1 WHERE User_Id='lukman' AND Menu_Id=1002;
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 12/10/18 13:07:41 - Gania
XA START 'INVISI-CHANGania';
update trs_payment_mst set status_id = 1 where payment_id = 1;
call save_to_relation_balance(1, cast('2012-10-15 'as date), 660000, 'C');
update mst_relation set current_debt = current_debt + -660000 where relation_id = 1;
update trs_receipt_mst set sisa = sisa - 660000 where receipt_id = 1;
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 12/10/18 13:10:26 - Gania
XA START 'INVISI-CHANGania';
insert into trs_payment_mst (trans_num, trans_date, tipe, relation_id, inv_id, subtotal, discount, biaya, total, notes,status_id, user_id) values ('PY20121000002',cast('2012-10-18 'as date),9,5,2,550000,0,0,550000,'',0,'adm');
insert into trs_payment_detail (payment_id, jenis_bayar, amount, bank, dok_num, tgl_cair)values (last_insert_id(), 2,550000,'Giro 001','BCA',cast('2012-10-25 'as date));
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 12/10/18 13:10:31 - Gania
XA START 'INVISI-CHANGania';
update trs_payment_mst set status_id = 1 where payment_id = 2;
call save_to_relation_balance(5, cast('2012-10-18 'as date), 550000, 'C');
update mst_relation set current_debt = current_debt + -550000 where relation_id = 5;
update trs_receipt_mst set sisa = sisa - 550000 where receipt_id = 2;
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 12/10/20 13:20:20 - Gania
XA START 'INVISI-CHANGania';
insert into trs_sales_mst (trans_num, trans_type, trans_date, cashier_id, gudang_id, relation_id, subtotal, profit, disc_mst, disc_val_mst, disc_detail, tax, total, embalase, real_amount, sisa, user_id, shift_id, cash, cara_bayar, card_id, bank,animal_seq,animal_id, dokter_id,dp, no_resep) values (get_new_sales_num('201210'), 14,cast('2012-10-20 'as date),5,1,2,1250,250,0,0,0,0,1250,0,1250,0,'adm',0,1250,0,'','','','',NULL,0,'');
insert into trs_sales_detail (sales_id, item_id, quantity, price, disc, disc_val, amount, amount_profit, price_purchase, paket_id, points, hrg_beli, conversion)values ((select sales_id from trs_sales_mst y where y.trans_num = (select max(x.trans_num) from trs_sales_mst x where x.cashier_id = 5) and y.cashier_id = 5), 1,1,1250,0,0,1250,250,1000,NULL,0,1000,1);
update mst_item set current_stock = current_stock + 1 where item_id = 1;
call save_to_item_balance(1, 1, cast('2012-10-20 'as date), 1, 'D');
call save_to_cashier_balance(5, 0, 0, 1250, 0, 0, 0, 'D', 'adm');
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 12/10/26 11:00:58 - Gania
XA START 'INVISI-CHANGania';
insert into trs_shipment_mst (trans_num, tipe, trans_date, notes, gudang_asal, gudang_tujuan, user_id) values ('SA/20121000001',1,cast('2012-10-26 'as date),'',1,1,'adm');
insert into trs_shipment_detail (ship_id, item_id,  quantity, price_sales, price_cost, price_purchase, hrg_beli, stok,quantity_ori,conversion)values (last_insert_id(), 1,-25,0,1000,1000,1000,30,5,0);
update mst_item set avg_price = 1000 where item_id = 0;
update mst_item set current_stock = current_stock + -25 where item_id = 1;
call save_to_item_balance(1, 1, cast('2012-10-26 'as date), -25, 'D');
insert into trs_shipment_detail (ship_id, item_id,  quantity, price_sales, price_cost, price_purchase, hrg_beli, stok,quantity_ori,conversion)values (last_insert_id(), 3,-593,0,2500,2500,2500,600,7,0);
update mst_item set avg_price = 2500 where item_id = 0;
update mst_item set current_stock = current_stock + -593 where item_id = 3;
call save_to_item_balance(1, 3, cast('2012-10-26 'as date), -593, 'D');
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 12/10/27 05:07:05 - Gania
XA START 'INVISI-CHANGania';
insert into mst_item (specification, item_code, barcode, struk_name, merk, avg_price,buying_price,selling_price, vendor_id, produsen_id, kemasan_id, bkp, konsinyasi, item_name, dosis, kategori, expire_date) values (2,'0005','0005','tes','tes',0,0,0,NULL,NULL,18,0,0,'tes',0,0,cast('2012-10-27 'as date));
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 12/10/27 05:08:18 - Gania
XA START 'INVISI-CHANGania';
insert into mst_item (specification, item_code, barcode, struk_name, merk, avg_price,buying_price,selling_price, vendor_id, produsen_id, kemasan_id, bkp, konsinyasi, item_name, dosis, kategori, expire_date) values (3,'0006','0006','tes1','tes',0,0,0,NULL,NULL,19,0,0,'tes1',0,0,cast('2012-10-27 'as date));
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 12/10/30 15:48:41 - Gania
XA START 'INVISI-CHANGania';
insert into mst_relation (relation_type, relation_code, relation_name, address1, address2, post_code, city, phone1, phone2, contact_person, npwp,discount,wajib_discount, due_date) values (2,'SP.003','Joko','','','','','','','','',0,0,0);
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 12/10/30 15:50:51 - Gania
XA START 'INVISI-CHANGania';
insert into trs_receipt_mst (trans_num, trans_date, tipe, expr_date, relation_id, order_id, gudang_id, subtotal, disc_detail, disc_mst, tax, biaya, materai, total, notes, dpp_disc2, user_id) values ('RC/20121000003',cast('2012-10-30 'as date),4,cast('1899-12-30 'as date),5,NULL,1,250000,0,0,0,0,0,250000,'',0,'adm');
insert into trs_receipt_detail (receipt_id, item_id, conv_id, conv_bonus_id, quantity, qty_bonus, price, amount, disc1, disc2, disc3, conversion, conv_bonus, disc1_is_prc, disc2_is_prc, disc3_is_prc, tax)values (last_insert_id(), 3,0,0,100,0,2500,250000,0,0,0,1,0,0,0,0,0);
update trs_order_mst set sudah_diterima = 1 where order_id = 0;
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 12/10/30 15:50:53 - Gania
XA START 'INVISI-CHANGania';
update trs_receipt_mst set status_id = 1, sisa = total where receipt_id = 3;
update mst_item set buying_price = 2500, avg_price = (ifnull((7 * avg_price),0) + 250000) / (ifnull(7,0) + 100) where item_id = 3;
update mst_item set current_stock = current_stock + 100 where item_id = 3;
call save_to_item_balance(1, 3, cast('2012-10-30 'as date), 100, 'D');
update mst_item set  buying_price = 2500 WHERE item_id = 3;
insert into mst_buying_price_hist(item_id,price,end_date,supplier,insert_log)  values(3,2500,now(),'Sukses Selalu (SP.002)','adm;2012-10-30 15:50:29 ');
call save_to_relation_balance(5, cast('2012-10-30 'as date), 250000, 'D');
update mst_relation set current_debt = current_debt + 250000 where relation_id = 5;
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 12/10/30 20:04:17 - Gania
XA START 'INVISI-CHANGania';
insert into trs_sales_mst (trans_num, trans_type, trans_date, cashier_id, gudang_id, relation_id, subtotal, profit, disc_mst, disc_val_mst, disc_detail, tax, total, embalase, real_amount, sisa, user_id, shift_id, cash, cara_bayar, card_id, bank,animal_seq,animal_id, dokter_id,dp, no_resep) values (get_new_sales_num('201210'), 13,cast('2012-10-30 'as date),5,1,3,15500,3500,0,0,0,0,15500,0,15500,0,'lukman',0,15500,0,'','','','',NULL,0,'');
insert into trs_sales_detail (sales_id, item_id, quantity, price, disc, disc_val, amount, amount_profit, price_purchase, paket_id, points, hrg_beli, conversion)values ((select sales_id from trs_sales_mst y where y.trans_num = (select max(x.trans_num) from trs_sales_mst x where x.cashier_id = 5) and y.cashier_id = 5), 1,10,1250,0,0,12500,2500,1000,NULL,0,1000,1);
update mst_item set current_stock = current_stock + -10 where item_id = 1;
call save_to_item_balance(1, 1, cast('2012-10-30 'as date), 10, 'C');
insert into trs_sales_detail (sales_id, item_id, quantity, price, disc, disc_val, amount, amount_profit, price_purchase, paket_id, points, hrg_beli, conversion)values ((select sales_id from trs_sales_mst y where y.trans_num = (select max(x.trans_num) from trs_sales_mst x where x.cashier_id = 5) and y.cashier_id = 5), 1,2,1500,0,0,3000,1000,1000,NULL,0,1000,1);
update mst_item set current_stock = current_stock + -2 where item_id = 1;
call save_to_item_balance(1, 1, cast('2012-10-30 'as date), 2, 'C');
call save_to_cashier_balance(5, 0, 0, 15500, 0, 0, 0, 'D', 'lukman');
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 12/10/30 20:07:16 - Gania
XA START 'INVISI-CHANGania';
insert into trs_sales_mst (trans_num, trans_type, trans_date, cashier_id, gudang_id, relation_id, subtotal, profit, disc_mst, disc_val_mst, disc_detail, tax, total, embalase, real_amount, sisa, user_id, shift_id, cash, cara_bayar, card_id, bank,animal_seq,animal_id, dokter_id,dp, no_resep) values (get_new_sales_num('201210'), 13,cast('2012-10-30 'as date),5,1,3,192250,22250,0,0,0,0,192250,0,192250,0,'lukman',0,192250,0,'','','','',NULL,0,'');
insert into trs_sales_detail (sales_id, item_id, quantity, price, disc, disc_val, amount, amount_profit, price_purchase, paket_id, points, hrg_beli, conversion)values ((select sales_id from trs_sales_mst y where y.trans_num = (select max(x.trans_num) from trs_sales_mst x where x.cashier_id = 5) and y.cashier_id = 5), 2,10,1750,0,0,17500,2500,1500,NULL,0,1500,1);
update mst_item set current_stock = current_stock + -10 where item_id = 2;
call save_to_item_balance(1, 2, cast('2012-10-30 'as date), 10, 'C');
insert into trs_sales_detail (sales_id, item_id, quantity, price, disc, disc_val, amount, amount_profit, price_purchase, paket_id, points, hrg_beli, conversion)values ((select sales_id from trs_sales_mst y where y.trans_num = (select max(x.trans_num) from trs_sales_mst x where x.cashier_id = 5) and y.cashier_id = 5), 2,30,1750,0,0,52500,7500,1500,NULL,0,1500,1);
update mst_item set current_stock = current_stock + -30 where item_id = 2;
call save_to_item_balance(1, 2, cast('2012-10-30 'as date), 30, 'C');
insert into trs_sales_detail (sales_id, item_id, quantity, price, disc, disc_val, amount, amount_profit, price_purchase, paket_id, points, hrg_beli, conversion)values ((select sales_id from trs_sales_mst y where y.trans_num = (select max(x.trans_num) from trs_sales_mst x where x.cashier_id = 5) and y.cashier_id = 5), 2,2,1750,0,0,3500,500,1500,NULL,0,1500,1);
update mst_item set current_stock = current_stock + -2 where item_id = 2;
call save_to_item_balance(1, 2, cast('2012-10-30 'as date), 2, 'C');
insert into trs_sales_detail (sales_id, item_id, quantity, price, disc, disc_val, amount, amount_profit, price_purchase, paket_id, points, hrg_beli, conversion)values ((select sales_id from trs_sales_mst y where y.trans_num = (select max(x.trans_num) from trs_sales_mst x where x.cashier_id = 5) and y.cashier_id = 5), 4,1,6000,0,0,6000,500,5500,NULL,0,5500,1);
update mst_item set current_stock = current_stock + -1 where item_id = 4;
call save_to_item_balance(1, 4, cast('2012-10-30 'as date), 1, 'C');
insert into trs_sales_detail (sales_id, item_id, quantity, price, disc, disc_val, amount, amount_profit, price_purchase, paket_id, points, hrg_beli, conversion)values ((select sales_id from trs_sales_mst y where y.trans_num = (select max(x.trans_num) from trs_sales_mst x where x.cashier_id = 5) and y.cashier_id = 5), 4,1,6000,0,0,6000,500,5500,NULL,0,5500,1);
update mst_item set current_stock = current_stock + -1 where item_id = 4;
call save_to_item_balance(1, 4, cast('2012-10-30 'as date), 1, 'C');
insert into trs_sales_detail (sales_id, item_id, quantity, price, disc, disc_val, amount, amount_profit, price_purchase, paket_id, points, hrg_beli, conversion)values ((select sales_id from trs_sales_mst y where y.trans_num = (select max(x.trans_num) from trs_sales_mst x where x.cashier_id = 5) and y.cashier_id = 5), 2,1,1750,0,0,1750,250,1500,NULL,0,1500,1);
update mst_item set current_stock = current_stock + -1 where item_id = 2;
call save_to_item_balance(1, 2, cast('2012-10-30 'as date), 1, 'C');
insert into trs_sales_detail (sales_id, item_id, quantity, price, disc, disc_val, amount, amount_profit, price_purchase, paket_id, points, hrg_beli, conversion)values ((select sales_id from trs_sales_mst y where y.trans_num = (select max(x.trans_num) from trs_sales_mst x where x.cashier_id = 5) and y.cashier_id = 5), 4,1,6000,0,0,6000,500,5500,NULL,0,5500,1);
update mst_item set current_stock = current_stock + -1 where item_id = 4;
call save_to_item_balance(1, 4, cast('2012-10-30 'as date), 1, 'C');
insert into trs_sales_detail (sales_id, item_id, quantity, price, disc, disc_val, amount, amount_profit, price_purchase, paket_id, points, hrg_beli, conversion)values ((select sales_id from trs_sales_mst y where y.trans_num = (select max(x.trans_num) from trs_sales_mst x where x.cashier_id = 5) and y.cashier_id = 5), 4,1,6000,0,0,6000,500,5500,NULL,0,5500,1);
update mst_item set current_stock = current_stock + -1 where item_id = 4;
call save_to_item_balance(1, 4, cast('2012-10-30 'as date), 1, 'C');
insert into trs_sales_detail (sales_id, item_id, quantity, price, disc, disc_val, amount, amount_profit, price_purchase, paket_id, points, hrg_beli, conversion)values ((select sales_id from trs_sales_mst y where y.trans_num = (select max(x.trans_num) from trs_sales_mst x where x.cashier_id = 5) and y.cashier_id = 5), 3,1,3000,0,0,3000,500,2500,NULL,0,2500,1);
update mst_item set current_stock = current_stock + -1 where item_id = 3;
call save_to_item_balance(1, 3, cast('2012-10-30 'as date), 1, 'C');
insert into trs_sales_detail (sales_id, item_id, quantity, price, disc, disc_val, amount, amount_profit, price_purchase, paket_id, points, hrg_beli, conversion)values ((select sales_id from trs_sales_mst y where y.trans_num = (select max(x.trans_num) from trs_sales_mst x where x.cashier_id = 5) and y.cashier_id = 5), 4,1,6000,0,0,6000,500,5500,NULL,0,5500,1);
update mst_item set current_stock = current_stock + -1 where item_id = 4;
call save_to_item_balance(1, 4, cast('2012-10-30 'as date), 1, 'C');
insert into trs_sales_detail (sales_id, item_id, quantity, price, disc, disc_val, amount, amount_profit, price_purchase, paket_id, points, hrg_beli, conversion)values ((select sales_id from trs_sales_mst y where y.trans_num = (select max(x.trans_num) from trs_sales_mst x where x.cashier_id = 5) and y.cashier_id = 5), 4,1,6000,0,0,6000,500,5500,NULL,0,5500,1);
update mst_item set current_stock = current_stock + -1 where item_id = 4;
call save_to_item_balance(1, 4, cast('2012-10-30 'as date), 1, 'C');
insert into trs_sales_detail (sales_id, item_id, quantity, price, disc, disc_val, amount, amount_profit, price_purchase, paket_id, points, hrg_beli, conversion)values ((select sales_id from trs_sales_mst y where y.trans_num = (select max(x.trans_num) from trs_sales_mst x where x.cashier_id = 5) and y.cashier_id = 5), 4,1,6000,0,0,6000,500,5500,NULL,0,5500,1);
update mst_item set current_stock = current_stock + -1 where item_id = 4;
call save_to_item_balance(1, 4, cast('2012-10-30 'as date), 1, 'C');
insert into trs_sales_detail (sales_id, item_id, quantity, price, disc, disc_val, amount, amount_profit, price_purchase, paket_id, points, hrg_beli, conversion)values ((select sales_id from trs_sales_mst y where y.trans_num = (select max(x.trans_num) from trs_sales_mst x where x.cashier_id = 5) and y.cashier_id = 5), 4,1,6000,0,0,6000,500,5500,NULL,0,5500,1);
update mst_item set current_stock = current_stock + -1 where item_id = 4;
call save_to_item_balance(1, 4, cast('2012-10-30 'as date), 1, 'C');
insert into trs_sales_detail (sales_id, item_id, quantity, price, disc, disc_val, amount, amount_profit, price_purchase, paket_id, points, hrg_beli, conversion)values ((select sales_id from trs_sales_mst y where y.trans_num = (select max(x.trans_num) from trs_sales_mst x where x.cashier_id = 5) and y.cashier_id = 5), 4,1,6000,0,0,6000,500,5500,NULL,0,5500,1);
update mst_item set current_stock = current_stock + -1 where item_id = 4;
call save_to_item_balance(1, 4, cast('2012-10-30 'as date), 1, 'C');
insert into trs_sales_detail (sales_id, item_id, quantity, price, disc, disc_val, amount, amount_profit, price_purchase, paket_id, points, hrg_beli, conversion)values ((select sales_id from trs_sales_mst y where y.trans_num = (select max(x.trans_num) from trs_sales_mst x where x.cashier_id = 5) and y.cashier_id = 5), 4,1,6000,0,0,6000,500,5500,NULL,0,5500,1);
update mst_item set current_stock = current_stock + -1 where item_id = 4;
call save_to_item_balance(1, 4, cast('2012-10-30 'as date), 1, 'C');
insert into trs_sales_detail (sales_id, item_id, quantity, price, disc, disc_val, amount, amount_profit, price_purchase, paket_id, points, hrg_beli, conversion)values ((select sales_id from trs_sales_mst y where y.trans_num = (select max(x.trans_num) from trs_sales_mst x where x.cashier_id = 5) and y.cashier_id = 5), 4,1,6000,0,0,6000,500,5500,NULL,0,5500,1);
update mst_item set current_stock = current_stock + -1 where item_id = 4;
call save_to_item_balance(1, 4, cast('2012-10-30 'as date), 1, 'C');
insert into trs_sales_detail (sales_id, item_id, quantity, price, disc, disc_val, amount, amount_profit, price_purchase, paket_id, points, hrg_beli, conversion)values ((select sales_id from trs_sales_mst y where y.trans_num = (select max(x.trans_num) from trs_sales_mst x where x.cashier_id = 5) and y.cashier_id = 5), 4,1,6000,0,0,6000,500,5500,NULL,0,5500,1);
update mst_item set current_stock = current_stock + -1 where item_id = 4;
call save_to_item_balance(1, 4, cast('2012-10-30 'as date), 1, 'C');
insert into trs_sales_detail (sales_id, item_id, quantity, price, disc, disc_val, amount, amount_profit, price_purchase, paket_id, points, hrg_beli, conversion)values ((select sales_id from trs_sales_mst y where y.trans_num = (select max(x.trans_num) from trs_sales_mst x where x.cashier_id = 5) and y.cashier_id = 5), 3,1,3000,0,0,3000,500,2500,NULL,0,2500,1);
update mst_item set current_stock = current_stock + -1 where item_id = 3;
call save_to_item_balance(1, 3, cast('2012-10-30 'as date), 1, 'C');
insert into trs_sales_detail (sales_id, item_id, quantity, price, disc, disc_val, amount, amount_profit, price_purchase, paket_id, points, hrg_beli, conversion)values ((select sales_id from trs_sales_mst y where y.trans_num = (select max(x.trans_num) from trs_sales_mst x where x.cashier_id = 5) and y.cashier_id = 5), 4,1,6000,0,0,6000,500,5500,NULL,0,5500,1);
update mst_item set current_stock = current_stock + -1 where item_id = 4;
call save_to_item_balance(1, 4, cast('2012-10-30 'as date), 1, 'C');
insert into trs_sales_detail (sales_id, item_id, quantity, price, disc, disc_val, amount, amount_profit, price_purchase, paket_id, points, hrg_beli, conversion)values ((select sales_id from trs_sales_mst y where y.trans_num = (select max(x.trans_num) from trs_sales_mst x where x.cashier_id = 5) and y.cashier_id = 5), 3,1,3000,0,0,3000,500,2500,NULL,0,2500,1);
update mst_item set current_stock = current_stock + -1 where item_id = 3;
call save_to_item_balance(1, 3, cast('2012-10-30 'as date), 1, 'C');
insert into trs_sales_detail (sales_id, item_id, quantity, price, disc, disc_val, amount, amount_profit, price_purchase, paket_id, points, hrg_beli, conversion)values ((select sales_id from trs_sales_mst y where y.trans_num = (select max(x.trans_num) from trs_sales_mst x where x.cashier_id = 5) and y.cashier_id = 5), 3,1,3000,0,0,3000,500,2500,NULL,0,2500,1);
update mst_item set current_stock = current_stock + -1 where item_id = 3;
call save_to_item_balance(1, 3, cast('2012-10-30 'as date), 1, 'C');
insert into trs_sales_detail (sales_id, item_id, quantity, price, disc, disc_val, amount, amount_profit, price_purchase, paket_id, points, hrg_beli, conversion)values ((select sales_id from trs_sales_mst y where y.trans_num = (select max(x.trans_num) from trs_sales_mst x where x.cashier_id = 5) and y.cashier_id = 5), 3,1,3000,0,0,3000,500,2500,NULL,0,2500,1);
update mst_item set current_stock = current_stock + -1 where item_id = 3;
call save_to_item_balance(1, 3, cast('2012-10-30 'as date), 1, 'C');
insert into trs_sales_detail (sales_id, item_id, quantity, price, disc, disc_val, amount, amount_profit, price_purchase, paket_id, points, hrg_beli, conversion)values ((select sales_id from trs_sales_mst y where y.trans_num = (select max(x.trans_num) from trs_sales_mst x where x.cashier_id = 5) and y.cashier_id = 5), 4,1,6000,0,0,6000,500,5500,NULL,0,5500,1);
update mst_item set current_stock = current_stock + -1 where item_id = 4;
call save_to_item_balance(1, 4, cast('2012-10-30 'as date), 1, 'C');
insert into trs_sales_detail (sales_id, item_id, quantity, price, disc, disc_val, amount, amount_profit, price_purchase, paket_id, points, hrg_beli, conversion)values ((select sales_id from trs_sales_mst y where y.trans_num = (select max(x.trans_num) from trs_sales_mst x where x.cashier_id = 5) and y.cashier_id = 5), 4,1,6000,0,0,6000,500,5500,NULL,0,5500,1);
update mst_item set current_stock = current_stock + -1 where item_id = 4;
call save_to_item_balance(1, 4, cast('2012-10-30 'as date), 1, 'C');
insert into trs_sales_detail (sales_id, item_id, quantity, price, disc, disc_val, amount, amount_profit, price_purchase, paket_id, points, hrg_beli, conversion)values ((select sales_id from trs_sales_mst y where y.trans_num = (select max(x.trans_num) from trs_sales_mst x where x.cashier_id = 5) and y.cashier_id = 5), 3,1,3000,0,0,3000,500,2500,NULL,0,2500,1);
update mst_item set current_stock = current_stock + -1 where item_id = 3;
call save_to_item_balance(1, 3, cast('2012-10-30 'as date), 1, 'C');
insert into trs_sales_detail (sales_id, item_id, quantity, price, disc, disc_val, amount, amount_profit, price_purchase, paket_id, points, hrg_beli, conversion)values ((select sales_id from trs_sales_mst y where y.trans_num = (select max(x.trans_num) from trs_sales_mst x where x.cashier_id = 5) and y.cashier_id = 5), 4,1,6000,0,0,6000,500,5500,NULL,0,5500,1);
update mst_item set current_stock = current_stock + -1 where item_id = 4;
call save_to_item_balance(1, 4, cast('2012-10-30 'as date), 1, 'C');
insert into trs_sales_detail (sales_id, item_id, quantity, price, disc, disc_val, amount, amount_profit, price_purchase, paket_id, points, hrg_beli, conversion)values ((select sales_id from trs_sales_mst y where y.trans_num = (select max(x.trans_num) from trs_sales_mst x where x.cashier_id = 5) and y.cashier_id = 5), 3,1,3000,0,0,3000,500,2500,NULL,0,2500,1);
update mst_item set current_stock = current_stock + -1 where item_id = 3;
call save_to_item_balance(1, 3, cast('2012-10-30 'as date), 1, 'C');
call save_to_cashier_balance(5, 0, 0, 192250, 0, 0, 0, 'D', 'lukman');
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 12/10/30 20:17:21 - Gania
XA START 'INVISI-CHANGania';
insert into trs_sales_mst (trans_num, trans_type, trans_date, cashier_id, gudang_id, relation_id, subtotal, profit, disc_mst, disc_val_mst, disc_detail, tax, total, embalase, real_amount, sisa, user_id, shift_id, cash, cara_bayar, card_id, bank,animal_seq,animal_id, dokter_id,dp, no_resep) values (get_new_sales_num('201210'), 13,cast('2012-10-30 'as date),5,1,3,1750,250,0,0,0,0,1750,0,1750,0,'lukman',0,1750,0,'','','','',NULL,0,'');
insert into trs_sales_detail (sales_id, item_id, quantity, price, disc, disc_val, amount, amount_profit, price_purchase, paket_id, points, hrg_beli, conversion)values ((select sales_id from trs_sales_mst y where y.trans_num = (select max(x.trans_num) from trs_sales_mst x where x.cashier_id = 5) and y.cashier_id = 5), 2,1,1750,0,0,1750,250,1500,NULL,0,1500,1);
update mst_item set current_stock = current_stock + -1 where item_id = 2;
call save_to_item_balance(1, 2, cast('2012-10-30 'as date), 1, 'C');
call save_to_cashier_balance(5, 0, 0, 1750, 0, 0, 0, 'D', 'lukman');
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 12/10/30 20:40:43 - Gania
XA START 'INVISI-CHANGania';
insert into trs_sales_mst (trans_num, trans_type, trans_date, cashier_id, gudang_id, relation_id, subtotal, profit, disc_mst, disc_val_mst, disc_detail, tax, total, embalase, real_amount, sisa, user_id, shift_id, cash, cara_bayar, card_id, bank,animal_seq,animal_id, dokter_id,dp, no_resep) values (get_new_sales_num('201210'), 13,cast('2012-10-30 'as date),5,1,3,6000,500,0,0,0,0,6000,0,6000,0,'lukman',0,6000,0,'','','','',NULL,0,'');
insert into trs_sales_detail (sales_id, item_id, quantity, price, disc, disc_val, amount, amount_profit, price_purchase, paket_id, points, hrg_beli, conversion)values ((select sales_id from trs_sales_mst y where y.trans_num = (select max(x.trans_num) from trs_sales_mst x where x.cashier_id = 5) and y.cashier_id = 5), 4,1,6000,0,0,6000,500,5500,NULL,0,5500,1);
update mst_item set current_stock = current_stock + -1 where item_id = 4;
call save_to_item_balance(1, 4, cast('2012-10-30 'as date), 1, 'C');
call save_to_cashier_balance(5, 0, 0, 6000, 0, 0, 0, 'D', 'lukman');
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 12/12/12 20:51:11 - Gania
XA START 'INVISI-CHANGania';
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA ROLLBACK 'INVISI-CHANGania';

-- Begin on 12/12/12 20:53:03 - Gania
XA START 'INVISI-CHANGania';
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 12/12/12 21:05:51 - Gania
XA START 'INVISI-CHANGania';
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA ROLLBACK 'INVISI-CHANGania';

-- Begin on 12/12/12 21:08:44 - Gania
XA START 'INVISI-CHANGania';
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA ROLLBACK 'INVISI-CHANGania';

-- Begin on 12/12/12 21:08:54 - Gania
XA START 'INVISI-CHANGania';

-- Begin on 12/12/18 12:07:51 - Gania
XA START 'INVISI-CHANGania';
insert into trs_money_trans_mst (trans_num, trans_date, trans_type,  total, notes, person_id,insert_log) values ('UK20121200001',cast('2012-12-18 'as date),16,3000,'',0,'adm;2012-12-18 12:07:27 ');
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA ROLLBACK 'INVISI-CHANGania';

-- Begin on 12/12/18 12:10:26 - Gania
XA START 'INVISI-CHANGania';
insert into trs_money_trans_mst (trans_num, trans_date, trans_type,  total, notes, insert_log) values ('UK20121200001',cast('2012-12-18 'as date),16,3000,'','adm;2012-12-18 12:10:02 ');
insert into trs_money_trans_detail (money_trans_id, description, amount,akun_id, money_id)values (1,'jajan',1000,5,1);
update mst_money set saldo = ifnull(saldo,0) + -1000 where money_id = 1;
call save_to_money_balance(1, '2012-12-18', 1000, 'C');
insert into trs_money_trans_detail (money_trans_id, description, amount,akun_id, money_id)values (1,'pengamen',2000,5,1);
update mst_money set saldo = ifnull(saldo,0) + -2000 where money_id = 1;
call save_to_money_balance(1, '2012-12-18', 2000, 'C');
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 12/12/21 04:07:51 - Gania
XA START 'INVISI-CHANGania';
insert into trs_money_trans_mst (trans_num, trans_date, trans_type,  total, notes, insert_log) values ('UK20121200002',cast('2012-12-21 'as date),16,6000,'','adm;2012-12-21 04:07:27 ');
insert into trs_money_trans_detail (money_trans_id, description, amount,akun_id, money_id)values (2,'jajan',3000,5,1);
update mst_money set saldo = ifnull(saldo,0) + -3000 where money_id = 1;
call save_to_money_balance(1, '2012-12-21', 3000, 'C');
insert into trs_money_trans_detail (money_trans_id, description, amount,akun_id, money_id)values (2,'bayar pengamen',3000,5,1);
update mst_money set saldo = ifnull(saldo,0) + -3000 where money_id = 1;
call save_to_money_balance(1, '2012-12-21', 3000, 'C');
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';
update system_config set conf_value = '-1'where conf_id = 1;
update system_config set conf_value = '-1'where conf_id = 2;
update system_config set conf_value = 'Harga Sudah Termasuk PPN'where conf_id = 12;
update system_config set conf_value = 'Terimakasih Atas Kunjungn Anda'where conf_id = 13;
update system_config set conf_value = '-1'where conf_id = 1;
update system_config set conf_value = '-1'where conf_id = 2;
update system_config set conf_value = 'Harga Sudah Termasuk PPN'where conf_id = 12;
update system_config set conf_value = 'Terimakasih Atas Kunjungn Anda'where conf_id = 13;
update system_config set conf_value = '-1'where conf_id = 1;
update system_config set conf_value = '-1'where conf_id = 2;
update system_config set conf_value = 'Harga Sudah Termasuk PPN'where conf_id = 12;
update system_config set conf_value = 'Terimakasih Atas Kunjungn Anda'where conf_id = 13;
update system_config set conf_value = '-1'where conf_id = 1;
update system_config set conf_value = '-1'where conf_id = 2;
update system_config set conf_value = 'Harga Sudah Termasuk PPN'where conf_id = 12;
update system_config set conf_value = 'Terimakasih Atas Kunjungn Anda'where conf_id = 13;
update system_config set conf_value = '-1'where conf_id = 1;
update system_config set conf_value = '-1'where conf_id = 2;
update system_config set conf_value = 'Harga Sudah Termasuk PPN'where conf_id = 12;
update system_config set conf_value = 'Terimakasih Atas Kunjungn Anda'where conf_id = 13;
update system_config set conf_value = '-1'where conf_id = 1;
update system_config set conf_value = '-1'where conf_id = 2;
update system_config set conf_value = 'Harga Sudah Termasuk PPN'where conf_id = 12;
update system_config set conf_value = 'Terimakasih Atas Kunjungn Anda'where conf_id = 13;
update system_config set conf_value = '-1'where conf_id = 1;
update system_config set conf_value = '-1'where conf_id = 2;
update system_config set conf_value = ''where conf_id = 12;
update system_config set conf_value = 'Terimakasih Atas Kunjungn Anda'where conf_id = 13;

-- Begin on 12/12/23 17:31:43 - Gania
XA START 'INVISI-CHANGania';
insert into trs_sales_mst (trans_num, trans_type, trans_date, cashier_id, gudang_id, relation_id, subtotal, profit, disc_mst, disc_val_mst, disc_detail, tax, total, embalase, real_amount, sisa, user_id, shift_id, cash, cara_bayar, card_id, bank,animal_seq,animal_id, dokter_id,dp, no_resep) values (get_new_sales_num('201212'), 13,cast('2012-12-23 'as date),5,1,43,9100,1106,0,0,0,0,9100,0,9100,0,'adm',0,9100,0,'','','','',NULL,0,'');
insert into trs_sales_detail (sales_id, item_id, quantity, price, disc, disc_val, amount, amount_profit, price_purchase, paket_id, points, hrg_beli, conversion)values ((select sales_id from trs_sales_mst y where y.trans_num = (select max(x.trans_num) from trs_sales_mst x where x.cashier_id = 5) and y.cashier_id = 5), 197,1,700,0,0,700,136,564,NULL,0,564,1);
insert into trs_sales_detail (sales_id, item_id, quantity, price, disc, disc_val, amount, amount_profit, price_purchase, paket_id, points, hrg_beli, conversion)values ((select sales_id from trs_sales_mst y where y.trans_num = (select max(x.trans_num) from trs_sales_mst x where x.cashier_id = 5) and y.cashier_id = 5), 163,2,4200,0,0,8400,970,3715,NULL,0,3715,1);
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 12/12/23 17:34:13 - Gania
XA START 'INVISI-CHANGania';
insert into trs_sales_mst (trans_num, trans_type, trans_date, cashier_id, gudang_id, relation_id, subtotal, profit, disc_mst, disc_val_mst, disc_detail, tax, total, embalase, real_amount, sisa, user_id, shift_id, cash, cara_bayar, card_id, bank,animal_seq,animal_id, dokter_id,dp, no_resep) values (get_new_sales_num('201212'), 13,cast('2012-12-23 'as date),5,1,44,34000,4054,0,0,0,0,34000,0,34000,0,'adm',0,34000,0,'','','','',NULL,0,'');
insert into trs_sales_detail (sales_id, item_id, quantity, price, disc, disc_val, amount, amount_profit, price_purchase, paket_id, points, hrg_beli, conversion)values ((select sales_id from trs_sales_mst y where y.trans_num = (select max(x.trans_num) from trs_sales_mst x where x.cashier_id = 5) and y.cashier_id = 5), 197,20,700,0,0,14000,2720,564,NULL,0,564,1);
insert into trs_sales_detail (sales_id, item_id, quantity, price, disc, disc_val, amount, amount_profit, price_purchase, paket_id, points, hrg_beli, conversion)values ((select sales_id from trs_sales_mst y where y.trans_num = (select max(x.trans_num) from trs_sales_mst x where x.cashier_id = 5) and y.cashier_id = 5), 56,2,10000,0,0,20000,1334,9333,NULL,0,9333,1);
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 12/12/23 17:35:54 - Gania
XA START 'INVISI-CHANGania';
insert into trs_sales_mst (trans_num, trans_type, trans_date, cashier_id, gudang_id, relation_id, subtotal, profit, disc_mst, disc_val_mst, disc_detail, tax, total, embalase, real_amount, sisa, user_id, shift_id, cash, cara_bayar, card_id, bank,animal_seq,animal_id, dokter_id,dp, no_resep) values (get_new_sales_num('201212'), 13,cast('2012-12-23 'as date),5,1,37,189000,16150,0,0,0,0,189000,0,189000,0,'adm',0,189000,0,'','','','',NULL,0,'');
insert into trs_sales_detail (sales_id, item_id, quantity, price, disc, disc_val, amount, amount_profit, price_purchase, paket_id, points, hrg_beli, conversion)values ((select sales_id from trs_sales_mst y where y.trans_num = (select max(x.trans_num) from trs_sales_mst x where x.cashier_id = 5) and y.cashier_id = 5), 38,10,10300,0,0,103000,6970,9603,NULL,0,9603,1);
insert into trs_sales_detail (sales_id, item_id, quantity, price, disc, disc_val, amount, amount_profit, price_purchase, paket_id, points, hrg_beli, conversion)values ((select sales_id from trs_sales_mst y where y.trans_num = (select max(x.trans_num) from trs_sales_mst x where x.cashier_id = 5) and y.cashier_id = 5), 152,20,4300,0,0,86000,9180,3841,NULL,0,3841,1);
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 12/12/23 18:52:57 - Gania
XA START 'INVISI-CHANGania';
update trs_sales_mst set status_id = 1, sisa = total where sales_id = 229;
update mst_item set current_stock = current_stock + -2 where item_id = 24;
call save_to_item_balance(1, 24, cast('2012-12-02 'as date), 2, 'C');
update mst_item set current_stock = current_stock + -1 where item_id = 32;
call save_to_item_balance(1, 32, cast('2012-12-02 'as date), 1, 'C');
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 12/12/23 19:08:13 - Gania
XA START 'INVISI-CHANGania';
insert into trs_sales_mst (trans_num, trans_type, trans_date, cashier_id, gudang_id, relation_id, subtotal, profit, disc_mst, disc_val_mst, disc_detail, tax, total, embalase, real_amount, sisa, user_id, shift_id, cash, cara_bayar, card_id, bank,animal_seq,animal_id, dokter_id,dp, no_resep) values (get_new_sales_num('201212'), 13,cast('2012-12-01 'as date),5,1,32,61100,9724,0,0,0,0,61100,0,61100,0,'adm',0,61100,0,'','','','',NULL,0,'');
insert into trs_sales_detail (sales_id, item_id, quantity, price, disc, disc_val, amount, amount_profit, price_purchase, paket_id, points, hrg_beli, conversion)values ((select sales_id from trs_sales_mst y where y.trans_num = (select max(x.trans_num) from trs_sales_mst x where x.cashier_id = 5) and y.cashier_id = 5), 159,1,8000,0,0,8000,0,0,NULL,0,0,1);
insert into trs_sales_detail (sales_id, item_id, quantity, price, disc, disc_val, amount, amount_profit, price_purchase, paket_id, points, hrg_beli, conversion)values ((select sales_id from trs_sales_mst y where y.trans_num = (select max(x.trans_num) from trs_sales_mst x where x.cashier_id = 5) and y.cashier_id = 5), 71,1,5200,0,0,5200,0,0,NULL,0,0,1);
insert into trs_sales_detail (sales_id, item_id, quantity, price, disc, disc_val, amount, amount_profit, price_purchase, paket_id, points, hrg_beli, conversion)values ((select sales_id from trs_sales_mst y where y.trans_num = (select max(x.trans_num) from trs_sales_mst x where x.cashier_id = 5) and y.cashier_id = 5), 121,1,13500,0,0,13500,0,0,NULL,0,0,1);
insert into trs_sales_detail (sales_id, item_id, quantity, price, disc, disc_val, amount, amount_profit, price_purchase, paket_id, points, hrg_beli, conversion)values ((select sales_id from trs_sales_mst y where y.trans_num = (select max(x.trans_num) from trs_sales_mst x where x.cashier_id = 5) and y.cashier_id = 5), 3,1,9000,0,0,9000,0,0,NULL,0,0,1);
insert into trs_sales_detail (sales_id, item_id, quantity, price, disc, disc_val, amount, amount_profit, price_purchase, paket_id, points, hrg_beli, conversion)values ((select sales_id from trs_sales_mst y where y.trans_num = (select max(x.trans_num) from trs_sales_mst x where x.cashier_id = 5) and y.cashier_id = 5), 141,2,4300,0,0,8600,8600,0,NULL,0,0,1);
insert into trs_sales_detail (sales_id, item_id, quantity, price, disc, disc_val, amount, amount_profit, price_purchase, paket_id, points, hrg_beli, conversion)values ((select sales_id from trs_sales_mst y where y.trans_num = (select max(x.trans_num) from trs_sales_mst x where x.cashier_id = 5) and y.cashier_id = 5), 134,4,4200,0,0,16800,1124,3919,NULL,0,3919,1);
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 12/12/24 19:16:31 - Gania
XA START 'INVISI-CHANGania';
 update trs_sales_mst set subtotal = 44300, profit = 425, disc_mst= 0, disc_val_mst= 0, disc_detail= 0, tax= 0, total= 44300, embalase= 0, real_amount = 44300, sisa = 0, cash  44300 where sales_id = 1;
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA ROLLBACK 'INVISI-CHANGania';

-- Begin on 12/12/24 19:17:35 - Gania
XA START 'INVISI-CHANGania';
 update trs_sales_mst set subtotal = 40750, profit = 140, disc_mst= 0, disc_val_mst= 0, disc_detail= 0, tax= 0, total= 40750, embalase= 0, real_amount = 40750, sisa = 0, cash = 40750 where sales_id = 1;
delete from trs_sales_detail where sales_id = 1;
insert into trs_sales_detail (sales_id, item_id, quantity, price, disc, disc_val, amount, amount_profit, price_purchase, paket_id, points, hrg_beli, conversion)values ((select sales_id from trs_sales_mst y where y.trans_num = (select max(x.trans_num) from trs_sales_mst x where x.cashier_id = 5) and y.cashier_id = 5), 159,1,8000,0,0,8000,0,0,NULL,0,0,1);
insert into trs_sales_detail (sales_id, item_id, quantity, price, disc, disc_val, amount, amount_profit, price_purchase, paket_id, points, hrg_beli, conversion)values ((select sales_id from trs_sales_mst y where y.trans_num = (select max(x.trans_num) from trs_sales_mst x where x.cashier_id = 5) and y.cashier_id = 5), 71,1,5200,0,0,5200,0,0,NULL,0,0,1);
insert into trs_sales_detail (sales_id, item_id, quantity, price, disc, disc_val, amount, amount_profit, price_purchase, paket_id, points, hrg_beli, conversion)values ((select sales_id from trs_sales_mst y where y.trans_num = (select max(x.trans_num) from trs_sales_mst x where x.cashier_id = 5) and y.cashier_id = 5), 121,1,13500,0,0,13500,0,0,NULL,0,0,1);
insert into trs_sales_detail (sales_id, item_id, quantity, price, disc, disc_val, amount, amount_profit, price_purchase, paket_id, points, hrg_beli, conversion)values ((select sales_id from trs_sales_mst y where y.trans_num = (select max(x.trans_num) from trs_sales_mst x where x.cashier_id = 5) and y.cashier_id = 5), 3,1,9000,0,0,9000,0,0,NULL,0,0,1);
insert into trs_sales_detail (sales_id, item_id, quantity, price, disc, disc_val, amount, amount_profit, price_purchase, paket_id, points, hrg_beli, conversion)values ((select sales_id from trs_sales_mst y where y.trans_num = (select max(x.trans_num) from trs_sales_mst x where x.cashier_id = 5) and y.cashier_id = 5), 141,1,4300,0,0,4300,0,0,NULL,0,0,1);
insert into trs_sales_detail (sales_id, item_id, quantity, price, disc, disc_val, amount, amount_profit, price_purchase, paket_id, points, hrg_beli, conversion)values ((select sales_id from trs_sales_mst y where y.trans_num = (select max(x.trans_num) from trs_sales_mst x where x.cashier_id = 5) and y.cashier_id = 5), 276,1,750,0,0,750,140,610,NULL,0,610,1);
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 12/12/24 19:18:50 - Gania
XA START 'INVISI-CHANGania';
 update trs_sales_mst set subtotal = 50250, profit = 1234, disc_mst= 0, disc_val_mst= 0, disc_detail= 0, tax= 0, total= 50250, embalase= 0, real_amount = 50250, sisa = 0, cash = 50250 where sales_id = 1;
delete from trs_sales_detail where sales_id = 1;
insert into trs_sales_detail (sales_id, item_id, quantity, price, disc, disc_val, amount, amount_profit, price_purchase, paket_id, points, hrg_beli, conversion)values ((select sales_id from trs_sales_mst y where y.trans_num = (select max(x.trans_num) from trs_sales_mst x where x.cashier_id = 5) and y.cashier_id = 5), 159,1,8000,0,0,8000,0,0,NULL,0,0,1);
insert into trs_sales_detail (sales_id, item_id, quantity, price, disc, disc_val, amount, amount_profit, price_purchase, paket_id, points, hrg_beli, conversion)values ((select sales_id from trs_sales_mst y where y.trans_num = (select max(x.trans_num) from trs_sales_mst x where x.cashier_id = 5) and y.cashier_id = 5), 71,1,5200,0,0,5200,0,0,NULL,0,0,1);
insert into trs_sales_detail (sales_id, item_id, quantity, price, disc, disc_val, amount, amount_profit, price_purchase, paket_id, points, hrg_beli, conversion)values ((select sales_id from trs_sales_mst y where y.trans_num = (select max(x.trans_num) from trs_sales_mst x where x.cashier_id = 5) and y.cashier_id = 5), 121,1,13500,0,0,13500,0,0,NULL,0,0,1);
insert into trs_sales_detail (sales_id, item_id, quantity, price, disc, disc_val, amount, amount_profit, price_purchase, paket_id, points, hrg_beli, conversion)values ((select sales_id from trs_sales_mst y where y.trans_num = (select max(x.trans_num) from trs_sales_mst x where x.cashier_id = 5) and y.cashier_id = 5), 3,1,9000,0,0,9000,0,0,NULL,0,0,1);
insert into trs_sales_detail (sales_id, item_id, quantity, price, disc, disc_val, amount, amount_profit, price_purchase, paket_id, points, hrg_beli, conversion)values ((select sales_id from trs_sales_mst y where y.trans_num = (select max(x.trans_num) from trs_sales_mst x where x.cashier_id = 5) and y.cashier_id = 5), 141,1,4300,0,0,4300,0,0,NULL,0,0,1);
insert into trs_sales_detail (sales_id, item_id, quantity, price, disc, disc_val, amount, amount_profit, price_purchase, paket_id, points, hrg_beli, conversion)values ((select sales_id from trs_sales_mst y where y.trans_num = (select max(x.trans_num) from trs_sales_mst x where x.cashier_id = 5) and y.cashier_id = 5), 276,1,750,0,0,750,0,0,NULL,0,0,1);
insert into trs_sales_detail (sales_id, item_id, quantity, price, disc, disc_val, amount, amount_profit, price_purchase, paket_id, points, hrg_beli, conversion)values ((select sales_id from trs_sales_mst y where y.trans_num = (select max(x.trans_num) from trs_sales_mst x where x.cashier_id = 5) and y.cashier_id = 5), 199,1,9500,0,0,9500,1234,8266,NULL,0,8266,1);
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 12/12/24 19:19:00 - Gania
XA START 'INVISI-CHANGania';
update trs_sales_mst set status_id = 1, sisa = total where sales_id = 1;
update mst_item set current_stock = current_stock + -1 where item_id = 159;
call save_to_item_balance(1, 159, cast('2012-12-01 'as date), 1, 'C');
update mst_item set current_stock = current_stock + -1 where item_id = 71;
call save_to_item_balance(1, 71, cast('2012-12-01 'as date), 1, 'C');
update mst_item set current_stock = current_stock + -1 where item_id = 121;
call save_to_item_balance(1, 121, cast('2012-12-01 'as date), 1, 'C');
update mst_item set current_stock = current_stock + -1 where item_id = 3;
call save_to_item_balance(1, 3, cast('2012-12-01 'as date), 1, 'C');
update mst_item set current_stock = current_stock + -1 where item_id = 141;
call save_to_item_balance(1, 141, cast('2012-12-01 'as date), 1, 'C');
update mst_item set current_stock = current_stock + -1 where item_id = 276;
call save_to_item_balance(1, 276, cast('2012-12-01 'as date), 1, 'C');
update mst_item set current_stock = current_stock + -1 where item_id = 199;
call save_to_item_balance(1, 199, cast('2012-12-01 'as date), 1, 'C');
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 12/12/26 05:08:21 - Gania
XA START 'INVISI-CHANGania';
insert into trs_retur_mst (trans_num, trans_date, tipe, relation_id, gudang_id, subtotal, discount, tax, biaya, materai, total, notes, user_id) values ('RT/20121200007',cast('2012-12-26 'as date),0,44,1,82660,0,0,0,0,82660,'tes','adm');
insert into trs_retur_detail (retur_id, item_id, conv_id, quantity, price, amount, disc, tax, disc_is_prc, conversion, faktur_id)values (last_insert_id(), 199,0,10,8266,82660,0,0,0,1,NULL);
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 12/12/26 05:08:26 - Gania
XA START 'INVISI-CHANGania';
update mst_item set current_stock = current_stock + -10 where item_id = 199;
call save_to_item_balance(1, 199, cast('2012-12-26 'as date), 10, 'C');
update trs_receipt_mst set sisa = sisa - 82660 where receipt_id = 0;
update trs_retur_mst set status_id = 1 where retur_id = 7;
call save_to_relation_balance(44, cast('2012-12-26 'as date), 82660, 'C');
update mst_relation set current_debt = current_debt + -82660 where relation_id = 44;
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 12/12/26 05:09:31 - Gania
XA START 'INVISI-CHANGania';
insert into trs_retur_mst (trans_num, trans_date, tipe, relation_id, gudang_id, subtotal, discount, tax, biaya, materai, total, notes, user_id) values ('RT/20121200008',cast('2012-12-26 'as date),0,43,1,68590,0,0,0,0,68590,'','adm');
insert into trs_retur_detail (retur_id, item_id, conv_id, quantity, price, amount, disc, tax, disc_is_prc, conversion, faktur_id)values (last_insert_id(), 92,0,10,6859,68590,0,0,0,1,NULL);
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 12/12/26 05:09:33 - Gania
XA START 'INVISI-CHANGania';
update mst_item set current_stock = current_stock + -10 where item_id = 92;
call save_to_item_balance(1, 92, cast('2012-12-26 'as date), 10, 'C');
update trs_receipt_mst set sisa = sisa - 68590 where receipt_id = 0;
update trs_retur_mst set status_id = 1 where retur_id = 8;
call save_to_relation_balance(43, cast('2012-12-26 'as date), 68590, 'C');
update mst_relation set current_debt = current_debt + -68590 where relation_id = 43;
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 12/12/26 21:20:02 - Gania
XA START 'INVISI-CHANGania';
insert into trs_receipt_mst (trans_num, trans_date, tipe, expr_date, relation_id, order_id, gudang_id, subtotal, disc_detail, disc_mst, tax, biaya, materai, total, notes, dpp_disc2, user_id) values ('RC/20121200060',cast('2012-12-26 'as date),6,cast('1899-12-30 'as date),28,NULL,1,86218,0,0,0,0,0,86218,'tes',0,'adm');
insert into trs_receipt_detail (receipt_id, item_id, conv_id, conv_bonus_id, quantity, qty_bonus, price, amount, disc1, disc2, disc3, conversion, conv_bonus, disc1_is_prc, disc2_is_prc, disc3_is_prc, tax)values (last_insert_id(), 134,0,0,10,0,3919,39190,0,0,0,1,0,0,0,0,0);
insert into trs_receipt_detail (receipt_id, item_id, conv_id, conv_bonus_id, quantity, qty_bonus, price, amount, disc1, disc2, disc3, conversion, conv_bonus, disc1_is_prc, disc2_is_prc, disc3_is_prc, tax)values (last_insert_id(), 134,0,0,12,0,3919,47028,0,0,0,1,0,0,0,0,0);
update trs_order_mst set sudah_diterima = 1 where order_id = 0;
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 12/12/26 21:20:04 - Gania
XA START 'INVISI-CHANGania';
update trs_receipt_mst set status_id = 1, sisa = total where receipt_id = 65;
update mst_item set buying_price = 3919, avg_price = (ifnull((0 * avg_price),0) + 39190) / (ifnull(0,0) + 10) where item_id = 134;
update mst_item set current_stock = current_stock + 10 where item_id = 134;
call save_to_item_balance(1, 134, cast('2012-12-26 'as date), 10, 'D');
update mst_item set  buying_price = 3919 WHERE item_id = 134;
insert into mst_buying_price_hist(item_id,price,end_date,supplier,insert_log)  values(134,3919,now(),'PD 41 (S2)','adm;2012-12-26 21:19:40 ');
update mst_item set buying_price = 3919, avg_price = (ifnull((10 * avg_price),0) + 47028) / (ifnull(10,0) + 12) where item_id = 134;
update mst_item set current_stock = current_stock + 12 where item_id = 134;
call save_to_item_balance(1, 134, cast('2012-12-26 'as date), 12, 'D');
update mst_item set  buying_price = 3919 WHERE item_id = 134;
insert into mst_buying_price_hist(item_id,price,end_date,supplier,insert_log)  values(134,3919,now(),'PD 41 (S2)','adm;2012-12-26 21:19:40 ');
call save_to_relation_balance(28, cast('2012-12-26 'as date), 86218, 'D');
update mst_relation set current_debt = current_debt + 86218 where relation_id = 28;
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 12/12/27 05:03:15 - Gania
XA START 'INVISI-CHANGania';
insert into trs_sales_mst (trans_num, trans_type, trans_date, cashier_id, gudang_id, relation_id, subtotal, profit, disc_mst, disc_val_mst, disc_detail, tax, total, embalase, real_amount, sisa, user_id, shift_id, cash, cara_bayar, card_id, bank,animal_seq,animal_id, dokter_id,dp, no_resep) values (get_new_sales_num('201212'), 14,cast('2012-12-27 'as date),NULL,1,41,6859,0,0,0,0,0,6859,0,0,6859,'adm',0,0,0,'','','','',NULL,0,'');
insert into trs_sales_detail (sales_id, item_id, quantity, price, disc, disc_val, amount, amount_profit, price_purchase, paket_id, points, hrg_beli, conversion)values ((select sales_id from trs_sales_mst y where y.trans_num = (select max(x.trans_num) from trs_sales_mst x where x.cashier_id = 0) and y.cashier_id = 0), 92,1,6859,0,0,6859,0,0,NULL,0,0,1);
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 12/12/27 05:04:36 - Gania
XA START 'INVISI-CHANGania';
insert into trs_sales_mst (trans_num, trans_type, trans_date, cashier_id, gudang_id, relation_id, subtotal, profit, disc_mst, disc_val_mst, disc_detail, tax, total, embalase, real_amount, sisa, user_id, shift_id, cash, cara_bayar, card_id, bank,animal_seq,animal_id, dokter_id,dp, no_resep) values (get_new_sales_num('201212'), 14,cast('2012-12-27 'as date),NULL,1,44,3577,0,0,0,0,0,3577,0,0,3577,'adm',0,0,0,'','','','',NULL,0,'');
insert into trs_sales_detail (sales_id, item_id, quantity, price, disc, disc_val, amount, amount_profit, price_purchase, paket_id, points, hrg_beli, conversion)values ((select sales_id from trs_sales_mst y where y.trans_num = (select max(x.trans_num) from trs_sales_mst x where x.cashier_id = 0) and y.cashier_id = 0), 90,1,3577,0,0,3577,0,0,NULL,0,0,1);
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 12/12/27 05:23:07 - Gania
XA START 'INVISI-CHANGania';
update trs_sales_mst set status_id = 1, sisa = total where sales_id = 1859;
update mst_item set current_stock = current_stock + 1 where item_id = 90;
call save_to_item_balance(1, 90, cast('2012-12-27 'as date), 1, 'D');
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 13/01/04 00:11:22 - Gania
XA START 'INVISI-CHANGania';
insert into trs_sales_mst (trans_num, trans_type, trans_date, cashier_id, gudang_id, relation_id, subtotal, profit, disc_mst, disc_val_mst, disc_detail, tax, total, embalase, real_amount, sisa, user_id, shift_id, cash, cara_bayar, card_id, bank,animal_seq,animal_id, dokter_id,dp, no_resep) values (get_new_sales_num('201301'), 13,cast('2013-01-04 'as date),5,1,47,4200,485,0,0,0,0,4200,0,4200,0,'adm',0,4200,0,'','','','',NULL,0,'');
insert into trs_sales_detail (sales_id, item_id, quantity, price, disc, disc_val, amount, amount_profit, price_purchase, paket_id, points, hrg_beli, conversion)values ((select sales_id from trs_sales_mst y where y.trans_num = (select max(x.trans_num) from trs_sales_mst x where x.cashier_id = 5) and y.cashier_id = 5), 163,1,4200,0,0,4200,485,3715,NULL,0,3715,1);
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 13/01/04 00:11:52 - Gania
XA START 'INVISI-CHANGania';
update trs_sales_mst set status_id = 1, sisa = total where sales_id = 1860;
update mst_item set current_stock = current_stock + -1 where item_id = 163;
call save_to_item_balance(1, 163, cast('2013-01-04 'as date), 1, 'C');
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 13/01/04 00:17:32 - Gania
XA START 'INVISI-CHANGania';
insert into trs_sales_mst (trans_num, trans_type, trans_date, cashier_id, gudang_id, relation_id, subtotal, profit, disc_mst, disc_val_mst, disc_detail, tax, total, embalase, real_amount, sisa, user_id, shift_id, cash, cara_bayar, card_id, bank,animal_seq,animal_id, dokter_id,dp, no_resep) values (get_new_sales_num('201301'), 13,cast('2013-01-04 'as date),5,1,46,700,136,0,0,0,0,700,0,700,0,'adm',0,700,0,'','','','',NULL,0,'');
insert into trs_sales_detail (sales_id, item_id, quantity, price, disc, disc_val, amount, amount_profit, price_purchase, paket_id, points, hrg_beli, conversion)values ((select sales_id from trs_sales_mst y where y.trans_num = (select max(x.trans_num) from trs_sales_mst x where x.cashier_id = 5) and y.cashier_id = 5), 197,1,700,0,0,700,136,564,NULL,0,564,1);
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 13/01/04 00:22:18 - Gania
XA START 'INVISI-CHANGania';
insert into trs_sales_mst (trans_num, trans_type, trans_date, cashier_id, gudang_id, relation_id, subtotal, profit, disc_mst, disc_val_mst, disc_detail, tax, total, embalase, real_amount, sisa, user_id, shift_id, cash, cara_bayar, card_id, bank,animal_seq,animal_id, dokter_id,dp, no_resep) values (get_new_sales_num('201301'), 13,cast('2013-01-04 'as date),5,1,50,850,70,0,0,0,0,850,0,850,0,'adm',0,850,0,'','','','',NULL,0,'');
insert into trs_sales_detail (sales_id, item_id, quantity, price, disc, disc_val, amount, amount_profit, price_purchase, paket_id, points, hrg_beli, conversion)values ((select sales_id from trs_sales_mst y where y.trans_num = (select max(x.trans_num) from trs_sales_mst x where x.cashier_id = 5) and y.cashier_id = 5), 35,1,850,0,0,850,70,780,NULL,0,780,1);
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 13/01/04 00:23:39 - Gania
XA START 'INVISI-CHANGania';
update trs_sales_mst set status_id = 1, sisa = total where sales_id = 1862;
update mst_item set current_stock = current_stock + -1 where item_id = 35;
call save_to_item_balance(1, 35, cast('2013-01-04 'as date), 1, 'C');
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 13/01/04 00:23:53 - Gania
XA START 'INVISI-CHANGania';
update trs_sales_mst set status_id = 1, sisa = total where sales_id = 1861;
update mst_item set current_stock = current_stock + -1 where item_id = 197;
call save_to_item_balance(1, 197, cast('2013-01-04 'as date), 1, 'C');
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 13/02/07 20:51:04 - Gania
XA START 'INVISI-CHANGania';
insert into trs_sales_mst (trans_num, trans_type, trans_date, cashier_id, gudang_id, relation_id, subtotal, profit, disc_mst, disc_val_mst, disc_detail, tax, total, embalase, real_amount, sisa, user_id, shift_id, cash, cara_bayar, card_id, bank,animal_seq,animal_id, dokter_id,dp, no_resep) values (get_new_sales_num('201302'), 13,cast('2013-02-07 'as date),5,1,44,10000,834,0,0,0,0,10000,0,10000,0,'adm',0,10000,0,'','','','',NULL,0,'');
insert into trs_sales_detail (sales_id, item_id, quantity, price, disc, disc_val, amount, amount_profit, price_purchase, paket_id, points, hrg_beli, conversion)values ((select sales_id from trs_sales_mst y where y.trans_num = (select max(x.trans_num) from trs_sales_mst x where x.cashier_id = 5) and y.cashier_id = 5), 202,1,10000,0,0,10000,834,9166,NULL,0,9166,1);
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 13/02/07 20:58:24 - Gania
XA START 'INVISI-CHANGania';
update trs_sales_mst set status_id = 1, sisa = total where sales_id = 3551;
update mst_item set current_stock = current_stock + -1 where item_id = 202;
call save_to_item_balance(1, 202, cast('2013-02-07 'as date), 1, 'C');
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 13/02/28 22:45:55 - Gania
XA START 'INVISI-CHANGania';
insert into trs_receipt_mst (trans_num, trans_date, tipe, expr_date, relation_id, order_id, gudang_id, subtotal, disc_detail, disc_mst, tax, biaya, materai, total, notes, dpp_disc2, user_id) values ('RC/20130200059',cast('2013-02-28 'as date),6,cast('1899-12-30 'as date),66,NULL,1,171056,0,0,0,0,0,171056,'xx1',0,'adm');
insert into trs_receipt_detail (receipt_id, item_id, conv_id, conv_bonus_id, quantity, qty_bonus, price, amount, disc1, disc2, disc3, conversion, conv_bonus, disc1_is_prc, disc2_is_prc, disc3_is_prc, tax)values (last_insert_id(), 195,0,0,10,0,7700,77000,0,0,0,1,0,0,0,0,0);
insert into trs_receipt_detail (receipt_id, item_id, conv_id, conv_bonus_id, quantity, qty_bonus, price, amount, disc1, disc2, disc3, conversion, conv_bonus, disc1_is_prc, disc2_is_prc, disc3_is_prc, tax)values (last_insert_id(), 134,0,0,24,0,3919,94056,0,0,0,1,0,0,0,0,0);
update trs_order_mst set sudah_diterima = 1 where order_id = 0;
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 13/02/28 22:45:58 - Gania
XA START 'INVISI-CHANGania';
update trs_receipt_mst set status_id = 1, sisa = total where receipt_id = 205;
update mst_item set buying_price = 7700, avg_price = (ifnull((76 * avg_price),0) + 77000) / (ifnull(76,0) + 10) where item_id = 195;
update mst_item set current_stock = current_stock + 10 where item_id = 195;
call save_to_item_balance(1, 195, cast('2013-02-28 'as date), 10, 'D');
update mst_item set  buying_price = 7700 WHERE item_id = 195;
insert into mst_buying_price_hist(item_id,price,end_date,supplier,insert_log)  values(195,7700,now(),'PD 41 (S2)','adm;2013-02-28 22:45:34 ');
update mst_item set buying_price = 3919, avg_price = (ifnull((31 * avg_price),0) + 94056) / (ifnull(31,0) + 24) where item_id = 134;
update mst_item set current_stock = current_stock + 24 where item_id = 134;
call save_to_item_balance(1, 134, cast('2013-02-28 'as date), 24, 'D');
update mst_item set  buying_price = 3919 WHERE item_id = 134;
insert into mst_buying_price_hist(item_id,price,end_date,supplier,insert_log)  values(134,3919,now(),'PD 41 (S2)','adm;2013-02-28 22:45:34 ');
call save_to_relation_balance(66, cast('2013-02-28 'as date), 171056, 'D');
update mst_relation set current_debt = current_debt + 171056 where relation_id = 66;
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 13/02/28 22:50:27 - Gania
XA START 'INVISI-CHANGania';
insert into trs_retur_mst (trans_num, trans_date, tipe, relation_id, gudang_id, subtotal, discount, tax, biaya, materai, total, notes, user_id) values ('RT/20130200008',cast('2013-02-28 'as date),7,66,1,15400,0,0,0,0,15400,'tes;xx1','adm');
insert into trs_retur_detail (retur_id, item_id, conv_id, quantity, price, amount, disc, tax, disc_is_prc, conversion, faktur_id)values (last_insert_id(), 195,0,2,7700,15400,0,0,0,1,NULL);
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 13/02/28 23:16:02 - Gania
XA START 'INVISI-CHANGania';
update mst_item set current_stock = current_stock + -2 where item_id = 195;
call save_to_item_balance(1, 195, cast('2013-02-28 'as date), 2, 'C');
update trs_receipt_mst set sisa = sisa - 15400 where receipt_id = 205;
update trs_retur_mst set status_id = 1 where retur_id = 25;
call save_to_relation_balance(66, cast('2013-02-28 'as date), 15400, 'C');
update mst_relation set current_debt = current_debt + -15400 where relation_id = 66;
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 13/02/28 23:16:57 - Gania
XA START 'INVISI-CHANGania';
insert into trs_payment_mst (trans_num, trans_date, tipe, relation_id, inv_id, subtotal, discount, biaya, total, notes,status_id, user_id) values ('PY20130200034',cast('2013-02-28 'as date),9,66,205,155656,0,0,155656,'',0,'adm');
insert into trs_payment_detail (payment_id, jenis_bayar, amount, bank, dok_num, tgl_cair)values (last_insert_id(), 1,155656,'','',cast('1899-12-30 'as date));
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 13/02/28 23:17:16 - Gania
XA START 'INVISI-CHANGania';
update trs_payment_mst set status_id = 1 where payment_id = 76;
call save_to_relation_balance(66, cast('2013-02-28 'as date), 155656, 'C');
update mst_relation set current_debt = current_debt + -155656 where relation_id = 66;
update trs_receipt_mst set sisa = sisa - 155656 where receipt_id = 205;
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';

-- Begin on 13/03/01 21:34:52 - Gania
XA START 'INVISI-CHANGania';
INSERT INTO System_Users (User_Id, User_Name, Passwd, Access_Level)  VALUES ('kasir','kasir','', 1);
INSERT INTO System_Access (User_Id,Menu_Id,Access_List,Outlook_Panel,Outlook_Button,Usage_Count, can_acces,can_add,can_edit,can_delete,can_view,can_print) VALUES ('kasir',101,0,'','',0,0,0,0,0,0,0);
INSERT INTO System_Access (User_Id,Menu_Id,Access_List,Outlook_Panel,Outlook_Button,Usage_Count, can_acces,can_add,can_edit,can_delete,can_view,can_print) VALUES ('kasir',102,0,'','',0,0,0,0,0,0,0);
INSERT INTO System_Access (User_Id,Menu_Id,Access_List,Outlook_Panel,Outlook_Button,Usage_Count, can_acces,can_add,can_edit,can_delete,can_view,can_print) VALUES ('kasir',205,0,'','',0,0,0,0,0,0,0);
INSERT INTO System_Access (User_Id,Menu_Id,Access_List,Outlook_Panel,Outlook_Button,Usage_Count, can_acces,can_add,can_edit,can_delete,can_view,can_print) VALUES ('kasir',210,0,'','',0,0,-1,-1,0,-1,0);
INSERT INTO System_Access (User_Id,Menu_Id,Access_List,Outlook_Panel,Outlook_Button,Usage_Count, can_acces,can_add,can_edit,can_delete,can_view,can_print) VALUES ('kasir',220,0,'','',0,0,0,0,0,0,0);
INSERT INTO System_Access (User_Id,Menu_Id,Access_List,Outlook_Panel,Outlook_Button,Usage_Count, can_acces,can_add,can_edit,can_delete,can_view,can_print) VALUES ('kasir',221,0,'','',0,0,0,0,0,0,0);
INSERT INTO System_Access (User_Id,Menu_Id,Access_List,Outlook_Panel,Outlook_Button,Usage_Count, can_acces,can_add,can_edit,can_delete,can_view,can_print) VALUES ('kasir',223,0,'','',0,0,0,0,0,0,0);
INSERT INTO System_Access (User_Id,Menu_Id,Access_List,Outlook_Panel,Outlook_Button,Usage_Count, can_acces,can_add,can_edit,can_delete,can_view,can_print) VALUES ('kasir',301,0,'','',0,0,0,0,0,0,0);
INSERT INTO System_Access (User_Id,Menu_Id,Access_List,Outlook_Panel,Outlook_Button,Usage_Count, can_acces,can_add,can_edit,can_delete,can_view,can_print) VALUES ('kasir',302,0,'','',0,0,0,0,0,0,0);
INSERT INTO System_Access (User_Id,Menu_Id,Access_List,Outlook_Panel,Outlook_Button,Usage_Count, can_acces,can_add,can_edit,can_delete,can_view,can_print) VALUES ('kasir',323,0,'','',0,0,0,0,0,0,0);
INSERT INTO System_Access (User_Id,Menu_Id,Access_List,Outlook_Panel,Outlook_Button,Usage_Count, can_acces,can_add,can_edit,can_delete,can_view,can_print) VALUES ('kasir',330,0,'','',0,0,0,0,0,0,0);
INSERT INTO System_Access (User_Id,Menu_Id,Access_List,Outlook_Panel,Outlook_Button,Usage_Count, can_acces,can_add,can_edit,can_delete,can_view,can_print) VALUES ('kasir',331,0,'','',0,0,0,0,0,0,0);
INSERT INTO System_Access (User_Id,Menu_Id,Access_List,Outlook_Panel,Outlook_Button,Usage_Count, can_acces,can_add,can_edit,can_delete,can_view,can_print) VALUES ('kasir',400,0,'','',0,0,0,0,0,0,0);
INSERT INTO System_Access (User_Id,Menu_Id,Access_List,Outlook_Panel,Outlook_Button,Usage_Count, can_acces,can_add,can_edit,can_delete,can_view,can_print) VALUES ('kasir',401,0,'','',0,0,0,0,0,0,0);
INSERT INTO System_Access (User_Id,Menu_Id,Access_List,Outlook_Panel,Outlook_Button,Usage_Count, can_acces,can_add,can_edit,can_delete,can_view,can_print) VALUES ('kasir',402,0,'','',0,0,0,0,0,0,0);
INSERT INTO System_Access (User_Id,Menu_Id,Access_List,Outlook_Panel,Outlook_Button,Usage_Count, can_acces,can_add,can_edit,can_delete,can_view,can_print) VALUES ('kasir',403,0,'','',0,0,0,0,0,0,0);
INSERT INTO System_Access (User_Id,Menu_Id,Access_List,Outlook_Panel,Outlook_Button,Usage_Count, can_acces,can_add,can_edit,can_delete,can_view,can_print) VALUES ('kasir',501,0,'','',0,0,0,0,0,0,0);
INSERT INTO System_Access (User_Id,Menu_Id,Access_List,Outlook_Panel,Outlook_Button,Usage_Count, can_acces,can_add,can_edit,can_delete,can_view,can_print) VALUES ('kasir',504,0,'','',0,0,0,0,0,0,0);
INSERT INTO System_Access (User_Id,Menu_Id,Access_List,Outlook_Panel,Outlook_Button,Usage_Count, can_acces,can_add,can_edit,can_delete,can_view,can_print) VALUES ('kasir',510,0,'','',0,0,0,0,0,0,0);
INSERT INTO System_Access (User_Id,Menu_Id,Access_List,Outlook_Panel,Outlook_Button,Usage_Count, can_acces,can_add,can_edit,can_delete,can_view,can_print) VALUES ('kasir',520,0,'','',0,0,0,0,0,0,0);
INSERT INTO System_Access (User_Id,Menu_Id,Access_List,Outlook_Panel,Outlook_Button,Usage_Count, can_acces,can_add,can_edit,can_delete,can_view,can_print) VALUES ('kasir',525,0,'','',0,0,0,0,0,0,0);
INSERT INTO System_Access (User_Id,Menu_Id,Access_List,Outlook_Panel,Outlook_Button,Usage_Count, can_acces,can_add,can_edit,can_delete,can_view,can_print) VALUES ('kasir',530,0,'','',0,0,0,0,0,0,0);
INSERT INTO System_Access (User_Id,Menu_Id,Access_List,Outlook_Panel,Outlook_Button,Usage_Count, can_acces,can_add,can_edit,can_delete,can_view,can_print) VALUES ('kasir',1001,0,'','',0,0,0,0,0,0,0);
INSERT INTO System_Access (User_Id,Menu_Id,Access_List,Outlook_Panel,Outlook_Button,Usage_Count, can_acces,can_add,can_edit,can_delete,can_view,can_print) VALUES ('kasir',1002,0,'','',0,0,0,0,0,0,0);
XA END 'INVISI-CHANGania';
XA PREPARE 'INVISI-CHANGania';
XA COMMIT 'INVISI-CHANGania';
