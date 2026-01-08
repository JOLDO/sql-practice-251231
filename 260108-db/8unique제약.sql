create table table_unique(
    LOGIN_ID VARCHAR2(20) UNIQUE,
    LOGIN_PWD VARCHAR2(20) NOT NULL,
    TEL VARCHAR2(20)
);
desc table_unique;

insert into TABLE_UNIQUE(login_id, login_pwd, tel) values ('TEST_ID_01', 'PW01', '010-1111-1111');
SELECT * from TABLE_UNIQUE;

insert into TABLE_UNIQUE(login_id, login_pwd, tel) values ('TEST_ID_01', 'PW01', '010-1111-1111');

insert into TABLE_UNIQUE(login_id, login_pwd, tel) values (null, 'PW01', '010-0000-0000');
SELECT * from TABLE_UNIQUE;

update TABLE_UNIQUE set login_id = 'TEST_ID_01'
where LOGIN_id is null;

-- alter table table_unique drop(tel);