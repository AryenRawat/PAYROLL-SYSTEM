SELECT e.empno, e.ename, d.deptno
FROM emp e
JOIN dept d
ON e.dept = d.deptno;


CREATE TABLE salgrade( grade int,
losal int,
hisal int
);
 insert into salgrade(grade,losal,hisal)
values(1,700,1400);
insert into salgrade(grade,losal,hisal)
values(2,1401,2000);
insert into salgrade(grade,losal,hisal)
values(3,2001,5000);
insert into salgrade(grade,losal,hisal)
values(4,5001,9999);

SELECT e.ename, e.sal, s.grade
FROM emp e, salgrade s
WHERE e.sal BETWEEN s.losal AND s.hisal;

SELECT e.ename, e.dept, d.dname 
FROM emp e
LEFT JOIN dept d
ON e.dept = d.deptno;

SELECT e.ename, e.dept, d.dname 
FROM emp e
RIGHT JOIN dept d
ON e.dept = d.deptno;

SELECT e.ename AS employee, m.ename AS manager
FROM emp e, emp m
WHERE e.mgr = m.empno;