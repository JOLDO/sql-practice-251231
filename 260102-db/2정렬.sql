-- 오름차순
SELECT * FROM EMP ORDER BY SAL;
SELECT * FROM EMP ORDER BY SAL ASC;

-- 내렴차순
SELECT * FROM EMP ORDER BY SAL DESC;

-- 부서번호 오름차순, 급여 내림차순: 순서가 중요한데 먼저 부서번호를 오름차순으로 정렬하고 급여를 내림차순으로 정렬함
SELECT * FROM EMP ORDER BY SAL DESC, DEPTNO ASC;    --위아래는 다름
-- SELECT * FROM EMP ORDER BY DEPTNO ASC, SAL DESC;

-- 인덱스를 이용해서 정렬: 여기서 인덴스는 ENAME-1, JOB-2, SAL-3 즉, SAL을 기준으로 내림차순 정렬
SELECT ENAME, JOB, SAL FROM EMP ORDER BY 3 DESC;