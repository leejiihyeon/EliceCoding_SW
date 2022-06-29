--LPAD, RPAD : Ư�� ���ڷ� �ڸ��� ä���

--RPAD : �����ʺ��� Ư�� ���ڷ� �ڸ����� ä��� �Լ�

SELECT RPAD(salary, 10, '*') FROM employees;

--LPAD : ���ʺ��� Ư�� ���ڷ� �ڸ����� ä��� �Լ�

SELECT LPAD(salary, 10, '*') from employees;

--LTRIM ���ڿ��� ����(����) ���� ����, ���� ���� �ݺ����� ���ڸ� ���Ÿ� �Ѵ�

SELECT LTRIM ('HelloWorld', 'Hel') FROM dual;

--RTRIM ���ʰ� �������� ������ ������ �� ����ϴ� �Լ�
SELECT RTRIM('HelloWorld', 'l') FROM dual; --�ٽ� Ȯ���ϱ�

--���� �Լ�
--CEIL : �Ҽ����� ���� ����� ������ �ø��Ͽ� ���� ��ȯ�ϰ� ��
SELECT CEIL(-10.4) FROM dual;


--FLOOR �Ҽ��� ù° �ڸ����� �����ϴ� �Լ���, �־��� ���ڿ� ���� ������ ���� ������ ���
SELECT FLOOR(-10.4) FROM dual;


/*
�μ��� ������ ��, �μ��� �ο��� ���غ���
��� ���) �μ� ID, ������ ��
��ǥ���� �׷� �Լ�(SUM, COUNT)
*/
SELECT department_id, SUM(salary), COUNT(*) FROM employees GROUP BY department_id;


--������ �޿��� ��, ���, �ִ� �޿�, �ּ� �޿��� ��Ÿ�� ����
--��� ���) ����ID, �޿��� ��
SELECT job_id, SUM(salary), AVG(salary), MAX(salary), MIN(salary) FROM employees GROUP BY job_id;


--�μ���ȣ�� 10, 20�� �μ��� �ִ� �޿��� ���϶�
--��� ���) �μ� ��ȣ, �ִ� ����
SELECT department_id, MAX(salary) FROM employees GROUP BY department_id HAVING department_id IN(10,20);
SELECT department_id, MAX(salary) FROM employees WHERE department_id IN (10, 20) GROUP BY department_id;

/*
��� ���� ������ ����ϰ� �ִ� ����� ���� �Ի��ο��� ���϶�.
�� �Ի��ο��� 2�� ������ ���� �����Ѵ�.
��� ���) ��, �Ի��� ��
*/
--TO_CHAR() �Լ��� ��¥, ���� ���� ���� ���ڿ��� ��ȯ�ϴ� �Լ�

SELECT * FROM employees;

SELECT TO_CHAR (hire_Date, 'MM'), COUNT(*)
FROM employees WHERE job_id LIKE 'ST%' --25��
GROUP BY TO_CHAR(hire_date, 'MM') HAVING COUNT(*) > 2
ORDER BY TO_CHAR(hire_date, 'MM');

/*
�μ��� ��� ������ ���϶�
��, �μ����� 10�� �̻��� �μ��� ���Ѵ�.
��� ���) �μ�ID, ��� ����, �μ��� ��
*/
SELECT department_id, AVG(salary), COUNT(*)
FROM employees GROUP BY department_id
HAVING COUNT(*) > 10;

--�μ���ȣ�� 10, 20�� ����� �ִ� ������ ���϶�
--��� ���) �μ�ID, �ִ� ����
SELECT department_id, MAX(salary) FROM employees
GROUP BY department_id 
HAVING department_id IN (10, 20);

/*
employees ���̺� �ִ� employee_id, last_name, salary
salary�� 10% �λ�� �޿��� ����ϸ鼭
���� �޿��� �Ҽ����� �ݿø��ؼ� ���������� ǥ���ϰ� ����Ī�� New Salary�� ǥ���ϼ���
*/
--ROUND(����, �ݿø��� �ڸ���) - ���ڸ� �ݿø��� �ڸ��� +1 �ڸ������� �ݿø�

