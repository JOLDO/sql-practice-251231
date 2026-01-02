-- ### 🔹 ① AND 연산자 사용
-- 모든 조건을 **동시에 만족**해야 출력됨
-- ```sql
SELECT * FROM EMP
WHERE DEPTNO = 30
AND
JOB = 'SALESMAN';
-- ```
-- > 부서가 30번이고 직무가 SALESMAN인 사원만 출력

-- ### 🔹 ② OR 연산자 사용
-- **하나라도 만족**하면 출력됨
-- ```sql
SELECT * FROM EMP
WHERE JOB = 'CLERK' OR JOB = 'MANAGER';
-- ```
-- > 직무가 CLERK이거나 MANAGER인 사원 모두 출력

---

-- ### 🔹 ③ 괄호 사용 (우선순위 명확히 하기)

-- ```sql
SELECT * FROM EMP
WHERE (DEPTNO = 10 OR DEPTNO = 20)
AND SAL > 2000;
-- ```
-- > 부서번호가 10 또는 20이고, 급여가 2000 초과인 경우