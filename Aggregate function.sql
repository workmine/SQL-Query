SELECT REPLACE('MALAYALAM', 'A', 'E') FROM dual;
SELECT ename, NVL(comm, 0) AS commission FROM emp;
SELECT COUNT(*) AS total_clerks FROM emp WHERE job = 'CLERK';
SELECT deptno, COUNT(*) AS total_employees FROM emp GROUP BY deptno;
SELECT COUNT(*) AS clerks_after_81 FROM emp WHERE job = 'CLERK' AND hiredate > DATE '1981-01-01';
SELECT SUM(sal + NVL(comm, 0)) AS total_salary_commission FROM emp;
SELECT AVG(sal) AS avg_salary FROM emp WHERE job = 'SALESMAN';
SELECT ename, sal FROM emp WHERE sal = (SELECT MAX(sal) FROM emp);

SELECT deptno, ename, sal FROM emp e
WHERE sal = (
    SELECT MAX(sal)
    FROM emp
    WHERE deptno = e.deptno
);

SELECT MIN(ename) AS first_alphabetical FROM emp;
SELECT job, MIN(sal) AS min_salary FROM emp GROUP BY job;
SELECT deptno, job, MAX(sal) AS max_salary FROM emp GROUP BY deptno, job;

SELECT job, deptno, MAX(sal) AS max_salary
FROM emp GROUP BY job, deptno HAVING MAX(sal) > 1500;

SELECT deptno,
       MIN(sal) AS min_salary,
       MAX(sal) AS max_salary
FROM emp WHERE job = 'MANAGER' GROUP BY deptno;

SELECT deptno, MIN(sal) AS min_salary FROM emp
WHERE job = 'MANAGER'
GROUP BY deptno HAVING MIN(sal) > 2500;