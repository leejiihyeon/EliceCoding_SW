create table bank(
	accountNumber varchar2(50) primary key,
	accountName varchar2(40) not null,
	balance number not null
);

select * from bank;

drop table bank;

update bank set balance=(balance+1000) where accountName='������';
select sum(balance) from bank where accountName='������';
select avg(balance) from bank where accountName='������';



create table Customer(
	name varchar2(50)primary key,
	addr varchar2(50)not null,
	tel varchar2(50) not null
);

drop table book;


create table book(
	id  varchar2(50)primary key,
    author varchar2(50)not null ,  --����
	title varchar2(50) not null,  --å ����
	publisher varchar2(50) not null,-- ���ǻ� 
	price number not null -- ���� 
);

select * from book;


