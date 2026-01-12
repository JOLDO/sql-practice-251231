CREATE TABLE dept (
    DEPTNO VARCHAR2(6) CONSTRAINT tbldept_deptno_pk PRIMARY KEY,
    DNAME VARCHAR2(10) NOT NULL UNIQUE,
    AREA VARCHAR2(10)
);

desc dept;

insert into dept (deptno, dname) values (101, '영업부');
insert into dept (deptno, dname) values (102, '총무부');
insert into dept (deptno, dname) values (103, '기획부');
insert into dept (deptno, dname) values (104, '홍보부');

select * from dept;

CREATE TABLE emp (
    empno NUMBER CONSTRAINT tblemp_emp_pk PRIMARY KEY,
    name VARCHAR2(10) NOT NULL UNIQUE,
    deptno VARCHAR2(6) CONSTRAINT tblemp_deptno_fk REFERENCES dept(deptno),
    position VARCHAR2(10) constraint tblemp_position_ck check (POSITION IN('사원', '대리', '과장', '부장')),
    pay NUMBER NOT NULL,
    pempno NUMBER
);

desc emp;

insert into emp values(1001, '홍길돌', 101, '부장', 450, null);
insert into emp values(1002, '김연아', 102, '부장', 400, null);
insert into emp values(1003, '박지성', 101, '과장', 350, 1001);
insert into emp values(1004, '김태근', 103, '과장', 410, null);
insert into emp values(1005, '서찬수', 101, '대리', 300, 1003);
insert into emp values(1006, '김수현', 103, '대리', 400, 1004);
insert into emp values(1007, '정동민', 102, '대리', 320, 1002);
insert into emp values(1008, '이성규', 103, '사원', 380, 1007);
insert into emp values(1009, '임진영', 102, '사원', 250, 1006);
insert into emp values(1010, '서진수', 101, '사원', 200, 1005);

select * from emp;


insert into emp values(1011, '이순신', 104, '부장', 500, null);
select * from emp;



update dept set area = '서울' where dname = '영업부';
update dept set area = '부산' where dname != '영업부';
select * from dept;
commit;


select a.empno 
from emp a, dept d 
where a.deptno = d.deptno and d.dname = '홍보부'; -- 홍보부 데이터 출력

delete from emp 
where empno = 
    (select a.empno from emp a, dept d where a.deptno = d.deptno and d.dname = '홍보부');

select * from emp;
commit;


select * 
from emp a, dept d 
where a.deptno = d.deptno and d.dname in('영업부', '총무부') 
order by a.name, d.dname, a.position;



select a.name, b.name as pname from emp a, emp b where a.pempno = b.empno(+);
select * from emp;
select * from dept;

select b from emp a, (select deptno, dname, avg(pay) from emp group by deptno having avg(pay) >= 350) b where a.deptno = b.deptno;
select deptno, avg(pay) from emp group by deptno having avg(pay) >= 350;

select b.dname, avg(a.pay) 
from emp a, dept b 
where a.deptno = b.deptno 
group by b.dname 
having avg(a.pay) > = 350;

select * from dept;

select a.name ,b.dname, a.pay 
from emp a, dept b
where a.deptno = b.deptno 
    and pay in (select max(pay) 
from emp 
group by deptno);




select a.name, b.dname 
from emp a, dept b 
where a.deptno = b.deptno 
    and a.deptno = (select deptno from emp where name = '이성규');


select name, position, pay 
from emp 
where pay > (select min(pay) from emp where position = '과장');


select * from emp;
-- decode
select name, pay,
decode(ceil(pay / 100),
    0, pay * 0.05,
    1, pay * 0.05,
    2, pay * 0.05,
    3, pay * 0.1,
    4, pay * 0.15,
    pay * 0.2) as tax
from emp;

-- 케이스
select name, pay,
case 
    when pay between 0 and 200 then pay * 0.05 
    when pay between 201 and 300 then pay * 0.1
    when pay between 301 and 400 then pay * 0.15
    else pay * 0.2
    end as tax
from emp;