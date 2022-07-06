--5/24

create table p_PRODUCT (
pno number primary key not null,
pname varchar2(20) not null,
pmaker varchar2(20) not null,
pprice varchar2(20) not null,
pdetail varchar2(2000)
);



create sequence s_pno nocache
start with 1
increment by 1;

drop table p_PRODUCT;

SELECT * FROM p_PRODUCT;
