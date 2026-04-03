--procedure to insert data
create or replace procedure proinsert
(gid IN number, gnm IN char, phno IN number, mail IN char)
IS
begin
insert into guest values(gid,gnm,phno,mail);
commit;
end proinsert;
/
--proinsert call
declare
xgid NUMBER(4):=&xgid;
xgnm CHAR(15):='&xgnm';
xcon NUMBER(10):=&xcon;
xemail CHAR(50):='&xemail';
begin
proinsert(xgid,xgnm,xcon,xemail);
end;
/