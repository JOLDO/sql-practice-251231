-- 실습1
-- 1)
-- 급여가 3000 이상인 직원만 조회하시오.
SELECT * FROM EMP WHERE SAL >= 3000;
-- 2)
-- EMP 테이블에서 이름(ENAME), 급여(SAL), 부서번호(DEPTNO)만 조회하시오.
SELECT ENAME, SAL, DEPTNO FROM EMP;
-- 3)
-- 20번 부서의 사원 이름과 급여를 조회하시오.
SELECT * FROM EMP WHERE DEPTNO = 20;