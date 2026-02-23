--calculate square and cube
set serveroutput on
declare
	n1 number(5):=&n1;
	square number(5);
	cube number(5);
begin
	square:=n1*n1;
	cube:=n1*n1*n1;
	dbms_output.put_line('square of n1='||square);
	dbms_output.put_line('cube of n1='||cube);
end;
/