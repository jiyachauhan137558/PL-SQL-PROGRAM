--use peramitarised cursor
set serveroutput on
declare
	
	gsal number;
	hra number;
	da number;
	medical number:=500;
	pf number;
	
	cursor p1 is select basicsal,grosssal from emp where deptno=3;
begin
	
	for i in p1
	loop
	
	hra :=i.basicsal*0.15;
	da :=i.basicsal*0.50;
	pf :=i.basicsal*0.10;
	gsal:=(i.basicsal+hra+da+medical)-pf;
	update emp set grosssal=gsal where deptno=3;
	dbms_output.put_line('basicsal:'||i.basicsal);
	dbms_output.put_line('Gross salary:'||gsal);
	end loop;
end;
/