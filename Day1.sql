/*
데이터 베이스 : 유용한 데이터의 집합이고 정보를 검색, 수정, 삭제까지 할 수 있다. 

데이터 베이스 관리 시스템 : 기업이 지속적으로 유지 관리하는 데이터의 집합을 데이터베이스라 하며 
이러한 방대한 양의 데이터를 편리하게 저장하고 효율적으로 관리하고 검색할 수 있는 환경을 제공해주는 시스템 소프트웨어를 데이터베이스 관리시스템(DBMS)라고 한다.  
DBMS는 데이터베이스를 관리하기 위해 필요한 수행 과정인 데이터의 추가, 변경, 삭제 검색 등의 기능을 집대성한 소프트웨어 패키지 이다.
데이터 베이스를 저장 및 관리해야 하는 기관이나 기업의 정보시스템 구축에 반드시 필요한 소프트웨어이다. 
DBMS를  데이터베이스내의 데이터를 관리하는 파일관리자고 생각할 수도 있다. 

ROWID : 테이블의 특정 레코드로 랜덤하게 접근하기 위한 논리적인 주소값

ROWNUM : 오라클 내부적으로 처리하기 위한 각 레코드에 대한 일련번호

-관계형 데이터베이스 관리 시스템은 가정 일반적인 형태의 DBMS이다.
-정보를 저장하기 위해 테이블 이용한다. (2차원형태의 표처럼 행과 열로 구성)  

-메타데이터에 의해서 데이터 딕셔너리라고 불리는 곳에 저장한다.

메타데이터 : 테이블일 경우 컬럼 도메인 제약조건

-사용자와 관계형 데이터베이스를 연결해 주는 표준 검색언어를 SQL이라 한다. 

-DB에는 데이터를 직접 조회할때 사용한다.

-DQL - SELECT(데이터검색 시 사용) 

데이터정의어(DDL) - CREATE(테이블 생성), ALTER(테이블 변경), DROP(테이블 삭제), RENAME(테이블 이름 변경)
 
데이터(DML) 조작어 :
DML(Data Manipulation Language)
명령은 데이터를 입력, 수정, 삭제(INSERT,UPDATE,DELETE)하는 SQL명령어이다. 
데이터베이스에 영구적으로 반영되지 않은 데이터 조작 명령어들을 TRANSACTION이라고 하며 오라클에서는 이를 하나의 논리적 작업 단위로 사용한다.

DCL-GRANT,REVOKE
(ORACLE 데이터베이스와 그 구조에서 액세스 권한을 제공하거나 제거한다.)

TCL- COMMIT,ROLLBACK, SAVEPOINT
*/

SELECT * FROM employees;

--테이블 딕셔너리
SELECT * FROM tab


--hr


SELECT * FROM departments;

--테이블 구조
desc employees;


--NOT NULL : NULL값을 허용하지 않는다.


SELECT last_name, salary, salary + 300 FROM employees;


SELECT last_name, salary, 12 * salary + 100 FROM employees;


/*
NULL값은 알 수 없는 값, 사용할 수 없는 값, 할당할 수 없는 값, 적용할 수 없는 값을 의미한다.
NULL은 0 또는 공백과 다르다.
한 행의 특정 열에 데이터 값이 없으면 그 값을 NULL이라고 하거나 NULL을 포함한다고 한다.
NULL은 알 수 없는 값, 사용할 수 없는 값, 할당할 수 없는 값, 적용할 수 없는 값을 의미하며 0이나 공백과는 다르다.
0은 숫자고 공백은 하나의 문자이다.
모든 데이터 유형의 열에는 NULL이 포함될 수 있다. 하지만 NOT NULL 및 PRIMARY KEY등의 제약 조건이 지정된 열에는 NULL을 사용할 수 없다.
산술식에서 열의 값이 NULL이면 결과는 NULL이다. 예를 들면 숫자를 0으로 나누면 오류가 발생한다.
하지만 NULL로 나누면 결과는 NULL이거나 알 수 없다.
*/


--열 별칭
SELECT last_name AS name, commission_pct comm FROM employees;


