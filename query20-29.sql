delete from tab_cart where (product_id=3 and cart_id in (select cart_id from tab_orders where cus_id=3));


update tab_product set quantity = 15 where product_id=8;

select substr(description, 0, instr(description,' ')) from tab_product;

select count(distinct user_name) unique_name from tab_admin order by unique_name;

select tab_cart.product_id, tab_cart.price from tab_cart where cart_id in 
(select cart_id from tab_orders where order_id=14);

select quantity,avg(price) from tab_product group by quantity order by avg(price);

select sysdate from dual;

update tab_product set price = price * 2;

update tab_product set price = price / 2;

select* from tab_product;

