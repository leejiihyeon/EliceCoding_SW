drop table book;

--DTO DBTable
create table book(
    id varchar2(50) primary key,
    author varchar2(50) not null,  --저자
	title varchar2(50) not null,  --책 제목
	publisher varchar2(50) not null,-- 출판사 
	price number not null -- 가격 
);

SELECT * FROM book;


--Board Table
create table Board(
    id varchar2(50) primary key,
    title varchar2(50) not null,
	contents varchar2(50) not null
);

drop table Board;

SELECT * FROM Board;