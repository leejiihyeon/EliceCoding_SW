/*
������ ���̽� : ������ �������� �����̰� ������ �˻�, ����, �������� �� �� �ִ�. 

������ ���̽� ���� �ý��� : ����� ���������� ���� �����ϴ� �������� ������ �����ͺ��̽��� �ϸ� 
�̷��� ����� ���� �����͸� ���ϰ� �����ϰ� ȿ�������� �����ϰ� �˻��� �� �ִ� ȯ���� �������ִ� �ý��� ����Ʈ��� �����ͺ��̽� �����ý���(DBMS)��� �Ѵ�.  
DBMS�� �����ͺ��̽��� �����ϱ� ���� �ʿ��� ���� ������ �������� �߰�, ����, ���� �˻� ���� ����� ���뼺�� ����Ʈ���� ��Ű�� �̴�.
������ ���̽��� ���� �� �����ؾ� �ϴ� ����̳� ����� �����ý��� ���࿡ �ݵ�� �ʿ��� ����Ʈ�����̴�. 
DBMS��  �����ͺ��̽����� �����͸� �����ϴ� ���ϰ����ڰ� ������ ���� �ִ�. 

ROWID : ���̺��� Ư�� ���ڵ�� �����ϰ� �����ϱ� ���� ������ �ּҰ�

ROWNUM : ����Ŭ ���������� ó���ϱ� ���� �� ���ڵ忡 ���� �Ϸù�ȣ

-������ �����ͺ��̽� ���� �ý����� ���� �Ϲ����� ������ DBMS�̴�.
-������ �����ϱ� ���� ���̺� �̿��Ѵ�. (2���������� ǥó�� ��� ���� ����)  

-��Ÿ�����Ϳ� ���ؼ� ������ ��ųʸ���� �Ҹ��� ���� �����Ѵ�.

��Ÿ������ : ���̺��� ��� �÷� ������ ��������

-����ڿ� ������ �����ͺ��̽��� ������ �ִ� ǥ�� �˻��� SQL�̶� �Ѵ�. 

-DB���� �����͸� ���� ��ȸ�Ҷ� ����Ѵ�.

-DQL - SELECT(�����Ͱ˻� �� ���) 

���������Ǿ�(DDL) - CREATE(���̺� ����), ALTER(���̺� ����), DROP(���̺� ����), RENAME(���̺� �̸� ����)
 
������(DML) ���۾� :
DML(Data Manipulation Language)
����� �����͸� �Է�, ����, ����(INSERT,UPDATE,DELETE)�ϴ� SQL��ɾ��̴�. 
�����ͺ��̽��� ���������� �ݿ����� ���� ������ ���� ��ɾ���� TRANSACTION�̶�� �ϸ� ����Ŭ������ �̸� �ϳ��� ���� �۾� ������ ����Ѵ�.

DCL-GRANT,REVOKE
(ORACLE �����ͺ��̽��� �� �������� �׼��� ������ �����ϰų� �����Ѵ�.)

TCL- COMMIT,ROLLBACK, SAVEPOINT
*/

SELECT * FROM employees;

--���̺� ��ųʸ�
SELECT * FROM tab


--hr


SELECT * FROM departments;

--���̺� ����
desc employees;


--NOT NULL : NULL���� ������� �ʴ´�.


SELECT last_name, salary, salary + 300 FROM employees;


SELECT last_name, salary, 12 * salary + 100 FROM employees;


/*
NULL���� �� �� ���� ��, ����� �� ���� ��, �Ҵ��� �� ���� ��, ������ �� ���� ���� �ǹ��Ѵ�.
NULL�� 0 �Ǵ� ����� �ٸ���.
�� ���� Ư�� ���� ������ ���� ������ �� ���� NULL�̶�� �ϰų� NULL�� �����Ѵٰ� �Ѵ�.
NULL�� �� �� ���� ��, ����� �� ���� ��, �Ҵ��� �� ���� ��, ������ �� ���� ���� �ǹ��ϸ� 0�̳� ������� �ٸ���.
0�� ���ڰ� ������ �ϳ��� �����̴�.
��� ������ ������ ������ NULL�� ���Ե� �� �ִ�. ������ NOT NULL �� PRIMARY KEY���� ���� ������ ������ ������ NULL�� ����� �� ����.
����Ŀ��� ���� ���� NULL�̸� ����� NULL�̴�. ���� ��� ���ڸ� 0���� ������ ������ �߻��Ѵ�.
������ NULL�� ������ ����� NULL�̰ų� �� �� ����.
*/


--�� ��Ī
SELECT last_name AS name, commission_pct comm FROM employees;


