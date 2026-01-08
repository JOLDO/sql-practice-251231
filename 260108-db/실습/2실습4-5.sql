-- 세선A: vscode, 세션B: 터미널
-- 0
create table DEPT_HW as select * from dept;


-- 1
update dept_hw set dname = 'DATABASE', loc = 'SEOUL' where deptno = 30;
select * from dept_hw;
rollback;
select * from dept_hw;
select * from dept_hw;

-- 트랜잭션을 끝내지 않으면