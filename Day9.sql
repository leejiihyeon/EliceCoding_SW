drop table member;

create table member(
id varchar2(50) primary key, --������ ���� ������ null�� �Ǿ�� �ȵȴ�.
password varchar2(50) not null, --�ݵ�� �����͸� �־�� �Ѵ�.
name varchar2(50) not null,
address varchar2(50)
);