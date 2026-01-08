select *
  from emp
 where sal > (
   select sal
     from emp
    where ename = 'JONES'
);  --존스보다 월급 많은 사람
select *
  from emp
 where hiredate < (
   select hiredate
     from emp
    where ename = 'SCOTT'
);    --스콧보다 빨리 입사한 사람

select e.empno,
       e.ename,
       e.job,
       e.sal,
       d.deptno,
       d.dname,
       d.loc
  from emp e,
       dept d
 where e.deptno = d.deptno
   and e.deptno = 20
   and e.sal <= (
   select avg(sal)
     from emp
);

select *
  from emp
 where ( deptno,
         sal ) in (
   select deptno,
          max(sal)
     from emp
    group by deptno
);

select *
  from emp_tem etem,
       (
          select d.deptno as deptno_d,
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
            from emp e,
                 dept d,
                 salgrade s,
                 emp e2
           where ( d.deptno = e.deptno (+) )
             and ( e.sal between s.losal (+) and s.hisal (+) )
             and ( e.mgr = e2.empno (+) )
       ) a_table
       where etem.deptno = a_table.deptno_d
    and a_table.deptno_d = 10;


with e10 as (select * from emp where deptno = 10),
d as (select * from dept)
SELECT e10.empno, e10.ename, e10.deptno, d.dname, d.loc
from e10, d
where e10.deptno = d.deptno;


select d.deptno,
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
                 e2.ename as mgr_ename,
                 (select deptno as lv from dept where deptno = d.deptno) --스칼라 셀렉트 문에 
            from emp e,
                 dept d,
                 salgrade s,
                 emp e2
           where ( d.deptno = e.deptno (+) )
             and ( e.sal between s.losal (+) and s.hisal (+) )
             and ( e.mgr = e2.empno (+) );


select empno, ename, job, sal, (select grade from salgrade where e.sal between losal and hisal) as salgrade,
deptno,
(select dname from dept where e. deptno = dept.deptno) as dname
from emp e;