--proadd with in and out para
create or replace procedure padd(n1 in number,n2 in number,ans out
number)
IS
begin
ans:=n1 + n2;
end padd;
/
--calling program
--padd calling
set serveroutput on
declare
a number:=&a;
b number:=&b;
s number;
begin
padd(a,b,s);
dbms_output.put_line('answer='||s);
end;
/