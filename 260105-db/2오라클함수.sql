select ename,upper(ename) as 대문자이름, lower(ename) as 소문자이름, INITCAP(ename) as 첫글자 from emp; -- upper, lower, initcap
select ename, length(ename) as 길이, lengthb(ename) as 바이트길이 from emp;   -- length, lengthb


SELECT length('한글'), lengthb('한글') from dual; -- UTF8은 한글을 3바이트씩 할당


select 1 + '1' from dual;   -- 사칙연산은 뒤에 문자라도 자동으로 숫자로 변경됨
SELECT 1 + 'A' from dual;  -- 확실한 문자라면 에러가 뜸
SELECT 1 || 'A' from dual;  -- 문자를 붙이려면 ||해주면 됨
SELECT '1' || 'A' from dual;  -- 문자를 붙이려면 ||해주면 됨


SELECT job, substr(job, 1, 2), substr(job, 3, 2), substr(job, 5, length(job) - 4), substr(job, 5), length(substr(job, 5, 10)) from emp;
select job, substr(job, -3, 2) from emp;
select job, substr(job, -length(job)) from emp; -- substr(글자 자르기)


SELECT job, instr(job, 'K') from emp;   
select instr('HELLO, ORACLE!', 'L', 5), instr('HELLO, ORACLE!', 'L', 2, 2), instr('HELLO, ORACLE!', ','), substr('HELLO, ORACLE!', 1, instr('HELLO, ORACLE!', ',') -1) from dual;   -- instr(글자 위치)
SELECT ename, replace(ename, 'S', '!'), replace(ename, 'S') from emp;   -- replace


select rpad(substr(ename, 1, 1), length(ename), '*') from emp;
SELECT '010-1234', '900110-1'
, lpad('12345', 10, '#')
, rpad('12345', 10, '#')
, lpad('12345', 3, '#')
, rpad('12345', 3, '#')
from dual;  -- lpad, rpad


-- 사번:1111 성명:ㅇㅇㅇ
SELECT concat(concat('사번:', empno), concat(' 성명:', ename)) from emp;    -- concat
SELECT '사번:' || empno || ' 성명:' || ename from emp;


SELECT '[' || ' _oracle_ ' || ']', '[' || trim(' _oracle_ ') || ']', '[' || ltrim(' _oracle_ ') || ']', '[' || rtrim(' _oracle_ ') || ']' from dual;    -- trim


select 
    sal / 3,
    round(sal / 3, 2),
    trunc(sal / 3, 2),
    ceil(sal / 3),
    floor(sal / 3),
    mod(empno, 2)
from emp;    -- round, trunc, ceil, floor, mod