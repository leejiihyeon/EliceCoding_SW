create table event (
num number primary key,
id varchar2(20) not null,
email varchar2(40),
pwd varchar2(20) not null
);

create sequence event_seq
increment by 1
start with 1
maxvalue 9999
nocache
nocycle;

drop table board;

create table board (
num number primary key,
pwd number not null,
writer varchar2(20) not null,
w_date date,
content varchar2(500)
);

create sequence seq_board;