/*
첫번째 예제는 모든 사원의 이름과 커미션 비율을 표시한다.
예제에서는 선택 사항인 AS키워드가 열 별칭 이름 앞에 사용되었는데 질의 결과는 as키워드의 사용에 관계 없이 동일하다.
또한 SQL문에 열 별치인 name 및 comm이 소문자로 되어 이지만 질의 결과에서는
열머리글이 대문자로 표시된다. 열 머리글은 기본적으로 대문자로 표시된다.
*/


/*
연결 연산자
열 또는 문자열을 다른 열에 연결한다
두 개의 세로선(||)으로 연결
연결연산자를 사용하면 열을 다른 열, 산술식 또는 상수 값에 연결하여 문자식을 생성할 수 있다.
이 연산자의 좌우에 있는 열이 결합되어 하나의 열로 생성된다.
*/

SELECT last_name || job_id AS "Employees" FROM employees;


--리터럴 문자열
SELECT last_name ||' is a '|| job_id AS "Employee Details" FROM employees;


/*
employees 테이블에서 employee_id, last_name과 first_name은 연결해서 표시하고
(공백으로 구분) 열 별칭은 화면 예 처럼 보고서 작성해주세요
*/
SELECT employee_id AS "Emp#", last_name ||' '|| first_name AS "Employee Name" FROM employees;


--employees 테이블에서 컬럼중에 last_name, job_id를 연결해서 표시하고(쉼표와 공백으로) 화면 예처럼 보고서 작성하세요.
SELECT last_name || ', ' || job_id AS "Employee and Title" FROM employees;


--departments 테이블에 있는 데이터에서 department_name, manager_id 컬럼을 가지고 화면 결과 처럼 출력하는 쿼리 문장을 만드시오.
SELECT department_name ||q'[Department's Manager id : ]'|| manager_id as "Department and Manager" from departments;


--SELECT 절에서 DISTINCT 키워드를 사용하여 중복 행을 제거한다.


SELECT DISTINCT department_id FROM employees;

/*
선택되는 행 제한
WHERE 절을 사용하여 질의에서 반환되는 행을 제한할 수 있다.
WHERE 절은 만족해야 할 조건을 포함하며 FROM 절 바로 다음에 온다.
조건이 참일 경우, 조건을 만족하는 행이 반환 된다.
*/


--WHERE 절 사용
SELECT employee_id, last_name, job_id, department_id FROM employees WHERE department_id = 90;


/*
문자열 및 날짜
문자열 및 날짜 값은 작은 따옴표로 묶는다.
문자 값은 대소문자를 구분하며 날짜 값은 날짜 형식을 구분한다.
기본 날짜 형식은 DD-MON-RR(일-월-연도)이다.
*/


--문자열 및 날짜 변경(DD-MON-RR(일-월-연도)을 RR-MON-DD로 변경)
SELECT * FROM employees;
ALTER session set nls_date_format = "RR/MM/DD";


--비교 조건 연산자 .. <> : 같지 않음


--employees 테이블에서 급여가 3000보다 작거나 같은 사원들의 last_name, salary를 출력하여라.
SELECT last_name, salary FROM employees WHERE salary<=3000;


SELECT last_name, salary FROM employees WHERE salary BETWEEN 2500 AND 3500;


--AND 사용
SELECT last_name, salary FROM employees WHERE salary >= 2500 AND salary <= 3500;


--IN 멤버 조건을 사용하면 값이 목록에 있는지 확인할 수 있다.
SELECT employee_id, last_name, salary, manager_id FROM employees WHERE manager_id IN (100, 101, 201);


--사원 이름(성)이 'Gee'이거나 'Smith'인 사원의 정보를 얻자
--출력 결과) 사원 번호, 이름(성), 부서ID, 직무ID(IN 조건 사용)
SELECT employee_id, last_name, department_id, job_id FROM employees WHERE last_name IN ('Gee', 'Smith');


--부서 번호가 50, 80인 부서원 중 월급이 8000이상인 사원의 정보를 얻자
--출력 결과) 사원 번호, 이름(성), 부서ID, 직무ID
SELECT employee_id, last_name, department_id, job_id FROM employees WHERE department_id IN(50, 80) AND salary >= 8000;


--IS NULL 연산자를 사용하여 NULL 여부를 테스트한다.
SELECT last_name, manager_id FROM employees WHERE manager_id IS NULL;

