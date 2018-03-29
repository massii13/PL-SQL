---------1
declare
ligne varchar(15);
begin 
for i in 1..10 loop
DBMS_OUTPUT.PUT_LINE('');
for j in 1..10 loop
ligne := (i||'*'||j||'='|| j*i);
DBMS_OUTPUT.PUT(rpad(ligne,6,' ')||'  | ');

end loop;

end loop;
end;
-------------------3
declare
i NUMBER(2) := 1;
j number(2):=1;
k number (2):=1;
begin 
for i in 1..5 loop
DBMS_OUTPUT.PUT_LINE('|');
for j in 1..5 loop
DBMS_OUTPUT.PUT('    ');
for k in 1..5 loop
DBMS_OUTPUT.PUt( i||'*'||j||'*'||k||'='||rpad(k*j*i,6,' ')||'  |  ');
end loop;
DBMS_OUTPUT.PUT_LINE('');
end loop;

end loop;
end;

--------------------greg-------------

    set verify off
    
    declare
    ligne varchar2(4000);
    tmp varchar2(20);
    k number(5);
    
    BEGIN
    k:=&sortie; 
    
 for r in 1..k loop 
 DBMS_OUTPUT.PUT_line('tranche '||r);
    for i in 1..k LOOP
    ligne :='';
        for j in 1..k LOOP
        tmp:= cast(i*j*r as varchar2);
        ligne:=
 ligne||rpad(tmp, 4, ' ')||'  ';
        END LOOP;
      DBMS_OUTPUT.PUT_LINE(ligne);
    END LOOP;
    DBMS_OUTPUT.PUT_line('');
 end loop;   
    END;
