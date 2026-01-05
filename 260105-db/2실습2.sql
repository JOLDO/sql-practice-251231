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

SELECT length('한글'), lengthb('한글') from dual; -- UTF8은 한글을 3바이트씩 할당

-- emp 테이블, 사원명 중에 's'가 포함된 사원들을 조회 하시오.
SELECT * from emp where lower(ename) like '%s%';    -- like, not, or는 리소스 많이 먹음
SELECT * from emp where ename like upper('%s%');
SELECT * from emp where instr(ename, upper('s')) != 0;
SELECT instr(ename, upper('s')) from emp where instr(ename, upper('s')) != 0;  -- 검증

-- 010-1234-5678 -> 01012345678
SELECT '010-1234-5678', replace('010-1234-5678', '-') as "전화번호" from dual;

-- '01012345678' -> '1234', '5678'
SELECT substr('01012345678', 4, 4) as "앞자리", substr('01012345678', -4) as "뒷자리" from dual;
SELECT substr('01012345678', instr('01012345678', '010') + 3, 4) as "앞자리", substr('01012345678', -4) as "뒷자리" from dual;

-- 010-1234-5678 -> '1234', '5678'
SELECT substr('010-1234-5678', instr('010-1234-5678', '-', 1, 1) + 1, 4) as "앞자리", substr('010-1234-5678', instr('010-1234-5678', '-', 1, 2) + 1, 4) as "뒷자리" from dual; -- 이런식으로 쪼개도 됨

SELECT '010-1234-****', '900110-1******'
, rpad('010-1234-', 13, '*')
, rpad('900110-1', 14, '*')
from dual;

SELECT '010-1234-5678', '900110-1111111'
, rpad(substr('010-1234-5678', 1, instr('010-1234-5678', '-', 1, 2)), 13, '*')
, rpad(substr('900110-1111111', 1, instr('900110-1111111', '-', 1, 1) + 1), 14, '*')
, rpad(substr('010-1234-5678', 1, instr('010-1234-5678', '-', 1, 2)), length('010-1234-5678'), '*')
from dual;