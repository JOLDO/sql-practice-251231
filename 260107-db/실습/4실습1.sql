-- 1
select e.job,
       e.ename,
       e.ename,
       e.sal,
       d.deptno,
       d.dname
  from emp e,
       dept d
 where e.deptno = d.deptno
   and e.job = (
   select job
     from emp
    where ename = 'ALLEN'
);

-- 2
select e.empno,
       e.ename,
       d.dname,
       e.hiredate,
       d.loc,
       e.sal,
       s.grade
  from emp e,
       dept d,
       salgrade s
 where e.deptno = d.deptno
   and e.sal between s.losal and s.hisal
   and e.sal > (
   select avg(sal)
     from emp
)
 order by sal desc,
          e.deptno asc;

-- 3
select e.empno,
       e.ename,
       e.job,
       e.deptno,
       d.dname,
       d.loc
  from emp e,
       (
          select job
            from emp
           where deptno = 10
          minus
          select job
            from emp
           where deptno = 30
       ) e1,
       dept d
 where e.job = e1.job
   and e.deptno = d.deptno;

-- 4
select e.empno,
       e.ename,
       e.sal,
       s.grade
  from emp e,
       salgrade s,
       (select max(sal) as salessal from emp where job = 'SALESMAN') a
 where e.sal between s.losal and s.hisal
 and e.sal > a.salessal order by e.empno;
--  단일행

select e.empno,
       e.ename,
       e.sal,
       s.grade
  from emp e,
       salgrade s
       where e.sal between s.losal and s.hisal
       and e.sal > all(select sal from emp where job = 'SALESMAN')
       order by e.empno;
-- 다중행
--all은 and any는 or으로 다중 값이 들어오면 
-- all(2000, 3000, 4000) sal > 2000 and > 3000 and > 4000 이라서 4000(최대값)보다 큰값
-- all(2000, 3000, 4000) sal < 2000 and < 3000 and < 4000 이라서 2000(최소값)보다 작은값
-- any(2000, 3000, 4000) sal > 2000 or > 3000 or > 4000 이라서 2000(최소값)보다 큰값
-- any(2000, 3000, 4000) sal < 2000 or < 3000 or < 4000 이라서 4000(최대값)보다 작은값
-- in(2000, 3000, 4000) sal = 2000 or = 3000 or = 4000 임