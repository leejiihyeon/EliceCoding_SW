SELECT employee_id, last_name, e.department_id, department_name FROM employees e, departments d WHERE e.department_id = d.department_id;


--��� �μ��� ��ġ ������ ����
--��� ���) �μ� ��ȣ, �μ� �̸�, ���� �̸�
SELECT * FROM tab;
SELECT * FROM departments;
SELECT * FROM locations;

SELECT department_id, department_name, city
FROM departments d, locations l
WHERE d.location_id = l.location_id;


SELECT department_id, department_name, city
FROM departments d JOIN locations l
ON d.location_id = l.location_id;


--2000�� 1/2�б⿡ �Ի��� ��� ������ ��������
--��� ���) ��� ��ȣ, �̸�(employees table), �μ��̸�(departments table), ���� �̸�(jobs table)
SELECT employee_id, last_name, hire_date, department_name, job_title
FROM employees e, departments d, jobs j
WHERE e.department_id = d.department_id
AND e.job_id = j.job_id
AND TO_CHAR(hire_date, 'YYYY-MM') BETWEEN '2000-01' AND '2000-06';


SELECT worker.last_name || 'works for' || manager.last_name
FROM employees worker, employees manager
WHERE worker.manager_id = manager.employee_id;


SELECT employee_id, last_name, hire_date, department_name, job_title
FROM employees e JOIN departments d
ON e.department_id = d.department_id
JOIN jobs j
ON e.job_id = j.job_id
WHERE TO_CHAR(hire_date, 'YYYY-MM') BETWEEN '2000-01' AND '2000-06';


/*
�μ��� �μ� ������ ������ ����
��, �����ڰ� ���� �μ��� 'No MAnager'��� ǥ������
��� ���) �μ� �̸�, ������ �̸�(��)
*/

SELECT department_name,
NVL(last_name, 'No Manager')
FROM departments d, employees e
WHERE d.manager_id = e.employee_id(+);


--�� ����� �Ŵ��� �̸�(��)�� �˾ƺ���. ��, �Ŵ����� ���� ����� 'Boss'��� ǥ������
--��� ���) ��� ��ȣ, �̸�, �Ŵ��� �̸�
SELECT e1.employee_id, e1.last_name,
NVL(e2.last_name, 'Boss')
FROM employees e1, employees e2
WHERE e1.manager_id  = e2.employee_id(+);

--ppt 212 �ڿ����� ���� �� �˾Ƶθ� ����.

--USING : �� ���� ���̺��� ���� �������� ���� �� �� �����ϰ��� �ϴ� �� ���̺��� �÷����� ���� ��� ���� ������ ��� ���� �ʰ� �����ϰ� ���� �� �ֵ��� �ϴ� ����

--�̸�(��)�� 'Smith', 'King'�� ����� ������ ����
--��� ���) ��� ��ȣ, �̸�(��), ����, (�ش� ����)�ּ� ����, (�ش� ����)�ִ� ����, �μ� �̸�
SELECT employee_id, last_name, salary, MIN_salary, MAX_salary, department_name
FROM employees e JOIN jobs j
ON e.job_id = j.job_id
JOIN departments d
ON e.department_id = d.department_id
WHERE last_name in ('Smith', 'King');


--locations ���̺� �ִ� city �÷��� Toronto���ÿ��� �ٹ��ϴ� ��� ����� last_name, job_id, department_id, department_name�� ǥ���ϱ� ���� query�� �ۼ��϶�
--�����
--join on() Ű����

SELECT e.last_name, e.job_id, d.department_id, d.department_name
FROM employees e, departments d, locations l
WHERE e.department_id = d.department_id
AND d.location_id = l.location_id
AND l.city = ('Toronto');

--join on()Ű����
SELECT e.last_name, e.job_id, d.department_id, d.department_name
FROM employees e JOIN departments d
ON e.department_id = d.department_id
JOIN locations l
ON  d.location_id = l.location_id
WHERE l.city = 'Toronto';


--USING
--�ڵ����
SELECT e.last_name, e.job_id, d.department_id, d.department_name
FROM employees e JOIN departments d
USING(department_id)
JOIN locations l
USING(location_id)
WHERE l.city = 'Toronto';

SELECT e.last_name, e.job_id, d.department_id, d.department_name
FROM employees e, departments d, locations l
WHERE e.department_id = d.department_id
AND d.location_id = l.location_id
AND l.city = ('Toronto');


--2006�⵵�� �Ի��� ������� �μ� �̸����� �޿��� �Ѿ�, ����� ����Ͽ���
SELECT d.department_name, SUM(e.salary) as "Total", AVG(e.salary) as "Avg"
FROM employees e, departments d
WHERE e.department_id = d.department_id
AND e.hire_date >= to_date('2006/01/01', 'yyyy/mm/dd')
AND e.hire_date < to_date('2007/01/01', 'yyyy/mm/dd')
GROUP BY d.department_name;


