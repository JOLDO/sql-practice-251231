create table table_check(
    login_id VARCHAR2(20) CONSTRAINT tblck_loginid_pk PRIMARY KEY,
    login_pwd VARCHAR2(20) constraint tblck_loginpw_ck check (length(login_pwd) > 3),   -- 비밀번호 4자리이상 제약
    tel VARCHAR2(20)
);

desc table_check;

insert into TABLE_CHECK VALUES ('TEST_ID', '123', '010-1111-1111'); -- 비밀번호 3자리라서 에러

insert into TABLE_CHECK VALUES ('TEST_ID123312', '1234', '010-1111-1111');    -- 비밀번호 4자리라서 들어감
SELECT * from TABLE_CHECK;