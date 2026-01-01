SELECT ename,
       job,
       CASE
           WHEN job = 'MANAGER' THEN 500
           WHEN job = 'CLERK' THEN 200
           WHEN job = 'PRESIDENT' THEN sal * 0.20
           ELSE 350
       END AS bonus
FROM emp;

SELECT ename, LEAST(sal * 0.20, 200) AS bonus FROM emp;

SELECT ename || ' joined on the ' ||
       TO_CHAR(hiredate, 'DDth "of" Month "of the year" YYYY')
FROM emp;

SELECT ename,
       CASE
           WHEN sal > 1500 THEN 'Greater'
           ELSE 'Smaller'
       END AS salary_status
FROM emp;

SELECT ename,
       CASE
           WHEN sal >= 5000 THEN sal * 0.75
           WHEN sal >= 3000 THEN sal * 0.60
           ELSE sal * 0.50
       END AS DA
FROM emp;

SELECT ename, job, hiredate, deptno FROM emp ORDER BY deptno, hiredate DESC;
SELECT ADD_MONTHS(SYSDATE, 2) AS date_after_two_months FROM dual;
SELECT empno, INITCAP(ename) AS ename, deptno FROM emp ORDER BY deptno DESC;
SELECT CONCAT(CONCAT(ename, '   '), job) AS employee_details FROM emp;
SELECT RPAD(ename, 16, '*') AS padded_name FROM emp;
SELECT SUBSTR(ename, 1, 3) AS name_prefix FROM emp;
SELECT ename, ROUND(sal, -3) AS rounded_salary FROM emp;
SELECT ename, job FROM emp WHERE SUBSTR(ename, -1) = SUBSTR(job, -1);
SELECT ename, sal FROM emp ORDER BY sal DESC;
SELECT ename FROM emp WHERE ename LIKE '%A%';
SELECT ename, hiredate FROM emp WHERE TO_CHAR(hiredate, 'DD') < 16;

SELECT ename,
       CASE
           WHEN comm IS NULL THEN 'NO'
           ELSE 'YES'
       END AS commission_status
FROM emp;

SELECT ename
FROM emp
WHERE ename LIKE 'J%'
   OR ename LIKE 'K%'
   OR ename LIKE 'L%'
   OR ename LIKE 'M%';

SELECT ename, LENGTH(ename) AS name_length FROM emp;
SELECT ename, job FROM emp WHERE mgr IS NULL;
SELECT ename FROM emp WHERE LENGTH(ename) = 5 AND ename LIKE '%N';
SELECT ename, deptno FROM emp WHERE deptno IN (10, 30) ORDER BY ename;
SELECT ename, comm FROM emp WHERE comm IS NULL OR comm < 100;
SELECT ename, comm FROM emp WHERE comm = 0;