SELECT d.department_name, SUM(e.salary) as "Total", AVG(e.salary) as "Avg"
FROM employees e JOIN departments d
ON e.department_id = d.department_id
WHERE e.hire_date >= to_date('2006/01/01', 'yyyy/mm/dd')
AND e.hire_date < to_date('2007/01/01', 'yyyy/mm/dd')
GROUP BY d.department_name;


--2006�⵵�� �Ի��� ������� �����̸����� �޿��� �Ѿ�, ����� ����ϼ���
SELECT l.city,SUM(e.salary) as "Total", AVG(e.salary) as "Avg"
FROM employees e, departments d, locations l
WHERE e.department_id = d.department_id
AND d.location_id = l.location_id
AND e.hire_date>= to_date('2006/01/01', 'yyyy/mm/dd')
AND e.hire_date < to_Date('2007/01/01', 'yyyy/mm/dd')
GROUP BY l.city;


SELECT l.city,SUM(e.salary) as "Total", AVG(e.salary) as "Avg"
FROM employees e LEFT OUTER JOIN departments d
ON e.department_id = d.department_id
LEFT OUTER JOIN locations l
ON d.location_id = l.location_id
WHERE e.hire_date>= to_date('2006/01/01', 'yyyy/mm/dd')
AND e.hire_date < to_Date('2007/01/01', 'yyyy/mm/dd')
GROUP BY l.city;


--��������

--��� 141�� ������ ���� ID�� ���� ����� ǥ���Ѵ�.
SELECT last_name, job_id
FROM employees
WHERE job_id =
(SELECT job_id
FROM employees
WHERE employee_id = 141);


--Executive �μ��� �̸��� �Ҽӵ� ��� ����� ���� department_id, last_name, job_id�� ����ϼ���
SELECT e.department_id, e.last_name, job_id
FROM employees e, departments d
WHERE e.department_id = d.department_id
AND d.department_name = 'Executive';

SELECT department_id, last_name, job_id
FROM employees
WHERE department_id
IN (SELECT department_id FROM departments WHERE department_name = 'Executive')


SELECT e.department_id, e.last_name, e.job_id
FROM (SELECT department_id FROM departments
WHERE department_name = 'Executive')d, employees e
WHERE d.department_id = e.department_id;


--��ü ��� �޿����� ���� �޿��� �޴� last_name�� 'z'�� ���Ե� ����� ���� �μ����� �ٹ��ϴ� ��� ����� employee_id, last_name, salary�� ����ϼ���.
SELECT employee_id, last_name, salary FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees)
AND department_id IN (SELECT department_id FROM employees WHERE last_name LIKE '%z%');


--last_name�� ��'u'�� ���Ե� ������߿� �ڽ��� �μ� ��� �޿����� ���� �޴� ������� employee_id, last_name�� ����ϼ���(in, >)
SELECT employee_id, last_name FROM employees
WHERE department_id IN (SELECT department_id FROM employees
WHERE last_name LIKE '%u%')
AND salary > (select avg(salary) FROM employees);


SELECT employee_id, last_name, salary FROM employees o
WHERE last_name LIKE '%u%'
AND salary > (select avg(salary) FROM employees
WHERE department_id = o.department_id);


--������ ������� ������ ����Ͻÿ�
SELECT manager_id FROM employees;

SELECT * FROM employees
WHERE employee_id IN(SELECT manager_id FROM employees);

SELECT * FROM employees WHERE employee_id = null OR employee_id = 100 OR employee_id = 100;


SELECT * FROM employees o WHERE EXISTS (select 'x' FROM employees WHERE manager_id=o.employee_id);

--����� ���� �μ� ������ ����Ͻÿ�
SELECT * FROM departments
WHERE department_id
IN (SELECT department_id FROM employees
WHERE department_id IS NOT NULL);

SELECT * FROM departments
WHERE department_id not in(SELECT department_id
FROM employees
WHERE department_id is not null);


--30�� �μ� ������߿� �Ի����� �����鼭 �޿��� ���� �޴� ������� ����ϼ���
SELECT * FROM employees o
WHERE department_id = 30
AND exists(SELECT 'x' FROM employees
WHERE department_id = o.department_id
AND hire_date > o.hire_date
AND salary > o.salary);



--�μ��� ��� �޿��߿� �ִ��� ���� �ִ� �μ��� �ְ� �޿�, ���� �޿�, ��� �޿��� ����Ͻÿ�
SELECT department_id, max(salary), min(salary), avg(salary) FROM employees
GROUP BY department_id
HAVING avg(salary)=(SELECT max(avg(salary))
FROM employees
GROUP BY department_id);
