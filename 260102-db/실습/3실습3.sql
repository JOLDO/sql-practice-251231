-- 실습3
-- 1) 급여(SAL)가 2000 이상인 사원만 조회하시오.
SELECT * FROM EMP WHERE SAL >= 2000;
-- 2) 입사일(HIREDATE)이 '1981-02-20' 이후인 사원만 조회하시오.
-- 힌트)TO_DATE('1981-02-20', 'YYYY-MM-DD') 이용하기.
SELECT * FROM EMP WHERE HIREDATE > TO_DATE('1981-02-20', 'YYYY-MM-DD');   --TO-DATE('2026-01-02', 'YYYY-MM-DD')문자열을 우측 형태로 날짜로 변경
-- SELECT * FROM EMP WHERE HIREDATE > '1981-02-20' ORDER BY HIREDATE DESC; --그냥 써도 됨
-- 3)부서번호가 10이 아닌 사원만 출력하시오.
SELECT * FROM EMP WHERE DEPTNO != 10;
SELECT * FROM EMP WHERE DEPTNO <> 10;   --<>도 !=와 같음, 아마 크고 같은거 이런거인듯