--부서를 발령받지 않은 사원의 정보를 얻자
--출력 결과) 사원 번호, 이름(성), 입사일자, 부서ID
SELECT employee_id, last_name, department_id, hire_date, job_id FROM employees WHERE  department_id IS NULL;


/*
LIKE 조건
05% : 05로 시작하는 문자 검색
%05 : 05로 끝나는 문자 검색
%05% : 05가 들어가는 문자 검색
'_05%' 두번째 문자에 05가 들어가는 문자 검색
*/


--2005년 입사자 중에서 영업사원 이거나 급여를 3000이하를 받는 사원의 정보를 얻자
--출력 결과) 사원 번호, 이름(성), 입사일자, 직무ID, 급여
SELECT employee_id, last_name, hire_date, job_id, salary FROM employees WHERE hire_date LIKE '05%' AND (job_id LIKE 'SA%' OR salary<=3000);


--employees 테이블에 있는 데이터 중에 job_id가 SA로 시작되고 급여는 10000이상 받는 사원들의 모든 정보를 출력하라.
SELECT job_id, salary FROM employees WHERE job_id LIKE 'SA%' AND salary>=10000;


--last_name의 세번째 문자가 'a' 또는 'e'가 포함된 모든 사원들이 last_name을 출력하세요.
SELECT last_name FROM employees WHERE last_name LIKE '__a%' OR last_name LIKE '__e%';


--employees 테이블에 있는 데이터에서 job_id 컬럼의 값이 SA로 시작하고 10000 이상의 salary(급여)를 받고 2005년도에 입사한(hire_Date) 모든 사원들의 정보를 출력하세요
--(and, between~and, and~and)
--함수 : to_date() 문자를 날짜 데이터 타입으로 변화해 주는 함수
SELECT * FROM employees WHERE job_id LIKE 'SA%' AND salary >= 10000 AND hire_date >= to_date('2005/01/01', 'yyyy/mm/dd') AND hire_date >= to_date('2005/12/31 23:59:59', 'yyyy/mm/dd hh24:mi:ss');


--*
SELECT * FROM employees WHERE job_id LIKE 'SA%' AND salary >= 10000 AND hire_date BETWEEN to_date('2005/01/01', 'yyyy/mm/dd') AND to_date('2005/12/31 23:59:59', 'yyyy/mm/dd hh24:mi:ss');


--employees 테이블에서 job_id 컬럼의 값이 SA_REP 또는 AD_PRES 사원들 중에 급여가 10000초과 한 사원들의 모든 정보를 출력하세요.
SELECT * FROM employees WHERE job_id LIKE 'SA_REP' OR job_id LIKE'AD_PRES' AND salary>10000;
SELECT * FROM employees WHERE job_id IN ('SA_REP','AD_PRES') AND salary>10000;


--employees 테이블에서 job_id 컬럼의 값이 IT_PROG, ST_CLERK, SA_REP가 아닌 모든 사원의 last_name, job_id를 출력하세요.
SELECT last_name, job_id FROM employees WHERE job_id != 'IT_PROG' AND job_id != 'ST_CLERK' AND job_id != 'SA_REP';
SELECT last_name, job_id FROM employees WHERE job_id not in('IT_PROG', 'ST_CLERK', 'SA_REP');


/*
ORDER BY절
ASC : 오름차순, 기본값
DESC : 내림차순
*/

--2006년도에 입사한 사원의 employee_id, last_name, hire_date를 출력하세요
SELECT employee_id, last_name, hire_date FROM employees WHERE hire_date >= to_date('2006/01/01', 'yyyy/mm/dd') and hire_date < to_date('2007/01/01', 'yyyy/mm/dd');


--80번 department_id 사원중에 commission_pct 값이 0.2이고 job_id는 SA_MAN인 사원의 employee_id, last_name, salary를 출력하세요
--부서 번호 : department_id(80)
--commission_pct : 0.2
--job_id : SA_MAN
SELECT employee_id, last_name, salary FROM employees WHERE department_id=80 AND commission_pct=0.2 AND job_id LIKE 'SA_MAN';


--salary가 5000~12000의 범위에 속하지 않는 모든 사원의 last_name 및 salary를 출력해주세요
SELECT last_name, salary FROM employees WHERE salary <5000 OR salary>12000;
SELECT last_name, salary FROM employees WHERE salary NOT BETWEEN 5000 AND 12000;