SELECT employee_id, last_name, ROUND(salary * 1.1) "New Salary" FROM employees;


SELECT sysdate FROM dual; --���� ����


--15�� �̻� �ٹ��� ������� �����ȣ, �Ի� ��¥, �ٹ��������� ��ȸ�϶�. "months"

--months_between() : �� ���� ���̸� ���� �����ϴ� �Լ�
--months_between(n,m) : n�� m������ �������� ���ڷ� ����


SELECT employee_id, hire_date, months_between(sysdate, hire_date) "months"
FROM employees
WHERE months_between(sysdate, hire_date)>=15*12;


--���ð� 2007�� 1�� 1�ϰ��� ���� ����?
SELECT months_between(sysdate, to_date('2007-01-01', 'YYYY-MM-DD')) FROM dual;


--���� ��¥�� 1���� ���غ���
SELECT ADD_MONTHS(sysdate, 12) FROM dual;

/*
employees(���) ���̺� �ִ� last_name�� ����° ���ڰ� 'a' �Ǵ� 'e'�� ���Ե�
��� ����� last_name�� ��ȸ�Ͽ���
like, substr, instr
*/
SELECT last_name FROM employees 
WHERE last_name LIKE '__a%' OR last_name LIKE '__e%';

--substr
SELECT last_name FROM employees WHERE substr(last_name,3 ,1)='a' OR substr(last_name, 3, 1)='e';

--instr
SELECT last_name FROM employees 
WHERE INSTR (last_name, 'a')=3
OR INSTR (last_name, 'a', 1, 2)=3
OR INSTR (last_name, 'a', 1, 3)=3
OR INSTR (last_name, 'e')=3
OR INSTR (last_name, 'e', 1, 2)=3
OR INSTR (last_name, 'e', 1, 3)=3;

/*
����� last_name, hire_date �� �ٹ� 6���� �� �����Ͽ� �ش��ϴ� ��¥�� ��ȸ�ϼ���.
����Ī�� REVIEW�� �����մϴ�.
������ �������� ����(����) �Ͽ��Ͽ� �ش��ϴ� ��¥�� Ȯ���ؾ� �ϴ� ��찡 �ִ�. �̷� ���� NEXT_DAY �Լ��� Ȱ���Ͽ� ��¥�� ���� �� �ִ�.
*/
SELECT last_name, hire_date, next_day(add_months(hire_date, 6), '������') "REVIEW" FROM employees;


/*
����� employees(���)���̺� �ִ� last_name, hire_date �� �ٹ� 6���� �� ù��° �����Ͽ� �ش��ϴ� �޿� ���� ��¥�� ǥ���϶�
�� ���̺��� REVIEW�� �����Ѵ�
��¥�� "������, the Second of 4, 2007"�� ������ �������� ��Ÿ����
*/
SELECT last_name, hire_date, to_char(next_day(add_months(hire_date, 6), '������'), 'day') ||
to_char(next_day(add_months(hire_date, 6), '������'), '", the" Ddspth "of" MM yyyy')
"REVIEW" FROM employees;


--employees(���) ���̺��� �Ͽ��Ͽ� �Ի��� ����� ������ ��ȸ�ϼ���
SELECT * FROM employees WHERE to_char(hire_date, 'day') = '�Ͽ���';

--¦���޿� �Ի��� ����� ������ ��ȸ�ϼ���.
--mod(), to_char, to_number

