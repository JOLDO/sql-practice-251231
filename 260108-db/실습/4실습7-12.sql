create table dept_const (
    deptno number(2) CONSTRAINT DEPTCONST_DEPTNO_PK PRIMARY KEY,
    dname VARCHAR2(14) CONSTRAINT DEPTCONST_DEPTNO_UNQ UNIQUE,
    loc VARCHAR2(13) CONSTRAINT DEPTCONST_LOC_NN NOT NULL
);

create table emp_const (
    empno number(4) CONSTRAINT EMPCONST_EMPNO_PK PRIMARY KEY,
    ename VARCHAR2(10) CONSTRAINT EMPCONST_ENAME_NN NOT NULL,
    job VARCHAR2(9),
    tel VARCHAR2(20) CONSTRAINT EMPCONST_TEL_UNQ UNIQUE,
    hiredate DATE,
    sal NUMBER(7, 2) CONSTRAINT EMPCONST_SAL_CHK CHECK (SAL BETWEEN 1000 AND 9999),
    comm NUMBER(7, 2),
    deptno NUMBER(2) CONSTRAINT EMPCONST_DEPTNO_FK REFERENCES dept_const (deptno)
);

create view vm_const as (
select table_name, constraint_name, constraint_type from USER_CONSTRAINTS where table_name = 'DEPT_CONST' OR table_name = 'EMP_CONST');