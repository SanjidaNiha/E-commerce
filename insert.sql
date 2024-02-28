insert into tab_admin values(1, 'Niha', 'niha', 'hinew');
insert into tab_admin values(2, 'Siha', 'siha', 'honew');
insert into tab_admin values(3, 'Tiha', 'tiha', 'hihiew');
insert into tab_admin values(4, 'Diha', 'diha', 'hijfw');
insert into tab_admin values(5, 'Riha', 'riha', 'hiutew');
insert into tab_admin values(6, 'Jiha', 'jiha', 'hindhw');
insert into tab_admin values(7, 'Piha', 'piha', 'heew');
insert into tab_admin values(8, 'Fiha', 'fiha', 'etnew');
insert into tab_admin values(9, 'Biha', 'biha', 'mrwew');
insert into tab_admin values(10, 'Kiha', 'kiha', 'konew');


insert into tab_product values(1, 'bags', 'Handbag j', 14, 30);
insert into tab_product values(2, 'pen', 'black j', 12, 20);
insert into tab_product values(3, 'clips', 'fashionable o', 140, 10);
insert into tab_product values(4, 'dress', 'cotton l', 200, 30);
insert into tab_product values(5, 'jeans', 'black u', 140, 10);
insert into tab_product values(6, 'candies', 'sweet u', 140, 5);
insert into tab_product values(7, 'chocolate', 'dark i', 14, 5);
insert into tab_product values(8, 'chocolates', 'white h', 14, 5);
insert into tab_product values(9, 'mirrors', 'Handmade g', 140, 3);
insert into tab_product values(10, 'paper', 'design q', 50, 2);


insert into tab_customer values(1, 'jubu', 'jubu1', '01345', 'shofipur','ordered');
insert into tab_customer values(2, 'lima', 'lima1', '01234', 'savar','ordered');
insert into tab_customer values(3, 'riya', 'riya1', '01445', 'mirpur','ordered');
insert into tab_customer values(4, 'mitu', 'mitu1', '01245', 'akran','ordered');
insert into tab_customer values(5, 'esrat', 'esrat1', '01555', 'asadgate','ordered');
insert into tab_customer values(6, 'sanwar', 'sanwar1', '02225', 'cantonmant','ordered');
insert into tab_customer values(7, 'shanto', 'santo1', '09945', 'uttara','ordered');
insert into tab_customer values(8, 'mehedi', 'mehedi1', '01999', 'jirani','ordered');
insert into tab_customer values(9, 'rony', 'rony1', '07875', 'majarroad','ordered');
insert into tab_customer values(10, 'ahad', 'ahad1', '00225', 'gabtoli','ordered');


insert into tab_cart values(10, 1, 30);
insert into tab_cart values(11, 2, 20);
insert into tab_cart values(12, 3, 10);
insert into tab_cart values(13, 4, 30);
insert into tab_cart values(14, 5, 10);
insert into tab_cart values(15, 6, 5);
insert into tab_cart values(16, 7, 5);
insert into tab_cart values(17, 8, 5);
insert into tab_cart values(18, 9, 3);
insert into tab_cart values(19, 10, 2);


insert into tab_orders (order_id,cus_id,cart_id,cus_address,entry_time) values(11, 1, 10, 'shofipur', to_date('01/09/2022','DD/MM/YYYY'));
insert into tab_orders (order_id,cus_id,cart_id,cus_address,entry_time) values(12, 2, 11,'savar', to_date('01/09/2022','DD/MM/YYYY'));
insert into tab_orders (order_id,cus_id,cart_id,cus_address,entry_time) values(13, 3, 12, 'mirpur',to_date('02/09/2022','DD/MM/YYYY'));
insert into tab_orders (order_id,cus_id,cart_id,cus_address,entry_time) values(14, 4, 13,'akran', to_date('03/09/2022','DD/MM/YYYY'));
insert into tab_orders (order_id,cus_id,cart_id,cus_address,entry_time) values(15, 5, 14,'asadgate', to_date('04/09/2022','DD/MM/YYYY'));
insert into tab_orders (order_id,cus_id,cart_id,cus_address,entry_time) values(16, 6, 15,'cantonment', to_date('05/09/2022','DD/MM/YYYY'));
insert into tab_orders (order_id,cus_id,cart_id,cus_address,entry_time) values(17, 7, 16,'uttara', to_date('06/09/2022','DD/MM/YYYY'));
insert into tab_orders (order_id,cus_id,cart_id,cus_address,entry_time) values(18, 8, 17,'jirani', to_date('07/09/2022','DD/MM/YYYY'));
insert into tab_orders (order_id,cus_id,cart_id,cus_address,entry_time) values(19, 9, 18,'majarroad', to_date('01/09/2022','DD/MM/YYYY'));
insert into tab_orders (order_id,cus_id,cart_id,cus_address,entry_time) values(20, 10, 19,'gabtoli', to_date('01/09/2022','DD/MM/YYYY'));


