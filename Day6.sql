drop table book;

--DTO DBTable
create table book(
    id varchar2(50) primary key,
    author varchar2(50) not null,  --����
	title varchar2(50) not null,  --å ����
	publisher varchar2(50) not null,-- ���ǻ� 
	price number not null -- ���� 
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