CREATE SEQUENCE A_SEQ
INCREMENT BY 1
START WITH 1
MAXVALUE 100
nocache
nocycle;

CREATE TABLE A(
NUM NUMBER,
email varchar2(40)
);

SELECT * FROM A;

--주문
CREATE TABLE order1(
cus varchar2(20),
da date,
p_id number,
num number
);

drop table Member;

create sequence Member_seq;

create table Member(
num number,
name varchar2(50) primary key,
addr varchar2(50) not null,
tel varchar2(50) not null
);

SELECT * FROM Member;


create sequence Book_seq;


create table book(
    num  number,
    author varchar2(50) primary key,  --저자
	title varchar2(50) not null,  --책 제목
	publisher varchar2(50) not null,-- 출판사 
	price number not null -- 가격 
);

SELECT * FROM book;

drop table Member;
drop sequence Member_seq;


create table Member(
id varchar2(50) primary key,
name varchar2(50) not null,
tel varchar2(50) not null,
addr varchar2(50) not null
);

SELECT * FROM Member;

drop table book;


create table book(
    id varchar2(50) primary key,
    author varchar2(50) not null,  --저자
	title varchar2(50) not null,  --책 제목
	publisher varchar2(50) not null,-- 출판사 
	price number not null -- 가격 
);


drop table member2; 
drop table board;
drop table product; 

drop sequence seq_board;
drop sequence seq_product;


create table member2(
id varchar2(20) primary key,
pwd varchar2(20) not null,
name varchar2(20),
email varchar2(40)
);


SELECT * FROM member2;



create table board(
num number primary key,
writer varchar2(20) not null,
pwd varchar2(20),
title varchar2(20),
board_date date,
content varchar2(50)
);


create sequence seq_board;

create table product(
num number primary key,
name varchar2(20) not null,
price number not null,
quantity number not null,
id varchar2(20) not null
);

create sequence seq_product;

