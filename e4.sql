SELECT TO_CHAR(hiredate, 'DAY FMMonth DD, YYYY') AS Hire_Date
FROM emp1
WHERE dept = 20;

SELECT TO_CHAR(hiredate, 'DAY FMMonth DD, YYYY HH:MI:SS') AS Hire_Date
FROM emp1
WHERE dept = 20;

SELECT ename,hiredate,hiredate + interval '150' day AS First_Salary_Review
FROM emp1
WHERE dept = 20;

Select add_months(sysdate,2) from dual;
Select last_day(sysdate) from dual;
Select to_date('10-02-09', 'dd-mm-yy') from dual;
Select to_char(sysdate, 'dy dd mon yyyy') from dual;
select months_between(sysdate,to_date('10-10-07', 'dd-mm-yy')) from dual;
Select next_day(sysdate, 'wednesday') from dual;
Select round(sysdate,'year') from dual;
Select round(sysdate,'month') from dual;
Select round(sysdate,'day') from dual;
Select round(sysdate) from dual;
Select trunc(sysdate,'year') from dual;
Select trunc(sysdate,'year') from dual;
Select trunc(sysdate,'year') from dual;
Select trunc(sysdate,'year') from dual;
Select greatest(sysdate, to_date('02-10-06', 'dd-mm-yy'), to_date('12-07-12', 'dd-mm-yy')) from dual;
Select sysdate+25 from dual;
Select sysdate-25 from dual;
Select sysdate-to_date('02-10-06', 'dd-mm-yy') from dual;

Select initcap('jesus christ') from dual;
Select lower('DIED') from dual;
Select upper('for Us') from dual;
Select rtrim('lordourgod', 'lord') from dual;
Select rtrim('godlovesyou','you') from dual;
Select translate('jack','j', 'b') from dual;
Select replace('jack and jue','j', 'bl') from dual;
Select substr('wages of sin is death', 10,3) from dual;

Select to_date('10-02-09', 'dd-mm-yy') from dual;
Select to_char(sysdate, 'dy dd mon yyyy') from dual;
Select to_char(12345.5, 'L099,999.99') from dual;
Select to_number('123') from dual;

Select abs(-15) from dual;
Select ceil(33.645) from dual;
Select cos(180) from dual;
Select cosh(0) from dual;
Select exp(2) from dual;
Select floor(100.2) from dual;
Select ln(5) from dual;
Select log(2,64) from dual;
Select mod(17,3) from dual;
Select power(5,3) from dual;
Select round(125.67854,2) from dual;
Select sin(-19) from dual;
Select sin(90) from dual;
Select sinh(45) from dual;
Select sqrt(7) from dual;
Select tan(45) from dual;
Select tanh(60) from dual;
Select trunc(125.5764,2) from dual;

Select uid from dual;
Select user from dual;
Select vsize('hello') from dual;
Select nvl(comm,50) from emp1 where emp1no=7369;

SELECT COUNT(*) AS Total_Rows FROM emp1;

SELECT COUNT(DISTINCT job) AS Total_Designations FROM emp1;

SELECT COUNT(*) AS Total_Commission_Employees FROM emp1 WHERE comm IS NOT NULL;

The difference between the two queries is in how they handle NULL values in the comm column of the emp table.
The first query, SELECT COUNT(comm) FROM emp;, only counts the number of non-NULL values in the comm column. If there are any NULL values in the comm column, they will not be counted in the result of this query.
The second query, SELECT COUNT(NVL(comm,0)) FROM emp;, replaces any NULL values in the comm column with 0 before counting the values. This means that all values in the comm column, including NULL values, will be counted in the result of this query.
In summary, the first query will give you the number of employees who earn commission, while the second query will give you the total number of employees, including those who do not earn commission.

SELECT SUM(sal) AS Total_Salary FROM emp1;

SELECT MAX(sal) AS Maximum_Salary, MIN(sal) AS Minimum_Salary, AVG(sal) AS Average_Salary FROM emp1;

select count(*) from emp where deptno=30;

SELECT MAX(sal) AS Maximum_Salary FROM emp1 WHERE job = 'CLERK';

SELECT dept, COUNT(*) AS Employee_Count FROM emp1 GROUP BY dept;

in pdf

SELECT job, SUM(sal) AS Total_Salary, MAX(sal) AS Maximum_Salary, MIN(sal) AS Minimum_Salary, AVG(sal) AS Average_Salary FROM emp1 GROUP BY job;

in pdf

SELECT job, SUM(sal) AS Total_Salary
FROM emp1
WHERE job != 'PRESIDENT'
GROUP BY job
HAVING SUM(sal) > 5000;

SELECT job, COUNT(*) as num_employees, AVG(sal) as avg_salary
FROM emp1
GROUP BY job
HAVING COUNT(*) > 2