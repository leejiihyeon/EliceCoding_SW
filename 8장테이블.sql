#8장 실습
USE EMPLOYEESDB;

/*CREATE TABLE 테이블명 (
   컬럼명1 타입 [제약조건],
   컬럼명2 ..... ,
   ....      ,
   제약조건 추가
);*/

CREATE TABLE TESTTBL(NUM INT);
SELECT * FROM TESTTBL;


CREATE TABLE TESTTBL2(
	NUMCOL1  INT, 
    NUMCOL2  DECIMAL(8,2),
    STRCOL1 CHAR(10),
    STRCOL2 VARCHAR(10),
    DATECOL1 DATE,
    TIMECOL1 TIME,
    DATECOL2 DATETIME);
    
INSERT INTO TESTTBL2 VALUES (1, 2, 'MYSQL','MYSQL', '2002-12-12', '12:34:56', '2002-12-12 12:34:56');
SELECT * FROM TESTTBL2;
DESC TESTTBL2;

#다른 테이블의 내용을 복사하면서 테이블 생성-SUBQUERY
CREATE TABLE TESTTBL3 (SELECT * FROM TESTTBL2);
DESC TESTTBL3;

#다른 테이블의 내용을 복사(이미 생성된 테이블에) -SUBQUERY
INSERT INTO TESTTBL3 (SELECT * FROM TESTTBL2);
DESC TESTTBL3;

# 생성된 테이블에 1개 컬럼 추가
alter table testtbl2 add addcol char(5) ;
DESC TESTTBL2;

# 존재하는 컬럼 (이름, 타입) 수정
alter table testtbl2 rename column addcol to updatecol ;
DESC TESTTBL2;
alter table testtbl2 modify column updatecol int;
DESC TESTTBL2;
alter table testtbl2 change column updatecol changecol date;
DESC TESTTBL2;

# 존재하는 컬럼 삭제
alter table testtbl2 drop column changecol;
DESC TESTTBL2;

# 테이블 삭제
drop table testtbl2; # 데이터삭제+테이블삭제
truncate table testtbl2; #모든데이터삭제(o)+테이블삭제(x)
delete from testtbl2;# 모든데이터삭제(o)+테이블삭제(x)
delete from testtbl2 where 삭제할조건식;# 조건만족데이터삭제(o)+테이블삭제(x)
#create /alter / drop

/*데이터 현실세계 데이터 모음 = 데이터 모델링 
제약조건 - constraint
학생 학번 중복x, not null 표현
김길동 학생은 나동호 교수한테 수업받다다 다른 테이블 존재하는 데이터 참조 
unique 제약조건 - 중복x
not null 제약조건 - null값x
primary key 제약조건 - unique + not null
foreign key 제약조건 - 다른 테이블 존재 데이터만 참조
check 제약조건 - "사용자 정의" 
default 제약조건
auto increment 
*/

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
insert into students values(null, '최학생', 'choi@a.com', '01056781234', '컴공', '2022-01-01', 'uk');
select * from students; 
select * from countries;
 

/*create table students(
 id int primary key auto_increment , 
 name varchar(10) not null,
 email varchar(20) unique, 
 phone varchar(11) check(phone like '010%'),
 major varchar(20),
 regdate date default (current_date),
 nation char(2) ,
 constraint foreign key(nation) references countries(country_id) 
 on delete cascade
 on update cascade 
 );
 countries(country_id)-부모테이블.  uk 국가 삭제/수정한다면  자식 같이 삭제/수정
 students(nation)-자식테이블. uk 참조 레코드 존재할 때
 
 
 */ 
 
 




alter table testtbl add constraint primary key(num) ;
alter table testtbl modify column num int auto_increment ;
insert into testtbl values(null);
select * from testtbl;










