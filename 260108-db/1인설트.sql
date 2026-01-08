insert into dept_temp (deptno, dname, loc) values (60, 'NETWORK');  -- value수 부족
insert into dept_temp (deptno, dname, loc) values (60, 'NETWORK', 'BUSAN', 'WRONG');    -- value수 초과
insert into dept_temp (deptno, dname, loc) values ('WRONG', 'NETWORK', 'BUSAN');    -- 자료형
insert into dept_temp (deptno, dname, loc) values (600, 'NETWORK', 'BUSAN');    -- 숫자 자릿수 초과


insert into DEPT_TEMP (deptno, dname, loc) values (70, 'WEB', NULL);
select * from dept_temp;

insert into dept_temp (deptno, dname, loc) values (80, 'MOBILE', '');
select * from dept_temp;

insert into dept_temp (deptno, loc) values (90, 'INCHEON');
select * from dept_temp;


create table emp_temp as select * from emp where 1 <> 1;    -- 테이블 틀만 생성할때
select * from emp_temp;

insert into emp_temp values (2111, '이순신', 'MANAGER', 9999, to_date('10/01/1990', 'DD/MM/YYYY'), 4000, NULL, 20);
SELECT * from emp_temp;

insert into emp_temp (empno, ename, job, mgr, hiredate, sal, comm, deptno) VALUES
(3111, '심청이', 'MANAGER', 9999, SYSDATE, 4000, NULL, 30);
select * from emp_temp;

insert into emp_temp (empno, ename, job, mgr, hiredate, sal, comm, deptno)
SELECT e.empno, e.ename, e.job, e.mgr, e.hiredate, e.sal, e.comm, e.deptno from emp e, SALGRADE s where e.sal between s.losal and s.hisal and s.grade = 1;
select * from emp_temp; -- 비등가 조인해서 1등급의 봉급인 사람 찾아서 추가(여기서 values 없이 괄호 없이 서브쿼리 넣어도 된다는게 중요.)


