create table MEMBER (
id VARCHAR2(50) PRIMARY key,
password VARCHAR2(50) not null,
name VARCHAR2(50) not null,
address VARCHAR2(50)
);

SELECT * FROM MEMBER;

DROP TABLE MEMBER;

INSERT INTO MEMBER(ID, PASSWORD, NAME, ADDRESS) VALUES ('JAVA', '1234', '�տ���', '��');
INSERT INTO MEMBER(ID, PASSWORD, NAME, ADDRESS) VALUES ('JSP', 'bori', '�迵��', '�۵�');
INSERT INTO MEMBER(ID, PASSWORD, NAME, ADDRESS) VALUES ('JDBC', 'darong', '������', '�۵�');
INSERT INTO MEMBER(ID, PASSWORD, NAME, ADDRESS) VALUES ('SERVLET', 'gana', '��â��', 'û��');

UPDATE MEMBER SET address='û�ֽ� ' WHERE NAME='��â��';

SELECT ID, NAME FROM MEMBER WHERE address='�۵�';


--���� : ��â�� ȸ���� �ּҸ� û�ֽÿ��� �������� �����ϰ� �н����带 gana1�� ����
UPDATE MEMBER SET address='����', password='gana1' WHERE NAME='��â��';

--���� : ������ ȸ���� ���� ����
DELETE FROM MEMBER WHERE NAME='������';

--�÷� �̸� ����
ALTER TABLE MEMBER RENAME COLUMN id TO id2;

--�÷� �߰�
ALTER TABLE MEMBER ADD(a varchar2(50));

--�÷��� �ڷ���
ALTER TABLE MEMBER MODIFY(password number(2));

--�÷� ����
ALTER TABLE MEMBER DROP COLUMN  address;


INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
VALUES (113, 'Louis', 'Popp', 'LPOPP', '515.124.4567', SYSDATE, 'AC_ACCOUNT', 6900, NULL, 205, 110);

/*
ȸ������ (���̺� �� : shop_member)
id, pwd, name, email, addr, type
�Ǹ��� shop_product
������
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

--�Ǹ���
CREATE TABLE SHOP_PRODUCT (
num number primary key,
name VARCHAR2(500) NOT NULL,
quantity number NOT NULL,
price number NOT NULL,
img VARCHAR2(500),
content VARCHAR2(500),
s_id VARCHAR2(20) references shop_member(id) on delete cascade
);

--PRODUCT�� MEMBER�� �����ϱ� ������ ���� �ϱ� ���� ������ �߻��Ѵ�.
DROP TABLE SHOP_MEMBER;
DROP TABLE SHOP_PRODUCT;

--�׷��Ƿ� �Ʒ��� ���� ������ �����Ͽ��� �Ѵ�.
DROP TABLE SHOP_MEMBER CASCADE CONSTRAINTS;
DROP TABLE SHOP_PRODUCT CASCADE CONSTRAINTS; 

--�� ����
CREATE VIEW empvu80
AS SELECT employee_id, last_name, salary
FROM employees
WHERE department_id = 80;
--��� : View EMPVU80��(��) �����Ǿ����ϴ�.


--�� ����
CREATE VIEW salvu50
AS SELECT employee_id ID_NUMBER, last_name NAME,
salary * 12 ANN_SALARY
FROM employees
WHERE department_id = 50;
--��� : View SALVU50��(��) �����Ǿ����ϴ�.


--�� ����
CREATE OR REPLACE VIEW empvu80
(id_number, name, sal, department_id)
AS SELECT employee_id, first_name || ' ' || last_name,
salary, department_id
FROM employees
WHERE department_id = 80;
--��� : View EMPVU80��(��) �����Ǿ����ϴ�.



--���� �� ����
CREATE VIEW dept_sum_vu
(name, minsal, maxsal, avgsal)
AS SELECT d.department_name, MIN(e.salary),
MAX(e.salary), AVG(e.salary)
FROM employees e, departments d
WHERE e.department_id = d.department_id
GROUP BY d.department_name;
--��� : View DEPT_SUM_VU��(��) �����Ǿ����ϴ�.


CREATE SEQUENCE A_SEQ; --Sequence A_SEQ��(��) �����Ǿ����ϴ�.


DROP SEQUENCE A_SEQ; --Sequence A_SEQ��(��) �����Ǿ����ϴ�.


CREATE SEQUENCE A_SEQ
START WITH 1
MAXVALUE 100
NOCACHE
NOCYCLE;
--Sequence A_SEQ��(��) �����Ǿ����ϴ�.

INSERT INTO �׽�Ʈ ���̺�
VALUES (A_seq.NEXTVAL, SYSDATE, '+_+?');


SELECT * FROM A_seq;

DROP SEQUENCE A_SEQ; --Sequence A_SEQ��(��) �����Ǿ����ϴ�.




