select ename,upper(ename) as 대문자이름, lower(ename) as 소문자이름, INITCAP(ename) as 첫글자 from emp; -- upper, lower, initcap
select ename, length(ename) as 길이, lengthb(ename) as 바이트길이 from emp;   -- length, lengthb
select 1 + '1' from dual;   -- 사칙연산은 뒤에 문자라도 자동으로 숫자로 변경됨
SELECT 1 + 'A' from dual;  -- 확실한 문자라면 에러가 뜸
SELECT 1 || 'A' from dual;  -- 문자를 붙이려면 ||해주면 됨
SELECT '1' || 'A' from dual;  -- 문자를 붙이려면 ||해주면 됨