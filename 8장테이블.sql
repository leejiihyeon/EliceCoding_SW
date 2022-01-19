#8장 실습
USE EMPLOYEESDB;

/* CREATE TABLE 테이블명(
	컬럼명1 타입 제약조건,
    컬럼명2 .... ,
    ....	,
    제약조건 추가
);*/

CREATE TABLE TESTTBL(NUM INT);
SELECT * FROM TESTTBL;

CREATE TABLE TESTTBL2(
	NUMCOL1 INT,
    NUMCOL2 DECIMAL(8,2)
    STRCOL1 CHAR(10),
    STRCOL2 VARCHAR(10),
    DATECOL1 DATE,
    TIMECOL1 TIME,
    DATECOL2 DATETIME);
    
INSERT INTO TESTTBL2 VALUES (1, 2, 'MYSQL', 'MYSQL', '2002-12-12', '12:34:56', '2002-12-12 12:34:56');
SELECT * FROM TESTTBL2;
DESC TESTTBL2;

#다른 테이블의 내용을 복사하면서 테이블 생성 - SUBQUERY
CREATE TABLE TESTTBL3 (SELECT * FROM TESTTBL2);
DESC TETTBL3;

# 생성된 테이블에 1개 컬럼 추가
alter table testtbl2 add addcol char(5) ;
DESC TESTTBL2;

# 존재하는 컬럼 (이름, 타입) 수정
alter table testtbl2 rename column addcol to updatecol ;
DESC TESTTBL2;
alter table testtbl2 modify column updatecol int;

# 제약조건 설정(정의) 테이블(create시)
create table students(
 id int primary key auto_increment , 
 name varchar(10) not null,
 email varchar(20) unique, 
 phone varchar(11) check(phone like '010%'),
 major varchar(20),
 regdate date default (current_date),
 nation char(2) ,
 constraint foreign key(nation) references countries(country_id) 
 );
 
 desc students;
 #show keys from students;
 
 #제약조건 효력 발생-dml
 insert into students values(null, '이학생', 'lee@a.com', '01012345678', '컴공', default, 'uk');
 select * from students;
 #오류 시작
 insert into students values(1, '이학생', 'lee@a.com', '01012345678', '컴공', default, 'uk');
 insert into students values(null, null, 'lee@a.com', '01012345678', '컴공', default, 'uk');
 insert into students values(null, '김학생', 'lee@a.com', '01012345678', '컴공', default, 'uk');
insert into students values(null, '김학생', 'kim@a.com', '01012345678', '컴공', default , 'ko');
 #오류 종료
 select * from countries;


