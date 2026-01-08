update dept_temp set loc = 'BUSAN' where deptno = 30;
select * from dept_temp;
-- 이후 터미널에서 똑같이 업데이트 하면 터미널에서는 sql>이라는 글자(프롬프트)가 안나오고 그냥 빈칸으로 있다. 
commit;
-- 이후에는 터미널에서 프롬프트가 나오면서 업데이트가 완료됨
update dept_temp set loc = 'BUSAN1' where deptno = 30;
-- 터미널에서 커밋 안했다면 다른 세션인 vscode(왼쪽아래에서 프로그래스바가 돈다.)에서도 마찬가지로 lock이 걸려서 업데이트 안됨
commit;