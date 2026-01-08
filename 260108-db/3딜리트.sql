delete from emp_temp2 where job = 'MANAGER';
select * from emp_temp2;
rollback;


delete from emp_temp2 where sal >= 3000;
select * from emp_temp2;
ROLLBACK;