/*
ù��° ������ ��� ����� �̸��� Ŀ�̼� ������ ǥ���Ѵ�.
���������� ���� ������ ASŰ���尡 �� ��Ī �̸� �տ� ���Ǿ��µ� ���� ����� asŰ������ ��뿡 ���� ���� �����ϴ�.
���� SQL���� �� ��ġ�� name �� comm�� �ҹ��ڷ� �Ǿ� ������ ���� ���������
���Ӹ����� �빮�ڷ� ǥ�õȴ�. �� �Ӹ����� �⺻������ �빮�ڷ� ǥ�õȴ�.
*/


/*
���� ������
�� �Ǵ� ���ڿ��� �ٸ� ���� �����Ѵ�
�� ���� ���μ�(||)���� ����
���Ῥ���ڸ� ����ϸ� ���� �ٸ� ��, ����� �Ǵ� ��� ���� �����Ͽ� ���ڽ��� ������ �� �ִ�.
�� �������� �¿쿡 �ִ� ���� ���յǾ� �ϳ��� ���� �����ȴ�.
*/

SELECT last_name || job_id AS "Employees" FROM employees;


--���ͷ� ���ڿ�
SELECT last_name ||' is a '|| job_id AS "Employee Details" FROM employees;


/*
employees ���̺��� employee_id, last_name�� first_name�� �����ؼ� ǥ���ϰ�
(�������� ����) �� ��Ī�� ȭ�� �� ó�� ���� �ۼ����ּ���
*/
SELECT employee_id AS "Emp#", last_name ||' '|| first_name AS "Employee Name" FROM employees;


--employees ���̺��� �÷��߿� last_name, job_id�� �����ؼ� ǥ���ϰ�(��ǥ�� ��������) ȭ�� ��ó�� ���� �ۼ��ϼ���.
SELECT last_name || ', ' || job_id AS "Employee and Title" FROM employees;


--departments ���̺� �ִ� �����Ϳ��� department_name, manager_id �÷��� ������ ȭ�� ��� ó�� ����ϴ� ���� ������ ����ÿ�.
SELECT department_name ||q'[Department's Manager id : ]'|| manager_id as "Department and Manager" from departments;


--SELECT ������ DISTINCT Ű���带 ����Ͽ� �ߺ� ���� �����Ѵ�.


SELECT DISTINCT department_id FROM employees;

/*
���õǴ� �� ����
WHERE ���� ����Ͽ� ���ǿ��� ��ȯ�Ǵ� ���� ������ �� �ִ�.
WHERE ���� �����ؾ� �� ������ �����ϸ� FROM �� �ٷ� ������ �´�.
������ ���� ���, ������ �����ϴ� ���� ��ȯ �ȴ�.
*/


--WHERE �� ���
SELECT employee_id, last_name, job_id, department_id FROM employees WHERE department_id = 90;


/*
���ڿ� �� ��¥
���ڿ� �� ��¥ ���� ���� ����ǥ�� ���´�.
���� ���� ��ҹ��ڸ� �����ϸ� ��¥ ���� ��¥ ������ �����Ѵ�.
�⺻ ��¥ ������ DD-MON-RR(��-��-����)�̴�.
*/


--���ڿ� �� ��¥ ����(DD-MON-RR(��-��-����)�� RR-MON-DD�� ����)
SELECT * FROM employees;
ALTER session set nls_date_format = "RR/MM/DD";


--�� ���� ������ .. <> : ���� ����


--employees ���̺��� �޿��� 3000���� �۰ų� ���� ������� last_name, salary�� ����Ͽ���.
SELECT last_name, salary FROM employees WHERE salary<=3000;


SELECT last_name, salary FROM employees WHERE salary BETWEEN 2500 AND 3500;


--AND ���
SELECT last_name, salary FROM employees WHERE salary >= 2500 AND salary <= 3500;


--IN ��� ������ ����ϸ� ���� ��Ͽ� �ִ��� Ȯ���� �� �ִ�.
SELECT employee_id, last_name, salary, manager_id FROM employees WHERE manager_id IN (100, 101, 201);


--��� �̸�(��)�� 'Gee'�̰ų� 'Smith'�� ����� ������ ����
--��� ���) ��� ��ȣ, �̸�(��), �μ�ID, ����ID(IN ���� ���)
SELECT employee_id, last_name, department_id, job_id FROM employees WHERE last_name IN ('Gee', 'Smith');


--�μ� ��ȣ�� 50, 80�� �μ��� �� ������ 8000�̻��� ����� ������ ����
--��� ���) ��� ��ȣ, �̸�(��), �μ�ID, ����ID
SELECT employee_id, last_name, department_id, job_id FROM employees WHERE department_id IN(50, 80) AND salary >= 8000;


