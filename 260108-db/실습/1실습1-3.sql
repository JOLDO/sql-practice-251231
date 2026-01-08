-- 0
create table CHAP10HW_EMP as select * from emp;
create table CHAP10HW_DEPT as select * from dept;
create table CHAP10HW_SALGRADE as select * from salgrade;
select * from CHAP10HW_EMP;
select * from CHAP10HW_DEPT;
select * from CHAP10HW_SALGRADE;


-- 1
insert into CHAP10HW_DEPT values (50, 'ORACLE', 'BUSAN');
insert into CHAP10HW_DEPT values (60, 'SQL', 'ILSAN');
insert into CHAP10HW_DEPT values (70, 'SELECT', 'INCHEON');
insert into CHAP10HW_DEPT values (80, 'DML', 'BUNDANG');
select * from CHAP10HW_DEPT;


-- 2
insert into CHAP10HW_EMP values (7201, 'TEST_USER1', 'MANAGER', 7788, TO_DATE('16/01/02', 'YY/MM/DD'), 4500, NULL, 50);
insert into CHAP10HW_EMP values (7202, 'TEST_USER2', 'CLERK', 7201, TO_DATE('16/02/21', 'YY/MM/DD'), 1800, NULL, 50);
insert into CHAP10HW_EMP values (7203, 'TEST_USER3', 'ANALYST', 7201, TO_DATE('16/04/11', 'YY/MM/DD'), 3400, NULL, 60);
insert into CHAP10HW_EMP values (7204, 'TEST_USER4', 'SALESMAN', 7201, TO_DATE('16/05/31', 'YY/MM/DD'), 2700, NULL, 60);
insert into CHAP10HW_EMP values (7205, 'TEST_USER5', 'CLERK', 7201, TO_DATE('16/07/20', 'YY/MM/DD'), 2600, NULL, 70);
insert into CHAP10HW_EMP values (7206, 'TEST_USER6', 'CLERK', 7201, TO_DATE('16/09/08', 'YY/MM/DD'), 2600, NULL, 70);
insert into CHAP10HW_EMP values (7207, 'TEST_USER7', 'LECTURER', 7201, TO_DATE('16/10/28', 'YY/MM/DD'), 2300, NULL, 80);
insert into CHAP10HW_EMP values (7208, 'TEST_USER8', 'STUDENT', 7201, TO_DATE('16/03/09', 'YY/MM/DD'), 1200, NULL, 80);
select * from CHAP10HW_EMP;


-- 3
update CHAP10HW_EMP set deptno = 70 where sal > (select avg(e.sal) from CHAP10HW_EMP e where deptno = 50);
select * from CHAP10HW_EMP order by deptno;


-- 4
update CHAP10HW_EMP set deptno = 80 where hiredate > (select min(e.hiredate) from CHAP10HW_EMP e where deptno = 60);
select * from CHAP10HW_EMP;


-- 5
DELETE from CHAP10HW_EMP where empno in (select e.empno from CHAP10HW_EMP e, CHAP10HW_SALGRADE s where e.sal between s.losal and s.hisal and s.grade = 5);
select * from CHAP10HW_EMP;