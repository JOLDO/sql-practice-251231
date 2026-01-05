SELECT empno, DEPTNO, sal from emp where deptno = 10
UNION
SELECT empno, DEPTNO, sal from emp where deptno = 20
order by deptno;    --8줄 (empno는 primary라서 중복될수가 없음)

SELECT DEPTNO, sal from emp where deptno = 10
UNION
SELECT DEPTNO, sal from emp where deptno = 20
order by deptno;    --유니온 7줄 (20-3000 인게 두개 있어서 1개 줄어듬) 중복되면 제거됨

SELECT DEPTNO, sal from emp where deptno = 10
UNION ALL
SELECT DEPTNO, sal from emp where deptno = 20
order by deptno;    --유니온올 8줄 (20-3000 인게 두개 있어서 1개 줄어듬) 중복되도 출력함

SELECT empno, ename, sal, deptno from emp
INTERSECT
SELECT empno, ename, sal, deptno from emp where deptno = 10;    --전체 값들 중에 deptno가 10인거만 나옴

SELECT empno, ename, sal, deptno from emp
minus
SELECT empno, ename, sal, deptno from emp where deptno = 10;    --전체 값들 중에 deptno가 10이 아닌것만 나옴(부정어는 양이 많으면 느려져서, 가능하면 안쓰는게 좋음)
SELECT empno, ename, sal, deptno from emp where deptno != 10;   --마이너스를 쓰는 것과 같지만 양이 많으면 느려짐