/*
TO_NUMBER �Լ��� �־��� ���ڿ� �Ǵ� �÷��� �����͸� ���ڷ� ��ȯ�Ͽ� �ݴϴ�
VARCHAR2 ������ �÷��� ���ڵ鸸 ����Ǿ� �ִ� ��쿡 ����� �� �ֽ��ϴ�.
TO_NUMBER �Լ��� �̿��Ͽ� �� �÷��� ������ ������Ű�� �ʰ�
���� Ÿ������ ��ȯ�� �÷��� ����Ͽ� ������ �� �ְ� �ϴ� ���Դϴ�.
mod() ������ �� ����
*/
SELECT * FROM employees
WHERE MOD(TO_NUMBER(to_char(hire_date, 'mm')), 2) = 0;

--2006�⵵�� Ȧ�� �޿� �Ի��� ����� employee_id, last_name, hire_date�� ��ȸ�ϼ���
SELECT employee_id, last_name, hire_date FROM employees
WHERE HIRE_DATE >= to_date('2006/01/01', 'yyyy/mm/dd')
AND HIRE_DATE < to_date('2007/01/01', 'yyyy/mm/dd')
AND mod(to_number(to_char(hire_date, 'mm')),2)!=0;


/*
������̺�(employees)�� last_name, salary, commission_pct, commission_pct����
null �ƴϸ� (salary*12) + (salary*12*commission_pct) ���� ����ǰ�
null �̸� salary * 12�� ������ �� �ֵ��� ann_sal�� �����ϼ���
*/

--nvl
SELECT last_name, salary, commission_pct, (salary*12) + (salary*12*nvl(commission_pct, 0)) "ann_sal" FROM employees;


--nvl2
SELECT last_name, salary, nvl2(commission_pct, (salary*12) + (salary * 12 * commission_pct), salary * 12) "ann_sal" FROM employees;

/*
�������� ���� ������ ���غ���
��� ���) �����ȣ, �̸�, ����, Ŀ�̼��ۼ�Ʈ, �������(���� + ���� * Ŀ�̼��ۼ�Ʈ)
*/

SELECT employee_id
           , last_name
           , salary
           , commission_pct
           , salary+ salary* NVL(commission_pct, 0) AS ex_sal
           , NVL2(commission_pct, salary+salary* commission_pct, salary) AS ex_sal2
FROM employees;

--coalesce
SELECT employee_id, last_name, salary, commission_pct, coalesce((salary * 12) + (salary * 12 * commission_pct), salary * 12) "ann_sal" FROM employees;


--JOB_ID ���� ���� ������� ��� ����� ����� ǥ���ϴ� query�� �ۼ��϶�
SELECT job_id "JOB_ID", case job_id WHEN 'AD_PRES' THEN 'A' WHEN 'ST_MAN' THEN 'B' WHEN 'IT_PROG' THEN 'c' WHEN 'SA_REP' THEN 'D' WHEN'ST_CLEKR' THEN 'E'
ELSE 'z' END "GREADE" FROM employees;


select job_id "JOB_ID", 
      decode(job_id, 'AD_PRES', 'A',
                     'ST_MAN', 'B',
                     'IT_PROG', 'C',
                     'SA_REP', 'D',
                     'ST_CLERK', 'E',
                     'Z') "GRADE"
from employees; 


select job_id "JOB_ID", decode(job_id, 'AD_PRES', 'A',
'ST_MAN', 'B',
'IT_PROG', 'C',
'SA_REP', 'D',
'ST_CLERK', 'E',
'Z') "GRADE"
from employees;   

/*
�⵵���� �Ի��� �ο��� ���
count(), to_char();
*/

SELECT to_char(hire_date, 'YYYY') hire_year, COUNT(*) FROM employees GROUP BY to_char(hire_date, 'YYYY');


/*
��� : ������ 20000 �̻��̸� A, 15000�̻� 20000�̸� �̸� B,
10000�̻� 15000�̸��̸� C, 5000�̻� 10000�̸��̸� D, �� �ܴ� E
*/
SELECT employee_id,
salary,
case WHEN salary>=20000 THEN 'A'
WHEN 15000<=salary AND salary<20000 THEN 'B'
WHEN 10000<=salary AND salary<15000 THEN 'c'
WHEN 5000<=salary AND salary<10000 THEN 'D'
ELSE 'E' END as rnk FROM employees;