--IS NULL �����ڸ� ����Ͽ� NULL ���θ� �׽�Ʈ�Ѵ�.
SELECT last_name, manager_id FROM employees WHERE manager_id IS NULL;

--�μ��� �߷ɹ��� ���� ����� ������ ����
--��� ���) ��� ��ȣ, �̸�(��), �Ի�����, �μ�ID
SELECT employee_id, last_name, department_id, hire_date, job_id FROM employees WHERE  department_id IS NULL;


/*
LIKE ����
05% : 05�� �����ϴ� ���� �˻�
%05 : 05�� ������ ���� �˻�
%05% : 05�� ���� ���� �˻�
'_05%' �ι�° ���ڿ� 05�� ���� ���� �˻�
*/


--2005�� �Ի��� �߿��� ������� �̰ų� �޿��� 3000���ϸ� �޴� ����� ������ ����
--��� ���) ��� ��ȣ, �̸�(��), �Ի�����, ����ID, �޿�
SELECT employee_id, last_name, hire_date, job_id, salary FROM employees WHERE hire_date LIKE '05%' AND (job_id LIKE 'SA%' OR salary<=3000);


--employees ���̺� �ִ� ������ �߿� job_id�� SA�� ���۵ǰ� �޿��� 10000�̻� �޴� ������� ��� ������ ����϶�.
SELECT job_id, salary FROM employees WHERE job_id LIKE 'SA%' AND salary>=10000;


--last_name�� ����° ���ڰ� 'a' �Ǵ� 'e'�� ���Ե� ��� ������� last_name�� ����ϼ���.
SELECT last_name FROM employees WHERE last_name LIKE '__a%' OR last_name LIKE '__e%';


--employees ���̺� �ִ� �����Ϳ��� job_id �÷��� ���� SA�� �����ϰ� 10000 �̻��� salary(�޿�)�� �ް� 2005�⵵�� �Ի���(hire_Date) ��� ������� ������ ����ϼ���
--(and, between~and, and~and)
--�Լ� : to_date() ���ڸ� ��¥ ������ Ÿ������ ��ȭ�� �ִ� �Լ�
SELECT * FROM employees WHERE job_id LIKE 'SA%' AND salary >= 10000 AND hire_date >= to_date('2005/01/01', 'yyyy/mm/dd') AND hire_date >= to_date('2005/12/31 23:59:59', 'yyyy/mm/dd hh24:mi:ss');


--*
SELECT * FROM employees WHERE job_id LIKE 'SA%' AND salary >= 10000 AND hire_date BETWEEN to_date('2005/01/01', 'yyyy/mm/dd') AND to_date('2005/12/31 23:59:59', 'yyyy/mm/dd hh24:mi:ss');


--employees ���̺��� job_id �÷��� ���� SA_REP �Ǵ� AD_PRES ����� �߿� �޿��� 10000�ʰ� �� ������� ��� ������ ����ϼ���.
SELECT * FROM employees WHERE job_id LIKE 'SA_REP' OR job_id LIKE'AD_PRES' AND salary>10000;
SELECT * FROM employees WHERE job_id IN ('SA_REP','AD_PRES') AND salary>10000;


--employees ���̺��� job_id �÷��� ���� IT_PROG, ST_CLERK, SA_REP�� �ƴ� ��� ����� last_name, job_id�� ����ϼ���.
SELECT last_name, job_id FROM employees WHERE job_id != 'IT_PROG' AND job_id != 'ST_CLERK' AND job_id != 'SA_REP';
SELECT last_name, job_id FROM employees WHERE job_id not in('IT_PROG', 'ST_CLERK', 'SA_REP');


/*
ORDER BY��
ASC : ��������, �⺻��
DESC : ��������
*/

--2006�⵵�� �Ի��� ����� employee_id, last_name, hire_date�� ����ϼ���
SELECT employee_id, last_name, hire_date FROM employees WHERE hire_date >= to_date('2006/01/01', 'yyyy/mm/dd') and hire_date < to_date('2007/01/01', 'yyyy/mm/dd');


--80�� department_id ����߿� commission_pct ���� 0.2�̰� job_id�� SA_MAN�� ����� employee_id, last_name, salary�� ����ϼ���
--�μ� ��ȣ : department_id(80)
--commission_pct : 0.2
--job_id : SA_MAN
SELECT employee_id, last_name, salary FROM employees WHERE department_id=80 AND commission_pct=0.2 AND job_id LIKE 'SA_MAN';


--salary�� 5000~12000�� ������ ������ �ʴ� ��� ����� last_name �� salary�� ������ּ���
SELECT last_name, salary FROM employees WHERE salary <5000 OR salary>12000;
SELECT last_name, salary FROM employees WHERE salary NOT BETWEEN 5000 AND 12000;


