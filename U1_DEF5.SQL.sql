--converts temp from celcius to fahrenheit
set serveroutput on
declare
	c number(5):=&c;
	f number(5); 
begin
	f:=(c*9/5)+32;
	dbms_output.put_line('f in='||f);
end;
/