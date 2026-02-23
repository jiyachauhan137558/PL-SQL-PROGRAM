--calculate simple interest
set serveroutput on
declare
	p number(5):=&p;
	n number(5):=&n;
	r number(5):=&r;
	si number;
begin
	si:=p*n*r/100;
	dbms_output.put_line('simple interest:='||si);
end;
/