--Matos �� Taylor��� last_name�� ���� ����� last_name, job_id, hire_date�� ����ϼ���. hire_Date�� �������� ������������ ��µǵ��� SQL���� �ۼ��մϴ�(or, in)
--3��° �÷��� �������� ��������
SELECT last_name, job_id, hire_date FROM employees WHERE last_name = 'Matos' or last_name = 'Taylor' ORDER BY 3;
SELECT last_name, job_id, hire_date FROM employees WHERE last_name IN ('Matos', 'Taylor') ORDER BY 3;


--commission_pct�� null�� �ƴ� ��� ����� last_name, salary, commission_pct�� ����ϼ���.
--salary, commission_pct�� �����͸� ������������ �����մϴ�.

--*
SELECT last_name, salary, commission_pct FROM employees WHERE commission_pct IS NOT NULL ORDER BY 2 DESC, 3 DESC;


/*
SUBSTR �Լ��� ���ڴ����� ������ġ�� �ڸ� ���̸� �����Ͽ� ���ڿ��� �ڸ���
INSTR(���ڿ�, �˻��� ����, ���� ����, n��° �˻� �ܾ�) �Լ��� ã�� ������ ��ġ�� ��ȯ�ϴ� ���̴�.
LENGTH ���ڿ��� ���̸� ���ϱ� ���ؼ�
INITCAP(�Ű������� ������ char�� ù ���ڴ� �빮�ڷ�, �������� �ҹ��ڷ� ��ȯ�ϴ� �Լ�)
*/

--employees ���̺� last_name �÷��� �� �߿� "J" �Ǵ� "A" �Ǵ� "M"���� �����ϴ� ������� last_name
--(ù��° ���ڴ� �빮��, �������� ��� �ҹ���)�� last_name�� ���̸� ǥ���ϴ� query�� �ۼ��Ѵ�.
--������� last_name�� �������� ����� �������� �����Ͽ���
SELECT initcap(last_name), length(last_name) FROM employees WHERE last_name LIKE 'J%' OR last_name LIKE 'A%' OR last_name like 'M%' ORDER BY last_name;

SELECT initcap(last_name), length(last_name) FROM employees WHERE substr(last_name, 1, 1) IN('J','A','M') ORDER BY last_name;

--INSTR(���ڿ�, �˻��� ����, ���� ����, n��° �˻� �ܾ�)�Լ��� ã�� ������ ��ġ�� ��ȯ�ϴ� ���̴�.


--INSTR (���ڿ�, �˻��� ����, ��������, n��° �˻��ܾ�) �Լ��� ã�� ������ ��ġ�� ��ȯ�ϴ� ���̴�.
SELECT initcap(last_name), length(last_name) FROM employees WHERE instr(last_name, 'J')=1 OR instr(last_name, 'M')=1 OR instr(last_name, 'A')=1;

--like "Name", "Length" ��Ī
SELECT INITCAP(last_name)"Name", length(last_name)"Length" FROM employees WHERE last_name like 'J%' OR last_name like 'A%' Or last_name like 'M%' ORDER BY last_name; 


--employees ���̺��� department_id(�μ��ڵ�)�� 50�� ����� �߿� last_name�� �ι�° ��ġ�� "a" ���ڰ� �ִ� ������� ��ȸ�ϼ���.
--like, SUBSTR, INSTR
--LIKE 
SELECT last_name FROM employees WHERE department_id = 50 AND last_name LIKE '_a%'; 


--SUBSTR  
SELECT last_name FROM employees WHERE department_id = 50 AND substr(last_name, 2, 1) = 'a';


--INSTR 
SELECT last_name FROM employees WHERE department_id = 50 AND instr(last_name, 'a') = 2;

/*
���� �Լ�
ù ���ڸ� �빮�ڷ� ��ȯ�ϰ� ������ ���ڴ� �ҹ��ڷ� ��ȯ
select initcap('SQL Course') from dual;
*/

SELECT initcap('SQL Course') FROM dual;

SELECT LOWER('SQL Course') FROM dual; --�ҹ��ڷ� ��ȯ

SELECT UPPER('SQL Course') FROM dual; --�빮�ڷ� ��ȯ

SELECT CONCAT(CONCAT('Hello','World'), '!') from dual; --���ڸ� ������ ��

SELECT 'Hello' || 'World' || '!' FROM dual;

SELECT substr('HelloWorld', -5, 3) from dual;

SELECT LENGTH('HIHI') FROM dual;

SELECT REPLACE ('HelloWorld', 'hello', 'HI') FROM dual;