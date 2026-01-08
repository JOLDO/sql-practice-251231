SELECT 
    e.empno, 
    e.ename, 
    e.deptno, 
    d.dname, 
    d.loc
from emp e, dept d 
where e.deptno = d.deptno;

SELECT e.empno, e.ename, e.deptno, d.deptno, d.dname, d.loc from emp e, dept d where e.deptno = d.deptno;
SELECT * from emp e, dept d where e.deptno = d.deptno;
SELECT e.ename, d.* from emp e, dept d where e.deptno = d.deptno;
SELECT e.ename, d.* from emp e, dept d where e.deptno = d.deptno and d.loc = 'CHICAGO';

select 
    e.empno, 
    e.ename, 
    e.sal, 
    d.deptno, 
    d.dname, 
    d.loc 
from emp e, dept d 
where 
    e.deptno = d.deptno 
    and e.sal <= 2500 
    and e.empno <= 9999;    -- 외래키가 있어야 하고 등가조인(이너조인)


select * from emp e, salgrade s
where e.sal between s.losal and s.hisal;    -- 비등가조인(이너조인)


SELECT e1.empno, e1.ename, e1.mgr, e2.ename manager 
from emp e1, emp e2 where e1.MGR = e2.empno;    -- 셀프조인, 자체조인(이너조인) : 킹은 mgr이 null이라 안나옴
-- 예)
select e1.empno, e1.ename, e1.mgr, e2.empno as mgr_empno, e2.ename as mgr_ename from emp e1, emp e2 where e1.mgr = e2.empno;


SELECT e1.empno, e1.ename, e1.mgr, e2.ename manager 
from emp e1, emp e2 where e1.MGR = e2.empno(+); -- 레프트 아우터 조인(좌측테이블(기준)에 외부 테이블을 조인 해줌 없으면 null넣어버림)


SELECT e1.empno, e1.ename, e1.mgr, e2.empno, e2.ename manager 
from emp e1, emp e2 where e1.MGR(+) = e2.empno; -- 라이트 아우터 조인((+)가 붙지 않은 것들의 값은 다 나오게 함)

SELECT e.empno, e.ename, e.deptno, d.deptno as dno, d.dname
from emp e, dept d where e.deptno = d.deptno;

-- create table emp_tem as select * from emp;  -- 테이블 복사해서 생성(제약조건은 복사 안됨)

SELECT e.empno, e.ename, e.deptno, d.deptno as dno, d.dname
from emp_tem e, dept d where e.deptno = d.deptno(+);
SELECT e.empno, e.ename, e.deptno, d.deptno as dno, d.dname
from emp_tem e, dept d where e.deptno(+) = d.deptno;

select e1.empno, e1.ename, e1.mgr, e2.empno as mgr_empno, e2.ename as mgr_ename
from emp e1, emp e2 where e1.mgr = e2.empno(+) order by e1.empno;

select e1.empno, e1.ename, e1.mgr, e2.empno as mgr_empno, e2.ename as mgr_ename
from emp e1, emp e2 where e1.mgr(+) = e2.empno order by e1.empno;