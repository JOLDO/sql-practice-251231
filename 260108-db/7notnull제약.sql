create table table_notnull(
    LOGIN_ID VARCHAR2(20) NOT NULL,
    LOGIN_PWD VARCHAR2(20) NOT NULL,
    TEL VARCHAR2(20)
);
desc table_notnull;

insert into TABLE_NOTNULL (login_id, login_pwd, tel) VALUES ( 'TEST_ID_01', NULL, '010-1111-1111');

insert into TABLE_NOTNULL (login_id, login_pwd, tel) VALUES ( 'TEST_ID_01', 'AAA', NULL);

ALTER TABLE TABLE_NOTNULL MODIFY(TEL NOT NULL); -- 이미 널이 들어간 이후에 바꾸려 하면 에러

insert into TABLE_NOTNULL (login_id, login_pwd, tel) VALUES ( 'TEST_ID_01', 'AAA', NULL);

SELECT * FROM TABLE_NOTNULL;