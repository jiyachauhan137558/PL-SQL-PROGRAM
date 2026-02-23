--measurement in feet
set serveroutput on
declare
	feet number;
	cm number;
	inch number;
	meter number;
begin
feet:=&feet;
inch:=feet*12;
cm:=inch*2.54;
meter:=cm/100;
dbms_output.put_line('feet:'||feet);
dbms_output.put_line('centimeter:'||cm);
dbms_output.put_line('inches:'||inch);
dbms_output.put_line('meter:'||meter);
end;
/