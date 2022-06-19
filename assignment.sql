drop table board2;

create table board2 (
id varchar2(50) primary key,
password varchar2(20) not null,
name varchar2(20) not null,
address varchar2(20) not null
);

create sequence seq_board2;

SELECT * FROM board2;