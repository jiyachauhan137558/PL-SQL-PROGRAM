--update emp salary as per id
create or replace procedure pro_update
(sal IN number,xeid In number)
Is
begin
update emp set basicsal=sal where eid=xeid;
commit;
end pro_update;
/
--calling program
--pro update call
declare
s number:=&s;
id number:=&id;
begin
pro_update(s,id);
end;
/