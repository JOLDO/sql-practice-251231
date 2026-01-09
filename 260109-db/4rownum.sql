-- 인덱스 뷰는 from절 서브쿼리
select
    ROWNUM,
    e.*
from emp e
where rownum BETWEEN 1 and 5
order by sal;
-- rownum은 로우에 숫자 붙이는 거(갯수로 자르고 싶을떼
-- sal로 정렬하면 rownum의 숫자가꼬임

SELECT rownum, t1.* from (SELECT e.* from emp e order by sal) t1 where rownum BETWEEN 1 and 5; 
-- 이렇게 하면 정렬된것에 rownum이 붙음


select e.* from emp e order by sal fetch next 5 rows only;
-- 12버전 이상부터 사용 가능

select * from (select rownum as rn, t1.* from (select e.* from emp e order by sal) t1) t2 where rn = 5;  
-- 로우넘은 약어 함수라고 생각 하고 기본이 1이라서 그럼 서브쿼리로 넣어서 쓴다면 rn이 이미 rownum된 이후라서 됨