-- rdbms
-- 안정성
-- 속도


-- nosql
-- 데이터 구조 자주 바뀔때
-- 속도

-- 시험문제
-- 11번.    rdbms와 nosql(mongo db)의 차이점을 표로 나타내시오. rdbms와 mongodb의 차이 표 검색해서 붙여넣기


-- docker pull mongodb/mongodb-community-server     몽고디비
-- docker run -p 27017:27017 --name mongo-demo -d mongodb/mongodb-community-server:latest -> 
-- 사이트 접속:https://www.mongodb.com/try/download/compass
-- -> 다운로드 및 설치 -> 실행 -> add new connection -> 왼쪽 db 이름이 생기면 옆에 … 왼쪽의 shell누르기 -> 
-- use blog(블로그라는 user) -> 
-- db.createCollection("posts”)(posts라는 테이블 생성) -> 
-- db.posts.insertOne({title:"First1”})(인설트) ->
/*
db.posts.insertOne({
  title: "Post Title 1",
  body: "Body of post.",
  category: "News",
  likes: ["news", "events"],
  date: Date()
})
*/
-- (인설트) -> 좌측 트리의 리프레시 ->블로그 선택 -> 
-- posts 선택 리프레시 하면 인설트 값 확인 가능(여기서 id는 pk라고 보면 될듯) -> 
-- db.posts.find() 전체 찾기 ->db.posts.findOne() 처음꺼 찾기 ->
-- db.posts.find({category: “News”}) 카테고리가 뉴스인거 찾기 ->
-- db.posts.find({category: "News"}, {title: 1, date: true}) 카테고리가 뉴스인거에서 title과 date만 셀렉트(1은 true) ->
-- id는 기본적으로 나오는데 db.posts.find({category: "News"}, {_id: 0, title: 1, date: true})
-- 이렇게 하거나 0을 false로 바꾸면 안나오게 할수 있음 -> 
-- db.posts.find({category: "News"}, {title: 0, date: 0})로 하면 title, date를 제외하고 보여줌 -> 
-- db.posts.updateOne({title: "Post Title 1"}, {$set: { likes: 2}}) 타이틀이 동일한 거에서 라이크 2로 바꿈 -> 
-- db.posts.updateOne({title:"aaaa"}, {$set:{title:"aaaa"}}, { upsert: true }) 
-- 이러면 없으면 인설트 있으면 업데이트 함 -> db.posts.deleteOne({title:"Post Title 5”})이걸로 삭제

-- 시험문제
-- 12번.    mongodb insert