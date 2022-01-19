use shopdb;

insert into membertbl values ('id1','이름1','주소1');
insert into membertbl values ('id2','이름2','주소2');
insert into membertbl values ('id3','이름3','주소3');

SELECT * FROM shopdb.membertbl;

insert into producttbl values ('상품1','10000','2020-12-24', '제조사1', 20);
insert into producttbl values ('상품2','20000','1999-12-24', '제조사2', 10);
insert into producttbl values ('상품3','30000','2019-12-24', '제조사3', 30);
insert into producttbl values ('상품4','40000','2021-12-24', '제조사2', 40);

SELECT * FROM producttbl;