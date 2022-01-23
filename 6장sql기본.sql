/* 1.employeesdb.zip 압축 해제한다(2개 *.sql파일들 생성 확인) 
2. c:..\employees\ 2파일 실행 
3. employssdb 내부 6개 테이블 생성
4. 데이터들 입력 
*/

# countries 와 6개 테이블에 입력 데이터 갯수 조회
select count(*) from countries; # 25
select count(*) from departments; # 27
select count(*) from employees; # 107 
select count(*) from jobs;# 19
select count(*) from locations; # 23
select count(*) from regions;# 4


select * from employees; 
select employee_id , first_name , last_name from employees; 
select employee_id, salary  from employees;
select employee_id as 사번, salary as 급여 from employees; 
select employee_id, salary  * 12 as 연봉 from employees; 
select count(*) from employees; 

# 직종코드 종류별 1번 조회
select job_id from employees; 
select distinct job_id from employees; 

show databases;
show tables;
describe employees;

# employees salary 15000 이상인 사원의 사번과 급여 조회
select employee_id as 사번, salary as 급여
from employees
where salary >= 15000;

# employees salary 15000 이상이고 20000 미만인 사원의 사번과 급여 조회
select employee_id as 사번, salary as 급여
from employees
where salary >= 15000  and salary < 20000 ;

# employees 사번이 100번 사원의 사번과 급여 조회
select employee_id as 사번, salary as 급여
from employees
where employee_id = 100  ;

# employees 사번이 100번 또는 200번 또는 250번 사원의 사번과 급여 조회
select employee_id as 사번, salary as 급여
from employees
where employee_id = 100  or employee_id = 200 or employee_id = 250  ;

# employees salary 15000 이상이고 20000 이하인 사원의 사번과 급여 조회
select employee_id as 사번, salary as 급여
from employees
where salary >= 15000  and salary <= 20000 ;

# between ~ and 변경- 범위 연산자
select employee_id as 사번, salary as 급여
from employees
where salary between 15000  and 20000 ;


# employees 사번이 100번 150, 200번 또는 250번 사원의 사번과 급여 조회
select employee_id as 사번, salary as 급여
from employees
where employee_id = 100  or employee_id = 150 or employee_id = 200 or employee_id = 250  ;

# in 변경 - 목록 연산자
select employee_id as 사번, salary as 급여
from employees
where employee_id in (100,  150 , 200, 250)  ;

# like 연산자
#first_name에 en 끝나는 사원의 first_name 조회
# 문자열 - "en"  'e' , db - ' '
# % - 0개이상의 모든 문자열 
select first_name 
from employees
where first_name like  '%en';

# like 연산자
#first_name에 en 끝나는 사원 그리고 이름이 5글자인 사원의 first_name 조회
# 문자열 - "en"  'e' , db - ' '
# % - 0개이상의 모든 문자열 
# _  1개 모든 문자
select first_name 
from employees
where first_name like  '___en';

# 급여 10000 이상 받는 사원을 대상으로 조회하되 급여 적은 사원부터 조회. 급여가 같다면 이름 알파벳 역순 
select first_name, salary as 급여
from employees
where salary >= 10000
order by 급여 asc , 1 desc;


# 급여 10000 이상 받는 사원을 대상으로 조회하되 급여 적은 사원부터 조회. 급여가 같다면 이름 알파벳 역순 
#paging 처리( 한번에 5개씩 - 1페이지)
select first_name, salary as 급여
from employees
where salary >= 10000
order by 급여 asc , 1 desc
limit 0,5;

# 급여 10000 이상 받는 사원을 대상으로 조회하되 급여 적은 사원부터 조회. 급여가 같다면 이름 알파벳 역순 
#paging 처리( 한번에 5개씩 - 4페이지)-
select first_name, salary as 급여
from employees
where salary >= 10000
order by 급여 asc , 1 desc
limit 15,5;


# 이미 생성-데이터 입력 테이블 다른 테이블로 복사
# subquery
create table emp_copy (select first_name, salary from employees where 조건식 );# 2개컬럼, 조건 맞는 행 복사
show tables;
select * from emp_copy;

