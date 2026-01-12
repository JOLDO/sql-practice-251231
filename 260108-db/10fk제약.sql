create table dept_fk(
    deptno number(2) constraint deptfk_deptno_pk PRIMARY key,
    dname VARCHAR2(14),
    loc VARCHAR2(13)
);

desc dept_fk;

create table emp_fk(
    empno number(4) constraint empfk_empno_pk PRIMARY key,
    ename VARCHAR2(10),
    job VARCHAR2(9),
    mgr NUMBER(4),
    hiredate DATE,
    sal number(7, 2),
    comm NUMBER(7, 2),
    deptno number(2) CONSTRAINT empfk_deptno_fk REFERENCES dept_fk(deptno)
);

desc emp_fk;

insert into emp_fk values(9999, 'TEST_NAME', 'TEST_JOB', null, to_date('2001/01/01', 'YYYY/MM/DD'), 3000, null, 10);
-- fk의 값의 값이 없어서 에러

insert into dept_fk values(10, 'TEST_DNAME', 'TEST_LOC');
-- fk값 추가
select * from dept_fk;

insert into emp_fk values(9999, 'TEST_NAME', 'TEST_JOB', null, to_date('2001/01/01', 'YYYY/MM/DD'), 3000, null, 10);
-- fk의 값이 추가됨
SELECT * from emp_fk;

delete from dept_fk where deptno = 10;
-- 이미 사용중인 fk의 값이라서 삭제 불가

START TRANSACTION;  --트랜잭션 시작
select * from emp for update;   --동시성 막음

select count(empno) from emp;

insert into emp (empno) values (9999); 
commit; --트랜잭션 끝