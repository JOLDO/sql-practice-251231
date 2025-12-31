select * from emp WHERE JOB = 'MANAGER';
select * from emp WHERE JOB = 'MANAGER' AND ENAME = 'JONES';
select * from emp;
select ENAME, SAL from emp WHERE SAL > 4999;

-- 중볼값 제거
SELECT DISTINCT JOB FROM EMP;

-- ALL 생략된 상태
SELECT JOB FROM EMP;

-- 다중열 중복 제거
SELECT DISTINCT JOB, DEPTNO FROM EMP;

SELECT JOB, DEPTNO FROM EMP;