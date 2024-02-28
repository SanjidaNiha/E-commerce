set serveroutput on
 set feedback off
create or replace procedure costFilter(c in number) 
is 
    cs tab_product.price%type;
    id tab_product.product_id%type;
        cursor c_2 is
        select product_id, price from tab_product where cs<=price;
        begin 
        open c_2; 
        loop
        fetch c_2 into id,cs;
        exit when c_2%NOTFOUND;
        dbms_output.put_line('product'||id||' has cost'||cs);
        end loop;
        close c_2;
        exception
        when no_data_found 
        then 
        dbms_output.put_line('no such products exist');
        end;


begin

costFilter(6);
 
end;
show error;
/


