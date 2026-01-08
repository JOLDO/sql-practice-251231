-- 1
select 
    e.deptno, 
    d.dname, 
    e.empno, 
    e.ename, 
    e.sal
from 
    emp e join dept d on(e.deptno = d.deptno)
where
    e.sal > 2000 
order by e.deptno;

select e.deptno, 
    d.dname, 
    e.empno, 
    e.ename, 
    e.sal
from 
    emp e, dept d
where 
    e.deptno = d.deptno and e.sal > 2000 
order by e.deptno;

-- 2
select 
    e.deptno, 
    d.dname, 
    trunc(avg(e.sal)) as avg_sal, 
    max(e.sal) as max_sal, 
    min(e.sal) as min_sal, 
    count(e.sal) as cnt
from emp e join dept d on (e.deptno = d.deptno)
GROUP by e.deptno, d.dname;

select 
    e.deptno, 
    d.dname, 
    trunc(avg(e.sal)) as avg_sal, 
    max(e.sal) as max_sal, 
    min(e.sal) as min_sal, 
    count(e.sal) as cnt
from emp e, dept d
where e.deptno = d.deptno
GROUP by e.deptno, d.dname;

-- 3
select 
    d.deptno, 
    d.dname, 
    e.empno, 
    e.ename, 
    e.job, 
    e.sal
from emp e right outer join dept d on(d.deptno = e.deptno) 
order by e.deptno, e.ename;

select 
    d.deptno, 
    d.dname, 
    e.empno, 
    e.ename, 
    e.job, 
    e.sal
from emp e, dept d
where d.deptno = e.deptno(+) 
order by e.deptno, e.ename;

-- 4
select 
    d.deptno, 
    d.dname, 
    e.empno, 
    e.ename, 
    e.mgr, 
    e.sal, 
    e.deptno, 
    s.losal, 
    s.hisal, 
    s.grade, 
    e.mgr as mgr_empno, 
    e2.ename as mgr_ename 
from dept d left outer join emp e on(d.DEPTNO = e.DEPTNO) 
left outer join SALGRADE s on(e.sal between s.losal and s.hisal)
left outer join emp e2 on (e.mgr = e2.EMPNO)
order by d.deptno, e.empno;

select 
    d.deptno, 
    d.dname, 
    e.empno, 
    e.ename, 
    e.mgr, 
    e.sal, 
    e.deptno, 
    s.losal, 
    s.hisal, 
    s.grade, 
    e.mgr as mgr_empno, 
    e2.ename as mgr_ename 
from emp e, dept d, SALGRADE s, emp e2 
where 
    (d.DEPTNO = e.DEPTNO(+)) 
    and (e.sal between s.losal(+) and s.hisal(+)) 
    and (e.mgr = e2.empno(+))
order by 
    d.deptno, 
    e.empno;

-- 4정답
select * 
from dept d, emp e, 
    salgrade s, emp e2
where d.deptno = e.deptno(+)  --d와 e 14개에 salgrade * 5하면 70개 나옴
    and e.mgr = e2.empno(+)
    and e.sal between s.losal(+) and s.hisal(+) --이런식으로 붙이면됨
 order by d.deptno, e.empno;