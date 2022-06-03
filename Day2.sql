--LPAD, RPAD : 특정 문자로 자릿수 채우기

--RPAD : 오른쪽부터 특정 문자로 자릿수를 채우는 함수

SELECT RPAD(salary, 10, '*') FROM employees;

--LPAD : 왼쪽부터 특정 문자로 자릿수를 채우는 함수

SELECT LPAD(salary, 10, '*') from employees;

--LTRIM 문자열의 왼쪽(좌측) 공백 제거, 문자 왼쪽 반복적인 문자를 제거를 한다

SELECT LTRIM ('HelloWorld', 'Hel') FROM dual;

--RTRIM 왼쪽과 오른쪽의 공백을 제거할 때 사용하는 함수
SELECT RTRIM('HelloWorld', 'l') FROM dual; --다시 확인하기

--숫자 함수
--CEIL : 소수점을 가장 가까운 정수로 올림하여 값을 반환하게 됨
SELECT CEIL(-10.4) FROM dual;


--FLOOR 소수점 첫째 자리에서 버림하는 함수로, 주어진 숫자와 가장 근접한 작은 정수를 출력
SELECT FLOOR(-10.4) FROM dual;


/*
부서별 월급의 합, 부서의 인원을 구해보자
출력 결과) 부서 ID, 월급의 합
대표적인 그룹 함수(SUM, COUNT)
*/
SELECT department_id, SUM(salary), COUNT(*) FROM employees GROUP BY department_id;


--직무별 급여의 합, 평균, 최대 급여, 최소 급여를 나타내 보자
--출력 결과) 직무ID, 급여의 합
SELECT job_id, SUM(salary), AVG(salary), MAX(salary), MIN(salary) FROM employees GROUP BY job_id;


--부서번호가 10, 20인 부서별 최대 급여를 구하라
--출력 결과) 부서 번호, 최대 월급
SELECT department_id, MAX(salary) FROM employees GROUP BY department_id HAVING department_id IN(10,20);
SELECT department_id, MAX(salary) FROM employees WHERE department_id IN (10, 20) GROUP BY department_id;

/*
재고 관련 업무를 담당하고 있는 사원의 월별 입사인원을 구하라.
단 입사인원이 2명 이하인 달은 제외한다.
출력 결과) 월, 입사자 수
*/
--TO_CHAR() 함수는 날짜, 숫자 등의 값을 문자열로 변환하는 함수

SELECT * FROM employees;

SELECT TO_CHAR (hire_Date, 'MM'), COUNT(*)
FROM employees WHERE job_id LIKE 'ST%' --25명
GROUP BY TO_CHAR(hire_date, 'MM') HAVING COUNT(*) > 2
ORDER BY TO_CHAR(hire_date, 'MM');

/*
부서별 평균 월급을 구하라
단, 부서원이 10명 이상인 부서에 한한다.
출력 결과) 부서ID, 평균 월급, 부서원 수
*/
SELECT department_id, AVG(salary), COUNT(*)
FROM employees GROUP BY department_id
HAVING COUNT(*) > 10;

--부서번호가 10, 20인 사원의 최대 월급을 구하라
--출력 결과) 부서ID, 최대 월급
SELECT department_id, MAX(salary) FROM employees
GROUP BY department_id 
HAVING department_id IN (10, 20);

/*
employees 테이블에 있는 employee_id, last_name, salary
salary는 10% 인상된 급여를 계산하면서
계산된 급여는 소수점은 반올림해서 정수값으로 표현하고 열별칭은 New Salary로 표시하세요
*/
--ROUND(숫자, 반올림할 자릿수) - 숫자를 반올림할 자릿수 +1 자릿수에서 반올림

SELECT employee_id, last_name, ROUND(salary * 1.1) "New Salary" FROM employees;


SELECT sysdate FROM dual; --현재 기준


--15년 이상 근무한 사원들의 사원번호, 입사 날짜, 근무개월수를 조회하라. "months"

--months_between() : 두 날자 사이를 월로 리턴하는 함수
--months_between(n,m) : n과 m사이의 개월수를 숫자로 리턴


SELECT employee_id, hire_date, months_between(sysdate, hire_date) "months"
FROM employees
WHERE months_between(sysdate, hire_date)>=15*12;


--오늘과 2007년 1월 1일간의 개월 수는?
SELECT months_between(sysdate, to_date('2007-01-01', 'YYYY-MM-DD')) FROM dual;


--오늘 날짜에 1년을 더해보자
SELECT ADD_MONTHS(sysdate, 12) FROM dual;

/*
employees(사원) 테이블에 있는 last_name의 세번째 문자가 'a' 또는 'e'가 포함된
모든 사원의 last_name을 조회하여라
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
사원의 last_name, hire_date 및 근무 6개월 후 월요일에 해당하는 날짜를 조회하세요.
열별칭은 REVIEW로 지정합니다.
오늘을 기준으로 이전(직전) 일요일에 해당하는 날짜를 확인해야 하는 경우가 있다. 이럴 때는 NEXT_DAY 함수를 활용하여 날짜를 구할 수 있다.
*/
SELECT last_name, hire_date, next_day(add_months(hire_date, 6), '월요일') "REVIEW" FROM employees;