#부서코드 
#count (컬럼명 ) - 컬럼 not null 데이터 갯수
#count (* ) - 테이블 null/not null 포함 데이터 갯수
select count(department_id) from employees;#106
select count(*) from employees;#107

#sum _ 급여 총합
select sum(salary) from employees;#691416.00  
#AVG _ 급여 평균
select AVG(salary) from employees;#6461.,,,,
select sum(FIRST_NAME) from employees;#691416.00

#최고 급여 조회
SELECT MAX(SALARY) FROM EMPLOYEES;

select sum(salary) as 총합 , avg(salary) , max(salary), min(salary), count(salary) from employees;

# 주의. 그룹함수 결과 1개이므로 다른 컬럼과 동시 SELECT 하지 말 것
# SELECT first_name, MAX(SALARY), MIN(SALARY) FROM EMPLOYEES;


# 전체사원 급여 총합 조회
select sum(salary) FROM EMPLOYEES;

# 부서별 사원 급여 총합 조회수# 주의. 그룹함수 결과 1개이므로 다른 컬럼과 동시 SELECT 하지 말 것
# 단 그룹함수와 조회 컬럼이 group by 절 컬럼 동일하다면 가능
#   department_id 갯수 , sum(salary) 갯수 일치
select  department_id, sum(salary) FROM EMPLOYEES
group by department_id
order by department_id;

# 직종별 급여평균 조회
select  job_id, avg(salary) FROM EMPLOYEES
group by job_id
order by department_id;

# 부서별 직종별 급여평균 조회하되 급여평균 높은 평균값부터 조회
select  DEPARTMENT_ID, job_id, avg(salary) AS A FROM EMPLOYEES
group by DEPARTMENT_ID, job_id
order by A desc;

# 부서별 급여총합 조회하되 급여총합이 300000 이상인 부서만 조회
select department_id, sum(salary)
from employees
group by department_id
having sum(salary) >= 300000;

# 사원의 급여가 5000 이상인 사원들만을 대상으로
# 부서별 급여총합 조회하되 급여총합이 50000 이상인 부서만 조회
# 조회 순서 급여총합 높은 레코드부터 조회
select department_id, sum(salary)
from employees
where salary >= 5000
group by department_id
having sum(salary) >= 50000
order by sum(salary) desc;

/*
1. from 테이블 찾아온다
2. where 조건식 만족한 레코드 찾아온다 - 그룹함수 조건식 불가 - 레코드 갯수 줄어든다 
3. group by 컬럼으로 그룹화한다
4. having 수행한다 결과 만족하는 레코드 찾아온다 - 그룹함수 조건식 가능
5. select 수행한다
6. order by 는 순서 변경한다 
7. limit 갯수만 잘라낸다
8. select 출력한다
*/

# 부서  직종  xxxx
# 부서 (null) xxxxx  
select department_id, job_id , sum(salary)
from employees
where salary >= 5000
group by department_id , job_id with rollup  ;

# hire_date - 사원 입사일 정보 - 
select hire_date from employees; # 2003-06-17 00:00:00
desc employees; # datetime - 

# 입사일이 2005년에 사원의 이름과 입사일 조회
select first_name, hire_date
from employees
where hire_date LIKE '2005%';  

# 입사일이 6월에 사원의 이름과 입사일 조회
select first_name, hire_date
from employees
where hire_date like '_____06%';  # 2017-06-01 00:00:00


select current_timestamp;#현재 서버 실행 컴퓨터 현재시각 내장함수

# 입사일이 2005년 이후에 입사한 사원의 이름과 입사일 조회
# 2005-01-01 00:00:00  ~   
# 숫자 오름차순 - 1< 10...
# 문자 오름차순 - 사전 나열 순서 a < z
# 날ㅉㅏ 오름차순 -  이전 < 최근날짜
select first_name, hire_date
from employees
where hire_date >= '2005-01-01 00:00:00';  


