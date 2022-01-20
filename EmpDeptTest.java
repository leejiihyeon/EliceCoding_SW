package jdbc;
/*  employees 테이블에서 6월 입사자의 사번, 이름, 급여, 입사일을 조회하여
 * Employee 객체로 생성한 후에 ArrayList로 저장하고 출력하는 자바 프로그램을 구현하시오. */

public class EmpDeptTest {

	public static void main(String[] args) {
		EmpDeptTest t = new EmpDeptTest();
		ArrayList<Employee> list = t.selectEmp('06');
		for(Employee e : list) {
			System.out.println(e);
		}
	}//main
	
	ArrayList<Employee> selectEmp(String month){
		
	}

}//EmpDeptTest end

class Employee{
	int employee_id;
	String first_name;
	double salary;
	String hire_date; 
	
	//String d = rs.getString("hire-date");
	//생성자 추가 , toString() 추가 , setter/getter 메소드
	
}
