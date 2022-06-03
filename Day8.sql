create table bank(
	accountNumber varchar2(50) primary key,
	accountName varchar2(40) not null,
	balance number not null
);

select * from bank;

drop table bank;

update bank set balance=(balance+1000) where accountName='이현재';
select sum(balance) from bank where accountName='이현재';
select avg(balance) from bank where accountName='이현재';



create table Customer(
	name varchar2(50)primary key,
	addr varchar2(50)not null,
	tel varchar2(50) not null
);

drop table book;


create table book(
	id  varchar2(50)primary key,
    author varchar2(50)not null ,  --저자
	title varchar2(50) not null,  --책 제목
	publisher varchar2(50) not null,-- 출판사 
	price number not null -- 가격 
);

select * from book;


