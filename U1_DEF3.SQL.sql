--product discount
set serveroutput on
declare
	p_name char(10):='&p_name';
	p_ty number(10):=&p_ty;
	p_price number(10):=&p_price;
	discount number(10);
	total number(10);
begin
	total:=p_price*P_ty;
	discount:=total*25/100;
	dbms_output.put_line('discounty is='||discount);
end;
/
