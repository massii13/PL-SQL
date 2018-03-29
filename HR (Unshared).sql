set serveroutput on
declare
loop_counter number(10):=0;
begin 
null;
for rec in 1...10 loop
loop_counter:=loop_counter+1;
end loop;
dbms_output.put_line(loop_counter);
end;