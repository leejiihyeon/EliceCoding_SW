drop table member;

create table member(
id varchar2(50) primary key,
name varchar2(50) not null,
address varchar2(50)
);

insert into member(id, name, address) values('java', '�տ���', '��õ��');
insert into member(id, name, address) values('JSP', '������', '������');
insert into member(id, name, address) values('Spring', '�輱��', '�д籸');

commit;

select * from member;


