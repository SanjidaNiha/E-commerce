drop table tab_orders;
drop table tab_cart;
drop table tab_customer;
drop table tab_admin;
drop table tab_product;


create table tab_admin
(
     admin_id integer not null,
     full_name varchar(200),
     user_name varchar(100),
     passwords varchar(255),
     primary key(admin_id)
);

create table tab_product
(
    product_id integer not null,
	product_name varchar(300),
	description varchar(350),
	quantity varchar(255),
	price integer,
	primary key(product_id)
);


create table tab_customer
(
     cus_id integer not null,
	 cus_name varchar(100),
	 cus_password varchar(255),
	 cus_phone varchar(10),
	 cus_address varchar(10),
	 act varchar(10),
	 primary key(cus_id)
);

create table tab_cart
(   
     cart_id integer not null,
     product_id integer not null,
     price integer,
     
	 primary key(cart_id)
);


create table tab_orders
(
     order_id integer not null,
	 cus_id integer not null,
	 cart_id integer not null,
	 cus_address varchar(20),
	 status varchar(20) default 'processing',
	 entry_time date,
	 primary key(order_id),
	 foreign key(cart_id) references tab_cart(cart_id) on delete cascade,
     foreign key(cus_id) references tab_customer(cus_id) on delete cascade
);


alter table tab_cart add foreign key(product_id) references tab_product(product_id) on delete cascade;
select * from tab;

describe tab_admin;
describe tab_product;
describe tab_customer;
describe tab_orders;
describe tab_cart;



create or replace trigger t_1
after insert or update of product_id on tab_cart
for each row

declare
     product tab_product.quantity%type; 

begin
     select quantity into product from tab_product where product_id=:new.product_id;
     product:= product-1;
     update tab_product set quantity=product where product_id=:new.product_id;
end;


create trigger t_3
after insert or update of cus_id on tab_orders
for each row 
begin
    update tab_customer set act='done' where cus_id=:new.cus_id;
end;

show error trigger t_1;

show error trigger t_3;

