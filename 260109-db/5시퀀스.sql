insert into emp (empno) values ((select max(empno) from emp) + 1);
select * from emp;
-- 이렇게 하나씩 늘릴수도 있지만 시퀀스를 쓰도록

create table dept_sequence as select * from dept where 1<> 1;
select * from DEPT_SEQUENCE;

create SEQUENCE SEQ_DEPT_SEQUENCE
INCREMENT by 10
start with 10
MAXVALUE 90
minvalue 0
NOCYCLE
CACHE 2;

select * from USER_SEQUENCES;

insert into DEPT_SEQUENCE (deptno, dname, loc) values (SEQ_DEPT_SEQUENCE.nextval, 'DATABASE', 'SEOUL');
select * from DEPT_SEQUENCE order by deptno;

select SEQ_DEPT_SEQUENCE.currval from dual;

insert into DEPT_SEQUENCE (deptno, dname, loc) values (SEQ_DEPT_SEQUENCE.nextval, 'DATABASE', 'SEOUL');
select * from DEPT_SEQUENCE order by deptno;

alter SEQUENCE SEQ_DEPT_SEQUENCE
INCREMENT by 3
MAXVALUE 99
cycle;

select * from USER_SEQUENCES;

insert into DEPT_SEQUENCE (deptno, dname, loc) values (SEQ_DEPT_SEQUENCE.nextval, 'DATABASE', 'SEOUL');
select * from DEPT_SEQUENCE order by deptno;

insert into DEPT_SEQUENCE (deptno, dname, loc) values (SEQ_DEPT_SEQUENCE.nextval, 'DATABASE', 'SEOUL');
select * from DEPT_SEQUENCE order by deptno;

drop SEQUENCE SEQ_DEPT_SEQUENCE;
select * from USER_SEQUENCES;