create table table_default(
    login_id VARCHAR2(20) CONSTRAINT tblck2_loginid_pk PRIMARY KEY,
    login_pwd VARCHAR2(20) default '1234',
    tel VARCHAR2(20)
);

insert into TABLE_DEFAULT VALUES('TEST_ID', null, '010-1111-1111'); -- null을 명시적으로 넣어주면 null이 들어가고
insert into TABLE_DEFAULT(login_id, tel) VALUES('TEST_ID2', '010-1111-1111');   --암시적으로 비우면 디폴트값이 들어감
select * from TABLE_DEFAULT;