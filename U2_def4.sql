--cursor for loop
set serveroutput on
declare
	cursor i1 is select ename,basicsal from (select ename,basicsal from emp order by basicsal desc)where rownum<=3;
begin
	for i in i1
	loop
	dbms_output.put_line('name:'||i.ename||'basicsal:'||i.basicsal);
	end loop;
end;
/