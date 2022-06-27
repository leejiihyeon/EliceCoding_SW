create table MEMBER (
id VARCHAR2(50) PRIMARY key,
password VARCHAR2(50) not null,
name VARCHAR2(50) not null,
address VARCHAR2(50)
);

SELECT * FROM MEMBER;

DROP TABLE MEMBER;

INSERT INTO MEMBER(ID, PASSWORD, NAME, ADDRESS) VALUES ('JAVA', '1234', '손영재', '목동');
INSERT INTO MEMBER(ID, PASSWORD, NAME, ADDRESS) VALUES ('JSP', 'bori', '김영훈', '송도');
INSERT INTO MEMBER(ID, PASSWORD, NAME, ADDRESS) VALUES ('JDBC', 'darong', '이현재', '송도');
INSERT INTO MEMBER(ID, PASSWORD, NAME, ADDRESS) VALUES ('SERVLET', 'gana', '지창민', '청주');

UPDATE MEMBER SET address='청주시 ' WHERE NAME='지창민';

SELECT ID, NAME FROM MEMBER WHERE address='송도';


--수정 : 지창민 회원의 주소를 청주시에서 강남으로 변경하고 패스워드를 gana1로 변경
UPDATE MEMBER SET address='강남', password='gana1' WHERE NAME='지창민';

--삭제 : 이현재 회원의 정보 삭제
DELETE FROM MEMBER WHERE NAME='이현재';

--컬럼 이름 변경
ALTER TABLE MEMBER RENAME COLUMN id TO id2;

--컬럼 추가
ALTER TABLE MEMBER ADD(a varchar2(50));

--컬럼의 자료형
ALTER TABLE MEMBER MODIFY(password number(2));

--컬럼 삭제
ALTER TABLE MEMBER DROP COLUMN  address;


INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
VALUES (113, 'Louis', 'Popp', 'LPOPP', '515.124.4567', SYSDATE, 'AC_ACCOUNT', 6900, NULL, 205, 110);

/*
회원가입 (테이블 명 : shop_member)
id, pwd, name, email, addr, type
판매자 shop_product
구매자
*/

--SHOP_MEMBER
CREATE TABLE SHOP_MEMBER (
id VARCHAR2(20) primary key,
pwd VARCHAR2(20),
name VARCHAR2(20),
email VARCHAR2(50),
addr VARCHAR2(50),
type number
);

SELECT * FROM SHOP_MEMBER;

--판매자
CREATE TABLE SHOP_PRODUCT (
num number primary key,
name VARCHAR2(500) NOT NULL,
quantity number NOT NULL,
price number NOT NULL,
img VARCHAR2(500),
content VARCHAR2(500),
s_id VARCHAR2(20) references shop_member(id) on delete cascade
);

--PRODUCT가 MEMBER을 참조하기 때문에 삭제 하기 전에 오류가 발생한다.
DROP TABLE SHOP_MEMBER;
DROP TABLE SHOP_PRODUCT;

--그러므로 아래와 같은 쿼리로 삭제하여야 한다.
DROP TABLE SHOP_MEMBER CASCADE CONSTRAINTS;
DROP TABLE SHOP_PRODUCT CASCADE CONSTRAINTS; 

--뷰 생성
CREATE VIEW empvu80
AS SELECT employee_id, last_name, salary
FROM employees
WHERE department_id = 80;
--출력 : View EMPVU80이(가) 생성되었습니다.


--뷰 생성
CREATE VIEW salvu50
AS SELECT employee_id ID_NUMBER, last_name NAME,
salary * 12 ANN_SALARY
FROM employees
WHERE department_id = 50;
--출력 : View SALVU50이(가) 생성되었습니다.


--뷰 수정
CREATE OR REPLACE VIEW empvu80
(id_number, name, sal, department_id)
AS SELECT employee_id, first_name || ' ' || last_name,
salary, department_id
FROM employees
WHERE department_id = 80;
--출력 : View EMPVU80이(가) 생성되었습니다.



--복합 뷰 생성
CREATE VIEW dept_sum_vu
(name, minsal, maxsal, avgsal)
AS SELECT d.department_name, MIN(e.salary),
MAX(e.salary), AVG(e.salary)
FROM employees e, departments d
WHERE e.department_id = d.department_id
GROUP BY d.department_name;
--출력 : View DEPT_SUM_VU이(가) 생성되었습니다.


CREATE SEQUENCE A_SEQ; --Sequence A_SEQ이(가) 생성되었습니다.


DROP SEQUENCE A_SEQ; --Sequence A_SEQ이(가) 삭제되었습니다.


CREATE SEQUENCE A_SEQ
START WITH 1
MAXVALUE 100
NOCACHE
NOCYCLE;
--Sequence A_SEQ이(가) 생성되었습니다.

INSERT INTO 테스트 테이블
VALUES (A_seq.NEXTVAL, SYSDATE, '+_+?');


SELECT * FROM A_seq;

DROP SEQUENCE A_SEQ; --Sequence A_SEQ이(가) 삭제되었습니다.




