drop table member;

create table member(
id varchar2(50) primary key, --유일한 값을 가지고 null이 되어서는 안된다.
password varchar2(50) not null, --반드시 데이터를 넣어야 한다.
name varchar2(50) not null,
address varchar2(50)
);