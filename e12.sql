Declare
num number(5);
Begin
update emp set sal = sal + sal*0.15 where deptno=20;
if SQL%NOTFOUND then
dbms_output.put_line('none of the salaries were updated');
elsif SQL%FOUND then
num := SQL%ROWCOUNT;
dbms_output.put_line('salaries for ' || num || 'employees are updated');
end if;
End;

DECLARE
CURSOR C1 IS SELECT EMPNO,ENAME ,DEPTNO FROM EMP;
EMPNUM EMP.EMPNO%TYPE;
EMPNAME EMP.ENAME%TYPE;
DEPTNUM EMP.DEPTNO%TYPE;
BEGIN OPEN C1;
LOOP FETCH C1 INTO EMPNUM,EMPNAME,DEPTNUM;
if c1%notfound then
exit;
else
dbms_output.put_line(EMPNUM||' '||EMPNAME||' '||DEPTNUM);
end if;
END LOOP;
end;

declare
cursor emp is
select empnm,salary from emp_cur order by salary desc;
begin
dbms_output.put_line(‘ EMP NAME ‘ || ‘ SALARY ‘);
dbms_output.put_line(‘=========================’);
for i in emp
loop
if emp%rowcount <=5 then
dbms_output.put_line(i.empnm||’ ‘ || ‘  ‘||’ ‘||i.salary);
end if;
end loop;
end;