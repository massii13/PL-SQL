------------------------------------------------*************index PAR TABLEAU*************-------------------------------------------------------------

SET SERVEROUTPUT ON

DECLARE
 TYPE emp_table_type IS TABLE OF employees%ROWTYPE INDEX BY PLS_INTEGER;    --creation de tableau
my_emp_table emp_table_type;                                                --declaration dune variable de meme type que (emp_table_type)
max_count NUMBER(3):= 104;

BEGIN
FOR i IN 100..max_count LOOP
    SELECT * INTO my_emp_table(i) FROM employees
    WHERE employee_id = i;
END LOOP;

FOR i IN my_emp_table.FIRST..my_emp_table.LAST
LOOP
DBMS_OUTPUT.PUT_LINE(my_emp_table(i).last_name);
END LOOP;

END;

------------------------------------------

DECLARE
type emp_table_type is table of employees%rowtype index by PLS_INTEGER;

my_emp_table emp_table_type;
max_count Number(3) := 104;

BEGIN

for i in 100..max_count loop
select * into my_emp_table(i) FROM employees
where employee_id = i;
end loop;

for i in  my_emp_table.first..my_emp_table.last 
loop
DBMS_OUTPUT.PUT_LINE(my_emp_table(i).last_name);
end loop;

DBMS_OUTPUT.PUT_LINE(my_emp_table.count);
DBMS_OUTPUT.PUT_LINE(my_emp_table.first);
DBMS_OUTPUT.PUT_LINE(my_emp_table.last);
--my_emp_table.delete;
my_emp_table.delete(103);
DBMS_OUTPUT.PUT_LINE(my_emp_table.count);
END;

------------------------**************cursor******************----------------------
set serveroutput on
declare
cursor cursor_name is
select * from employees;
begin
for rec in cursor_name 
loop
dbms_output.put_line(rec.last_name||'   '||rec.first_name);
null;
end loop;
end;
