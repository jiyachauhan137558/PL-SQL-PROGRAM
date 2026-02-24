--program to caluculate result 
set serveroutput on
declare
	xrollno number(3):=&xrollno;
	xm1 number(3);
	xm2 number(3);
	xm3 number(3);
	xm4 number(3);
	xm5 number(3);
	t number(3);
	p number(3);
begin
select m1,m2,m3,m4,m5 into xm1,xm2,xm3,xm4,xm5 from marks where rollno=xrollno;
IF(xm1<40)or(xm2<40)or(xm3<40)or(xm4<40)or(xm5<40) THEN
	update marks set total=0,per=0,result='fail',grade='f' where rollno=xrollno;
END IF;
	t:=xm1+xm2+xm3+xm4+xm5;
	p:=t/5;
IF p>=40 and p<50 THEN
update marks set total=t,per=p,result='pass',grade='D' where rollno=xrollno;

	ELSIF p>=50 and p<60 THEN
	update marks set total=t,per=p,result='pass',grade='C' where rollno=xrollno;	

	ELSIF p>=60 and p<70 THEN
	update marks set total=t,per=p,result='pass',grade='B' where rollno=xrollno;	

	ELSIF p>=70 and p<80 THEN
	update marks set total=t,per=p,result='pass',grade='A' where rollno=xrollno;

	ELSIF p>=80 and p<100 THEN
	update marks set total=t,per=p,result='pass',grade='A+' where rollno=xrollno;

	ELSE
	update marks set total=t,per=p,result='fail',grade='F' where rollno=xrollno;
END IF;
end;
/
	