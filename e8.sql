CREATE TABLE depositor (
  cus_name VARCHAR(50),
  acno INT
);

INSERT INTO depositor (cus_name, acno)
VALUES('Alice Johnson', 1001);
INSERT INTO depositor (cus_name, acno)
VALUES ('Bob Lee', 1002);
INSERT INTO depositor (cus_name, acno)
VALUES ('Charlie Brown', 1003);
INSERT INTO depositor (cus_name, acno)
VALUES ('David Smith', 1004);
INSERT INTO depositor (cus_name, acno)
VALUES ('Emily Chen', 1005);

CREATE TABLE borrower (
  cus_name VARCHAR(50),
  loanno INT
);

INSERT INTO borrower (cus_name, loanno)
VALUES ('Alice Johnson', 2001);
INSERT INTO borrower (cus_name, loanno)
VALUES ('Bob Lee', 2002);
INSERT INTO borrower (cus_name, loanno)
VALUES ('Emily Chen', 2003);
INSERT INTO borrower (cus_name, loanno)
VALUES ('Frank Williams', 2004);
INSERT INTO borrower (cus_name, loanno)
VALUES ('Grace Davis', 2005);

SELECT cus_name FROM depositor
UNION 
SELECT cus_name FROM borrower;

SELECT cus_name FROM borrower
UNION ALL
SELECT cus_name FROM depositor;

SELECT cus_name FROM borrower
INTERSECT
SELECT cus_name FROM depositor;

SELECT cus_name FROM borrower
MINUS
SELECT cus_name FROM depositor;

create view empv10 as
select empno, ename, job,sal from emp where dept=10;
desc empv10; 

CREATE VIEW empv30 AS
SELECT empno, ename, sal
FROM emp
WHERE dept= 30;

update empv10 set sal = sal+(0.10*sal) where job='CLERK';
select empno,ename,job,sal from emp;

create or replace view empv10 (employee_no, employee_name, job, salary) as select empno, ename, job,sal from emp where dept=10;

CREATE VIEW pay AS
SELECT ename,sal AS monthly_sal,sal * 12 AS annual_sal,dept
FROM emp;

CREATE VIEW dept_stat AS
SELECT d.deptno,d.dname,MIN(e.sal) AS min_sal,MAX(e.sal) AS max_sal,SUM(e.sal) AS total_sal
FROM dept d
JOIN emp e ON d.deptno = e.dept
GROUP BY d.deptno, d.dname;

create or replace view empv20 as select * from emp where dept = 20 with check option constraint empv20_ck;

create or replace view empv10 as select * from emp where dept = 20 with read only;

DROP VIEW empv20;