/*
사원의 employees(사원)테이블에 있는 last_name, hire_date 및 근무 6개월 후 첫번째 월요일에 해당하는 급여 협상 날짜를 표시하라
열 레이블을 REVIEW로 지정한다
날짜는 "월요일, the Second of 4, 2007"과 유사한 형식으로 나타내라
*/
SELECT last_name, hire_date, to_char(next_day(add_months(hire_date, 6), '월요일'), 'day') ||
to_char(next_day(add_months(hire_date, 6), '월요일'), '", the" Ddspth "of" MM yyyy')
"REVIEW" FROM employees;


--employees(사원) 테이블에서 일요일에 입사한 사원의 정보를 조회하세요
SELECT * FROM employees WHERE to_char(hire_date, 'day') = '일요일';

--짝수달에 입사한 사원의 정보를 조회하세요.
--mod(), to_char, to_number

/*
TO_NUMBER 함수는 주어진 문자열 또는 컬럼의 데이터를 숫자로 변환하여 줍니다
VARCHAR2 유형의 컬럼에 숫자들만 저장되어 있는 경우에 사용할 수 있습니다.
TO_NUMBER 함수를 이용하여 그 컬럼의 원본을 변형시키지 않고도
숫자 타입으로 전환된 컬럼을 출력하여 연산할 수 있게 하는 것입니다.
mod() 나머지 값 구함
*/
SELECT * FROM employees
WHERE MOD(TO_NUMBER(to_char(hire_date, 'mm')), 2) = 0;

--2006년도에 홀수 달에 입사한 사원의 employee_id, last_name, hire_date를 조회하세요
SELECT employee_id, last_name, hire_date FROM employees
WHERE HIRE_DATE >= to_date('2006/01/01', 'yyyy/mm/dd')
AND HIRE_DATE < to_date('2007/01/01', 'yyyy/mm/dd')
AND mod(to_number(to_char(hire_date, 'mm')),2)!=0;


/*
사원테이블(employees)에 last_name, salary, commission_pct, commission_pct값이
null 아니면 (salary*12) + (salary*12*commission_pct) 값이 수행되고
null 이면 salary * 12가 수행할 수 있도록 ann_sal를 생성하세요
*/

--nvl
SELECT last_name, salary, commission_pct, (salary*12) + (salary*12*nvl(commission_pct, 0)) "ann_sal" FROM employees;


--nvl2
SELECT last_name, salary, nvl2(commission_pct, (salary*12) + (salary * 12 * commission_pct), salary * 12) "ann_sal" FROM employees;

/*
직원들의 예상 월급을 구해보자
출력 결과) 사원번호, 이름, 월급, 커미션퍼센트, 예상월급(월급 + 월급 * 커미션퍼센트)
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


--JOB_ID 열의 값을 기반으로 모든 사원의 등급을 표시하는 query를 작성하라
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
년도별로 입사한 인원수 출력
count(), to_char();
*/

SELECT to_char(hire_date, 'YYYY') hire_year, COUNT(*) FROM employees GROUP BY to_char(hire_date, 'YYYY');


/*
등급 : 월급이 20000 이상이면 A, 15000이상 20000미만 이면 B,
10000이상 15000미만이면 C, 5000이상 10000미만이면 D, 이 외는 E
*/
SELECT employee_id,
salary,
case WHEN salary>=20000 THEN 'A'
WHEN 15000<=salary AND salary<20000 THEN 'B'
WHEN 10000<=salary AND salary<15000 THEN 'c'
WHEN 5000<=salary AND salary<10000 THEN 'D'
ELSE 'E' END as rnk FROM employees;


--모든 사원에 대하여 부서번호가 60이면 'IT', 80이면 'Sales', 나머지는 'Other'로 나타내 보세요
--출력 결과) 사원번호, 이름, 부서번호, 부서이름
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

--입사한 달별 인원수를 출력하세요
--to_char, extract, count
SELECT to_char(hire_date, 'MM') hire_month, COUNT(*) FROM employees GROUP BY to_char(hire_date, 'MM');



/*
elect EXTRACT(YEAR FROM hiredate) from emp 하게 되면
hiredate의 1987-04-19 형태에서 YEAR만 뽑아온다. 그래서 결과는 1987이 조회된다*/
SELECT extract (month from hire_date), count(*)
FROM employees
GROUP BY extract(month from hire_date);


--2008년도에 입사한 사원들의 job_id별 인원수를 구하고 인원수가 많은 순으로 출력하세요
SELECT job_id, COUNT(*)
FROM employees WHERE to_char(hire_date, 'YYYY')=2008
GROUP BY job_id
ORDER BY count(*) desc; --별로 좋지 않은 코드(기준점이 명확하지 않아서)

SELECT job_id, COUNT(*)
FROM employees
WHERE hire_date >= to_date('2008-01-01','yyyy-mm-dd')
AND hire_date < to_date('2009-01-01','yyyy-mm-dd')
GROUP BY job_id
ORDER BY count(*) desc; --이런 식으로 코드 짜는게 좋다

--문제 45. .. decode 사용하기
SELECT COUNT(decode(to_char(HIRE_DATE, 'YYYY'), '2001', 2))"2001",
COUNT(decode(to_char(HIRE_DATE, 'YYYY'), '2002', 2))"2002",
COUNT(decode(to_char(HIRE_DATE, 'YYYY'), '2003', 2))"2003"
FROM employees;


SELECT * FROM departments;

SELECT * FROM employees;


--부서 80에 속하는 last_name, job_id, department_name, city를 표시하기 위한 query를 작성합니다.
--employees(last_name, job_id) departments(부서이름) locations(city)
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