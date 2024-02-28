select cus_name from tab_customer;

select product_name from tab_product where product_id=3;

select count(price) from tab_product;

select count(distinct price) from tab_product;

select product_id from tab_product order by price;

select description from tab_product where product_id=7;


select product_id, product_name from tab_product order by price;

select cart_id from tab_cart order by price desc;

select product_id, price from tab_cart order by price;

select avg(price) from tab_product group by quantity;

select quantity,avg(price) from tab_product group by quantity;

select product_name,price from tab_product where price in(10,30);

select max(price) from tab_product;
select min(price) from tab_product;
select avg(price) from tab_product;

select min(quantity) from tab_product group by product_id;

select cus_id from tab_orders where order_id=15;

select tab_customer.cus_name from tab_customer where cus_id in(select cus_id from tab_orders where order_id=15);

select tab_product.product_name, tab_product.price from tab_product where product_id in 
(select product_id from tab_cart where cart_id=17);


