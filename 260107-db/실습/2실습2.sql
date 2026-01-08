select e.empno, e.ename, e.job, e.mgr, e.hiredate, e.sal, e.comm, e.deptno,
d.deptno, d.dname, d.loc
from emp e join dept d on(e.deptno = d.deptno)
where e.sal >= 3000 and e.mgr is not null
order by e.deptno, e.empno;

select e.empno, e.ename, e.job, e.mgr, e.hiredate, e.sal, e.comm, deptno,
d.dname, d.loc
from emp e join dept d using(deptno)
where e.sal >= 3000
and mgr is not null;

select e.empno, e.ename, e.job, e.mgr, e.hiredate, e.sal, e.comm, e.deptno,
d.deptno, d.dname, d.loc
from emp e, dept d
where e.deptno = d.deptno
and e.sal >= 3000
and mgr is not null;