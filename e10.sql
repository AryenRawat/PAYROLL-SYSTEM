CREATE TABLE MANAGER(
  MGR_ID int,
  NAME varchar(30),
  SALARY int,
  HIREDATE date
  );
INSERT INTO MANAGER (MGR_ID, NAME, SALARY,HIREDATE)
SELECT empno,ename,sal,hiredate
FROM EMP
WHERE job='MANAGER';


CREATE OR REPLACE PROCEDURE sumTwoNum (num1 IN number,num2 IN number) 
IS
BEGIN
dbms_output.put_line (num1 + num2);
END;
/
exec sumTwoNum(15,6);


CREATE OR REPLACE PROCEDURE sal_upd
IS
BEGIN
update emp
set SAL=SAL+SAL*0.10
where job = 'CLERK';
END;
/
exec sal_upd;
SELECT * FROM emp where job in('CLERK');


CREATE OR REPLACE PROCEDURE count_managers AS
  mcount NUMBER;
BEGIN
  SELECT COUNT(DISTINCT mgr)
  INTO mcount
  FROM emp
  WHERE mgr IS NOT NULL;
  DBMS_OUTPUT.PUT_LINE('Number of Managers: ' || manager_count);
END;
/
BEGIN
  count_managers;
END;
/

CREATE OR REPLACE PROCEDURE display_emp_details AS
BEGIN
  FOR e IN (SELECT * FROM emp WHERE ename LIKE 'A%' OR ename LIKE 'M%') LOOP
    DBMS_OUTPUT.PUT_LINE('Employee ID: ' || e.empno || 
                         ', Name: ' || e.ename ||
                         ', Job: ' || e.job || 
                         ', Manager ID: ' || e.mgr || 
                         ', Hire Date: ' || e.hiredate || 
                         ', Salary: ' || e.sal ||
                         ', Commission: ' || e.comm || 
                         ', Department ID: ' || e.dept);
  END LOOP;
END;
/
BEGIN
  display_emp_details;
END;
/