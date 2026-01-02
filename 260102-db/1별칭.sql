SELECT ENAME AS "사원 이름" FROM EMP;
SELECT ENAME AS "사원이름", SAL * 12 AS "연봉 상여금 미포함" FROM EMP;
-- 데이터베이스에서만 적용되서 보이는거고, ui같은걸 만들땐 적용이 안되어있음(결론은 처음보는 사람에게 필요하지만 컬럼이름을 아는 사람은 굳이 필요 없음)


SELECT ENAME "직원", JOB "직 무" FROM EMP;
-- 굳이 AS를 쓰지 않고 이름만 정해도 상관없음 하지만 AS를 사용해서 가독성을 올리는게 좋음