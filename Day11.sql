create sequence addr_seq;

create table addr (
num number primary key,
name varchar2(10) not null,
tel varchar2(20) not null,
address varchar2(30) not null,
Postal number not null
);

SELECT * FROM addr;

drop table book;

create sequence Book_seq;

create table book (
num number primary key,
author varchar2(50) not null, --저자
title varchar2(50) not null, --책 제목
publisher varchar2(50) not null, --출판사
content varchar2(500) not null --상세정보
);

SELECT * FROM book;