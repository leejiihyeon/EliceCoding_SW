drop table member;

create table member(
id varchar2(50) primary key,
name varchar2(50) not null,
address varchar2(50)
);

insert into member(id, name, address) values('java', '손영재', '양천구');
insert into member(id, name, address) values('JSP', '이현재', '연수구');
insert into member(id, name, address) values('Spring', '김선우', '분당구');

commit;

select * from member;


