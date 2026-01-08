-- 1
create table EMP_DDL_HW (
    "EMPNO" number(4),
    "ENAME" VARCHAR2(10),
    "JOB" VARCHAR2(9),
    "MGR" NUMBER(4),
    "HIREDATE" DATE,
    "SAL" NUMBER(7, 2),
    "COMM" NUMBER(7, 2),
    "DEPTNO" NUMBER(2)
);


-- 2
alter table EMP_DDL_HW add bigo VARCHAR2(20);


-- 3
alter table emp_ddl_hw MODIFY bigo VARCHAR2(30);


-- 4
alter table emp_ddl_hw rename COLUMN bigo to remark;


-- 5
insert into emp_ddl_hw values(1111, 'aaa', 'aa', 111, To_date('26-01-08', 'YY-MM-DD'), 111.11, 11.1, 99, 'aaaa');


-- 6
drop table emp_ddl_hw;
desc emp_ddl_hw;