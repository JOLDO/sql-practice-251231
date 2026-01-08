create table dept_temp2 as select * from dept;
select * from dept_temp2;


update dept_temp2 set loc = 'SEOUL';
SELECT * from dept_temp2;


rollback;
SELECT * from dept_temp2;


update dept_temp2 set dname = 'DATABASE', loc = 'SEOUL' where deptno = 40;
select * from dept_temp2;

update emp_temp set comm = 50 where sal <= 2500;
select * from EMP_TEMP;


update dept_temp2 set loc = 'SEOUL' where deptno in(select deptno from dept_temp2 where deptno in(10, 20));
update dept_temp2 set (dname, loc) = (select dname, loc from dept where deptno = 40) where deptno = 40;
select * from dept_temp2;
ROLLBACK;
create table emp_temp2 as select * from emp;
select * from emp_temp2;