--��� ����� ���Ͽ� �μ���ȣ�� 60�̸� 'IT', 80�̸� 'Sales', �������� 'Other'�� ��Ÿ�� ������
--��� ���) �����ȣ, �̸�, �μ���ȣ, �μ��̸�
SELECT employee_id, last_name, department_id ,
case WHEN department_id = 60 THEN 'IT'
WHEN department_id = 80 THEN 'Sales'
ELSE 'Other' END as rnk FROM employees;

SELECT employee_id
, last_name
, department_id
, DECODE(department_id, 60, 'IT'
, 80, 'Sales'
, 'Other') AS dept_n
, CASE department_id
WHEN 60 THEN 'IT'
WHEN 80 THEN 'Sales'
ELSE 'Other'
END AS dept_n1
FROM employees;

SELECT employee_id, last_name, department_id, DECODE(department_id, 60, 'IT', 80, 'Sales', 'Other') AS dept_n
, CASE department_id WHEN 60 THEN 'IT' WHEN 80 THEN 'Sales' ELSE 'Other'END AS dept_n1 FROM employees;

--�Ի��� �޺� �ο����� ����ϼ���
--to_char, extract, count
SELECT to_char(hire_date, 'MM') hire_month, COUNT(*) FROM employees GROUP BY to_char(hire_date, 'MM');



/*
elect EXTRACT(YEAR FROM hiredate) from emp �ϰ� �Ǹ�
hiredate�� 1987-04-19 ���¿��� YEAR�� �̾ƿ´�. �׷��� ����� 1987�� ��ȸ�ȴ�*/
SELECT extract (month from hire_date), count(*)
FROM employees
GROUP BY extract(month from hire_date);


--2008�⵵�� �Ի��� ������� job_id�� �ο����� ���ϰ� �ο����� ���� ������ ����ϼ���
SELECT job_id, COUNT(*)
FROM employees WHERE to_char(hire_date, 'YYYY')=2008
GROUP BY job_id
ORDER BY count(*) desc; --���� ���� ���� �ڵ�(�������� ��Ȯ���� �ʾƼ�)

SELECT job_id, COUNT(*)
FROM employees
WHERE hire_date >= to_date('2008-01-01','yyyy-mm-dd')
AND hire_date < to_date('2009-01-01','yyyy-mm-dd')
GROUP BY job_id
ORDER BY count(*) desc; --�̷� ������ �ڵ� ¥�°� ����

--���� 45. .. decode ����ϱ�
SELECT COUNT(decode(to_char(HIRE_DATE, 'YYYY'), '2001', 2))"2001",
COUNT(decode(to_char(HIRE_DATE, 'YYYY'), '2002', 2))"2002",
COUNT(decode(to_char(HIRE_DATE, 'YYYY'), '2003', 2))"2003"
FROM employees;


SELECT * FROM departments;

SELECT * FROM employees;


--�μ� 80�� ���ϴ� last_name, job_id, department_name, city�� ǥ���ϱ� ���� query�� �ۼ��մϴ�.
--employees(last_name, job_id) departments(�μ��̸�) locations(city)
SELECT e.last_name, e.job_id, d.department_name, l.city
FROM employees e, departments d, locations l
WHERE e.department_id = 80
AND d.location_id = l.location_id
AND d.department_id = 80;

SELECT e.last_name, e.job_id, d.department_name, l.city
FROM employees e JOIN departments d
ON e.department_id = d.department_id
JOIN locations l
ON d.location_id = l.location_id
WHERE e.department_id = 80;

SELECT last_name, job_id, department_name, city
FROM employees JOIN departments
USING(department_id)
JOIN locations
USING(location_id)
WHERE department_id = 80;


SELECT last_name, job_id FROM employees WHERE department_id = 80;
SELECT department_name FROM departments WHERE department_id = 80;