--Matos 및 Taylor라는 last_name을 가진 사원의 last_name, job_id, hire_date를 출력하세요. hire_Date를 기준으로 오름차순으로 출력되도록 SQL문을 작성합니다(or, in)
--3번째 컬럼을 기준으로 오름차순
SELECT last_name, job_id, hire_date FROM employees WHERE last_name = 'Matos' or last_name = 'Taylor' ORDER BY 3;
SELECT last_name, job_id, hire_date FROM employees WHERE last_name IN ('Matos', 'Taylor') ORDER BY 3;


--commission_pct에 null이 아닌 모든 사원의 last_name, salary, commission_pct를 출력하세요.
--salary, commission_pct의 데이터를 내림차순으로 정렬합니다.

--*
SELECT last_name, salary, commission_pct FROM employees WHERE commission_pct IS NOT NULL ORDER BY 2 DESC, 3 DESC;


/*
SUBSTR 함수는 문자단위로 시작위치와 자를 길이를 지정하여 문자열을 자른다
INSTR(문자열, 검색할 문자, 시작 지점, n번째 검색 단어) 함수는 찾는 문자의 위치를 반환하는 것이다.
LENGTH 문자열의 길이를 구하기 위해서
INITCAP(매개변수로 들어오는 char의 첫 문자는 대문자로, 나머지는 소문자로 반환하는 함수)
*/

--employees 테이블에 last_name 컬럼의 값 중에 "J" 또는 "A" 또는 "M"으로 시작하는 사원들의 last_name
--(첫번째 문자는 대문자, 나머지는 모두 소문자)과 last_name의 길이를 표시하는 query를 작성한다.
--사원들의 last_name을 기준으로 결과를 오름차순 정렬하여라
SELECT initcap(last_name), length(last_name) FROM employees WHERE last_name LIKE 'J%' OR last_name LIKE 'A%' OR last_name like 'M%' ORDER BY last_name;

SELECT initcap(last_name), length(last_name) FROM employees WHERE substr(last_name, 1, 1) IN('J','A','M') ORDER BY last_name;

--INSTR(문자열, 검색할 문자, 시작 지점, n번째 검색 단어)함수는 찾는 문자의 위치를 반환하는 것이다.


--INSTR (문자열, 검색할 문자, 시작지점, n번째 검색단어) 함수는 찾는 문자의 위치를 반환하는 것이다.
SELECT initcap(last_name), length(last_name) FROM employees WHERE instr(last_name, 'J')=1 OR instr(last_name, 'M')=1 OR instr(last_name, 'A')=1;

--like "Name", "Length" 별칭
SELECT INITCAP(last_name)"Name", length(last_name)"Length" FROM employees WHERE last_name like 'J%' OR last_name like 'A%' Or last_name like 'M%' ORDER BY last_name; 


--employees 테이블에서 department_id(부서코드)가 50번 사원들 중에 last_name에 두번째 위치에 "a" 글자가 있는 사원들을 조회하세요.
--like, SUBSTR, INSTR
--LIKE 
SELECT last_name FROM employees WHERE department_id = 50 AND last_name LIKE '_a%'; 


--SUBSTR  
SELECT last_name FROM employees WHERE department_id = 50 AND substr(last_name, 2, 1) = 'a';


--INSTR 
SELECT last_name FROM employees WHERE department_id = 50 AND instr(last_name, 'a') = 2;

/*
문자 함수
첫 글자만 대문자로 변환하고 나머지 글자는 소문자로 변환
select initcap('SQL Course') from dual;
*/

SELECT initcap('SQL Course') FROM dual;

SELECT LOWER('SQL Course') FROM dual; --소문자로 변환

SELECT UPPER('SQL Course') FROM dual; --대문자로 변환

SELECT CONCAT(CONCAT('Hello','World'), '!') from dual; --문자를 연결할 때

SELECT 'Hello' || 'World' || '!' FROM dual;

SELECT substr('HelloWorld', -5, 3) from dual;

SELECT LENGTH('HIHI') FROM dual;

SELECT REPLACE ('HelloWorld', 'hello', 'HI') FROM dual;