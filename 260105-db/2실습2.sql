-- emp 테이블에서 scott이란 문자를 변경하지 않고 조회하시오.
SELECT * from emp where lower(ename) = 'scott';

-- emp 테이블에서 sc이란 문자가 포함된 데이터를 조회하시오.(단, 문자를 변경하지 않고)
SELECT * from emp where lower(ename) like '%sc%';
SELECT * from emp where ename like upper('%sc%');
SELECT upper('%sc%') from dual; --dual은 문법 확인용 테이블

-- emp 테이블에서 이름은 소문자 직책은 대문자로 조회하시오.
SELECT lower(ename) as ENAME, upper(job) as JOB from emp;

-- emp 테이블에서 이름과 이름의 길이를 표시하되, 단 이름의 길이가 5이하인 것만 표시하시오.
SELECT ename as 이름, length(ename) as "이름의 길이" from emp where length(ename) <= 5;