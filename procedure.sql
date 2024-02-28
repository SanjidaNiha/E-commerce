set serveroutput on

create or replace procedure delivery_time is
       cursor c_1 is 
       select * from tab_orders where status='processing';
      c_time c_1%ROWTYPE;
      day_diff integer;
   begin
     open c_1;
       loop
         fetch c_1 into c_time;
       exit when c_1%NOTFOUND;
           DBMS_OUTPUT.put_line(c_time.entry_time);
           day_diff   := (sysdate - c_time.entry_time ) ;
    dbms_output.put_line('day difference  : ' || day_diff);
         if(day_diff>=7)
         then
         update tab_orders set status='Cancelled' where status='processing' and entry_time=c_time.entry_time;
         end if;
           
       end loop;
     close c_1;
   end;






begin

delivery_time();
 
end;
show error;
/
select * from tab_orders;