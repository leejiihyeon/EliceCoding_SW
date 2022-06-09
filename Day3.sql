SELECT employee_id, last_name, e.department_id, department_name FROM employees e, departments d WHERE e.department_id = d.department_id;


--모든 부서의 위치 정보를 얻어보자
--출력 결과) 부서 번호, 부서 이름, 도시 이름
SELECT * FROM tab;
SELECT * FROM departments;
SELECT * FROM locations;

SELECT department_id, department_name, city
FROM departments d, locations l
WHERE d.location_id = l.location_id;


SELECT department_id, department_name, city
FROM departments d JOIN locations l
ON d.location_id = l.location_id;


--2000년 1/2분기에 입사한 사원 정보를 가져오자
--출력 결과) 사원 번호, 이름(employees table), 부서이름(departments table), 직무 이름(jobs table)
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
부서와 부서 관리자 정보를 얻어보자
단, 관리자가 없는 부서는 'No MAnager'라고 표시하자
출력 결과) 부서 이름, 관리자 이름(성)
*/

SELECT department_name,
NVL(last_name, 'No Manager')
FROM departments d, employees e
WHERE d.manager_id = e.employee_id(+);


--각 사원의 매니저 이름(성)을 알아보자. 단, 매니저가 없는 사원은 'Boss'라고 표시하자
--출력 결과) 사원 번호, 이름, 매니저 이름
SELECT e1.employee_id, e1.last_name,
NVL(e2.last_name, 'Boss')
FROM employees e1, employees e2
WHERE e1.manager_id  = e2.employee_id(+);

--ppt 212 자연조인 내용 잘 알아두면 좋다.

--USING : 두 개의 테이블이 내부 조인으로 조인 될 때 조인하고자 하는 두 테이블의 컬럼명이 같을 경우 조인 조건을 길게 적지 않고 간단하게 적을 수 있도록 하는 역할

--이름(성)이 'Smith', 'King'인 사원의 정보를 얻자
--출력 결과) 사원 번호, 이름(성), 월급, (해당 직무)최소 월급, (해당 직무)최대 월급, 부서 이름
SELECT employee_id, last_name, salary, MIN_salary, MAX_salary, department_name
FROM employees e JOIN jobs j
ON e.job_id = j.job_id
JOIN departments d
ON e.department_id = d.department_id
WHERE last_name in ('Smith', 'King');


--locations 테이블에 있는 city 컬럼에 Toronto도시에서 근무하는 모든 사원의 last_name, job_id, department_id, department_name을 표시하기 위한 query를 작성하라
--등가조인
--join on() 키워드

SELECT e.last_name, e.job_id, d.department_id, d.department_name
FROM employees e, departments d, locations l
WHERE e.department_id = d.department_id
AND d.location_id = l.location_id
AND l.city = ('Toronto');

--join on()키워드
SELECT e.last_name, e.job_id, d.department_id, d.department_name
FROM employees e JOIN departments d
ON e.department_id = d.department_id
JOIN locations l
ON  d.location_id = l.location_id
WHERE l.city = 'Toronto';


--USING
--코드오류
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


--2006년도에 입사한 사원들의 부서 이름별로 급여의 총액, 평균을 출력하여라
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


--2006년도에 입사한 사원들의 도시이름별로 급여의 총액, 평균을 출력하세요
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


--서브쿼리

--사원 141과 동일한 업무 ID를 가진 사원을 표시한다.
SELECT last_name, job_id
FROM employees
WHERE job_id =
(SELECT job_id
FROM employees
WHERE employee_id = 141);


--Executive 부서의 이름의 소속된 모든 사원에 대한 department_id, last_name, job_id를 출력하세요
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


--전체 평균 급여보다 많은 급여를 받는 last_name에 'z'가 포함된 사원과 같은 부서에서 근무하는 모든 사원의 employee_id, last_name, salary를 출력하세요.
SELECT employee_id, last_name, salary FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees)
AND department_id IN (SELECT department_id FROM employees WHERE last_name LIKE '%z%');


--last_name에 문'u'가 포함된 사원들중에 자신의 부서 평균 급여보다 많이 받는 사원들의 employee_id, last_name을 출력하세요(in, >)
SELECT employee_id, last_name FROM employees
WHERE department_id IN (SELECT department_id FROM employees
WHERE last_name LIKE '%u%')
AND salary > (select avg(salary) FROM employees);


SELECT employee_id, last_name, salary FROM employees o
WHERE last_name LIKE '%u%'
AND salary > (select avg(salary) FROM employees
WHERE department_id = o.department_id);


--관리자 사원들의 정보를 출력하시오
SELECT manager_id FROM employees;

SELECT * FROM employees
WHERE employee_id IN(SELECT manager_id FROM employees);

SELECT * FROM employees WHERE employee_id = null OR employee_id = 100 OR employee_id = 100;


SELECT * FROM employees o WHERE EXISTS (select 'x' FROM employees WHERE manager_id=o.employee_id);

--사원이 없는 부서 정보만 출력하시오
SELECT * FROM departments
WHERE department_id
IN (SELECT department_id FROM employees
WHERE department_id IS NOT NULL);

SELECT * FROM departments
WHERE department_id not in(SELECT department_id
FROM employees
WHERE department_id is not null);


--30번 부서 사원들중에 입사일은 빠르면서 급여는 적게 받는 사원들을 출력하세요
SELECT * FROM employees o
WHERE department_id = 30
AND exists(SELECT 'x' FROM employees
WHERE department_id = o.department_id
AND hire_date > o.hire_date
AND salary > o.salary);



--부서별 평균 급여중에 최댓값을 갖고 있는 부서의 최고 급여, 최저 급여, 평균 급여를 출력하시오
SELECT department_id, max(salary), min(salary), avg(salary) FROM employees
GROUP BY department_id
HAVING avg(salary)=(SELECT max(avg(salary))
FROM employees
GROUP BY department_id);
