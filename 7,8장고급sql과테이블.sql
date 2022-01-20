#문자 날짜 숫자 함수
#조건 함수
#date_format('날짜시간', '%Y%m%d %H:%i:%s')
# instr substr char_length insert 
# round truncate : 지정자릿수( 0-정수 1자리 양수-소수점이하자리 음수- 정수 십,백, 천...) 반올림 / 버림 
# current_date, curdate(), now(), sysdate(), current_time, curtime()
# 경과일수 datediff(최근,오래)
# 경과개월수 period_diff('202212','202101')

# join - 2개 테이블의 컬럼 합침

#rdbms "표준(약속문법sql)" - ansi join 문법
select first_name, department_name
from employees e inner join departments d on e.department_id=d.department_id;

select first_name, department_name
from employees e join departments d on e.department_id=d.department_id;

# mysql(oracle..) 만 지원 join 문법
select first_name, department_name
from employees e , departments d 
where e.department_id=d.department_id;

select first_name, department_name(null가능성)
from employees e left outer join departments d on e.department_id=d.department_id;

select first_name(null가능성), department_name
from employees e right outer join departments d on e.department_id=d.department_id;

select e.first_name, e2.first_name
from employees e inner join employees e2 on e.manager_id=e2.employee_id;

select e.first_name, e2.first_name(null가능성)
from employees e left outer join employees e2 on e.manager_id=e2.employee_id;

#union/union all - 2개 테이블 래코드 합침
#union - 2개 테이블 래코드 합칠 때 2개 테이블 모두 존재 레코드는 1번만 합침
#union all - 2개 테이블 래코드 합칠 때 2개 테이블 모두 존재 레코드는 2번 합침
# 컬럼갯수 타입 순서 일치
select  employee_id, first_name, department_id, job_id
from emp_dept_50
union all
select employee_id, first_name, department_id, job_id
from emp_job_man

# not in / in

#subquery
select   .... (select ....)
create table .. (select ...)

# join - 2개 컬럼 합침 - from 2개테이블이상 

# subquery
select first_name, salary, department_id, job_id
from employees
where department_id=  (select department_id from employees where first_name='kelly');

select first_name, salary, department_id, job_id
from employees
where department_id in  (select department_id from employees where first_name='peter');

select first_name, salary, department_id, job_id
from employees
where salary >  (select salary from employees where first_name='peter');

#salary > all (1000 ,2000 ,3000) ==> salary > 1000 and salary > 2000 and salary > 3000
#salary > any (1000 ,2000 ,3000) ==> salary > 1000 or salary > 2000 or salary > 3000

# not in / in
# 재난지원금을 지원하고자 한다.
# 대상은 50번 부서원이거나 MANAGER 직종으로 한정하여 
# 대상자 사번과 이름, 부서, 직종을 조회한다.- union

# 재난지원금을 지원하고자 한다.
# 대상은 50번 부서원이거나 MANAGER 직종으로 한정하여 (중복 허용) 
# 대상자 사번과 이름, 부서, 직종을 조회한다.- union all

# 재난지원금을 지원하고자 한다.
# 대상은 50번 부서원이면서 MANAGER 직종으로 한정하여 
# 대상자 사번과 이름, 부서, 직종을 조회한다.
select employee_id, first_name, department_id, job_id
from emp_dept_50
where employee_id in (select employee_id from emp_job_man);

# 재난지원금을 지원하고자 한다.
# 대상은 50번 부서원 가운데 MANAGER 직종은 제외하고
# 대상자 사번과 이름, 부서, 직종을 조회한다.
select employee_id, first_name, department_id, job_id
from emp_dept_50
where employee_id not in (select employee_id from emp_job_man);



select  employee_id, first_name, department_id, job_id
from emp_dept_50
union
select employee_id, first_name, department_id, job_id
from emp_job_man;



#8장
# SELECT(JOIN, SUBQUERY) / DML(INSERT , UPDATE, DELETE)
# DDL- 데이터베이스생성, 사용자생성, 테이블 생성 / 수정 / 삭제- 2,3,4장 WORKBENCH 메뉴 -SQL


/*
CREATE DATABASE XXX;
CREATE USER XXX;->ROOT
CREATE TABLE XXX;
*/
SELECT CURRENT_USER;

desc emp_copy;

SELECT * FROM EMP_COPY;

DROP TABLE EMP_COPY;#auto_increment 삭제
CREATE TABLE EMP_COPY #테이블생성. no data, auto_increment 속성x
(SELECT EMPLOYEE_ID, FIRST_NAME, SALARY, HIRE_DATE FROM EMPLOYEES WHERE EMPLOYEE_ID=0);
# INSERT .. (SELECT..) - 이클립스 107 삽입
#auto_increment 추가(INT , PRIMARY KEY  부여)
alter table emp_copy add constraint primary key(employee_id) ;
alter table emp_copy modify column employee_id int auto_increment ;
desc emp_copy;
#이클립스  이사원 20000  입력
SELECT * FROM EMP_COPY;

select count(*) from emp_copy;




