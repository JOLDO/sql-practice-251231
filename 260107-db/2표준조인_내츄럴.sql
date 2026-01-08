-- join-on이 중요
SELECT e.empno,
e.ename,
e.deptno,
d.deptno,
d.dname, d.loc
from emp e join dept d on(e.deptno = d.deptno)
-- join salgrade s 
where e.deptno = d.deptno;

SELECT e.empno,
e.ename,
e.deptno,
d.deptno,
d.dname, d.loc
from emp e, dept d
-- join salgrade s 
where e.deptno = d.deptno;

SELECT e.empno, e.ename, d.deptno, d.dname, d.loc
from emp e, dept d where e.deptno = d.deptno
order by d.deptno, e.empno;

SELECT e.empno, e.ename, d.deptno, d.dname, d.loc
from emp e join dept d on (e.deptno = d.deptno) 
order by d.deptno, e.empno;


SELECT * from emp e, salgrade s where e.sal between s.losal and s.hisal;
SELECT * from emp e join salgrade s on(e.sal between s.losal and s.hisal);


select e1.empno, e1.ename, e1.mgr, e2.empno as mgr_empno, e2.ename as mgr_ename from emp e1, emp e2 where e1.mgr = e2.empno;
select e1.empno, e1.ename, e1.mgr, e2.empno as mgr_empno, e2.ename as mgr_ename from emp e1 join emp e2 on(e1.mgr = e2.empno);


-- create table salgrade_tem as select * from salgrade;
select e1.empno, e1.ename, e1.mgr, e2.empno as mgr_empno, e2.ename as mgr_ename from emp e1, emp e2 where e1.mgr = e2.empno(+) order by e1.empno;
select e1.empno, e1.ename, e1.mgr, e2.empno as mgr_empno, e2.ename as mgr_ename from emp e1 left outer join emp e2 on(e1.mgr = e2.empno) order by e1.empno;
SELECT * from emp_tem e, salgrade_tem s where e.sal between s.losal(+) and s.hisal(+);  -- 레프트 아우터 조인

select e1.empno, e1.ename, e1.mgr, e2.empno as mgr_empno, e2.ename as mgr_ename from emp e1, emp e2 where e1.mgr(+) = e2.empno order by e1.empno;
select e1.empno, e1.ename, e1.mgr, e2.empno as mgr_empno, e2.ename as mgr_ename from emp e1 right outer join emp e2 on(e1.mgr = e2.empno) order by e1.empno;
SELECT * from emp_tem e, salgrade_tem s where e.sal(+) between s.losal and s.hisal; -- 라이트 아우터 조인(오른쪽이 기준으로 모든값이 다 나와야 함 그래서 e에 서 king은 나오지 않음)
select e1.empno, e1.ename, e1.mgr, e2.empno as mgr_empno, e2.ename as mgr_ename from emp e1 full outer join emp e2 on(e1.mgr = e2.empno) order by e1.empno;

