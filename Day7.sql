create table school(
    id varchar2(20) primary key,
    name varchar2(20) not null,  
	tel varchar2(40),
	addr varchar2(50),
    type number not null,
    etc varchar2(30) 
);

drop table school;

SELECT * FROM school;


create table bank(
    accountNumber varchar2(50) primary key,
    accountName varchar2(40) not null,  
	valance number not null 
);

