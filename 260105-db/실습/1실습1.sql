-- emp 테이블에서 ename이 s로 끝나는 사람 조회.
SELECT * from emp where ename like '%S';

-- emp 테이블에서 부서번호가 30인 사람 중 직책 salesman인 사람
SELECT * from emp where deptno = 30 AND job = 'SALESMAN';

-- emp 테이블에서 부서번호가 20, 30인 사람 중 직책 2000보다 큰 사람
SELECT * from emp WHERE deptno in(20, 30) and sal > 2000;

SELECT * from emp where deptno in(20, 30)
INTERSECT
SELECT * from emp where sal > 2000;

SELECT * from emp
minus
SELECT * from emp where deptno = 10 or sal <= 2000;

-- 2000과 3000사이 외의 값
SELECT * from emp where sal not BETWEEN 2000 and 3000;
SELECT * FROM emp where sal < 2000 UNION
SELECT * from emp where sal > 3000;
SELECT * from emp where sal < 2000 or sal > 3000;

-- e가 포함된 이름 중에 30번 부서에서 급여가 1000이상 2000이하 외의 사람을 조회
SELECT * from emp where ename like '%E%' and deptno = 30 and sal not BETWEEN 1000 and 2000;
SELECT * from emp where ename like '%E%' and deptno = 30 minus 
SELECT * from emp where sal between 1000 and 2000;

-- comm이 없고, 직책이 manager, clerk 인 사람중 이름에 두번째 글자에 L이 아닌 사람
SELECT * from emp where (comm is null or comm = 0) and job in('MANAGER', 'CLERK') and ename not like '_L%';