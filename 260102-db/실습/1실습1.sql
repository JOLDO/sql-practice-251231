-- 실습1(별칭)
-- 1) EMP 테이블에서 사원 이름에 "Name"이라는 별칭을 부여하여 출력하시오.
SELECT ENAME AS "Name" FROM EMP;
-- SELECT ENAME "Name" FROM EMP;
-- 2) EMP 테이블에서 급여(SAL)를 연봉(Annual Salary)으로 계산하여 출력하시오.
SELECT SAL * 12 AS "연봉(Annual Salary)" FROM EMP;
-- SELECT SAL * 12 "연봉(Annual Salary)" FROM EMP;
-- 3) 사원명(ENAME)과 직무(JOB)를 각각 "사원이름", "직무"로 출력하시오.
SELECT ENAME AS "사원이름", JOB AS "직무" FROM EMP;
-- SELECT ENAME "사원이름", JOB "직무" FROM EMP;
-- 현재까지 SELECT [DISTINCT] 컬럼명 [AS "별칭"] FROM 테이블명 WHERE 조건;