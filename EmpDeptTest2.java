package jdbc;
/*  employees 테이블에서 6월 입사자의 사번, 이름, 급여, 입사일을 조회하여
 * Employee 객체로 생성한 후에 ArrayList로 저장하고 출력하는 자바 프로그램을 구현하시오. */


import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class EmpDeptTest {

	public static void main(String[] args) {
		EmpDeptTest t = new EmpDeptTest();
		try {
			ArrayList<Employee> list = t.selectEmp("06");
			for(Employee e : list) {
				System.out.println(e.toString());
			}
		}catch(Exception e) {
			e.printStackTrace(); //예외이름+상황설명메시지출력
		}
	}//main
	
	ArrayList<Employee> selectEmp(String month) throws ClassNotFoundException , SQLException{
		ArrayList<Employee> list =  new ArrayList();
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn = 
		DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/employeesdb", "emp", "emp");
		Statement st = conn.createStatement();
		String sql ="select employee_id, first_name, salary, date_format(hire_date, '%Y년도 %m월 %d일') as hire from employees"
				+ " where substr(hire_date, 6, 2)='"  + month  + "'";
		ResultSet rs = st.executeQuery(sql);
		while(rs.next()) {
			int id = rs.getInt("employee_id");
			String name = rs.getString("FIRST_NAME");
			double salary = rs.getDouble("salary");
			//java.sql.Date hire = rs.getDate("hire_date"); //날짜로만 
			
			String hire = rs.getString("hire"); // 날짜--> 문자열 내부 취급
			//System.out.println("출력");
			
			// 1개 레코드(컬럼들) - Employee 객체(인스턴스변수) 1개 매핑
			Employee e = new Employee(id, name, salary, hire.toString());
			//ArrayList 저장 - 1개 레코드 저장 테이블
			list.add(e);
		}
		rs.close();
		st.close();
		conn.close();
	
		return list;//연결해제 이후 다른 메소드 결과 조회 가능
	}

}//EmpDeptTest end

class Employee{
	int employee_id;
	String first_name;
	double salary;
	String hire_date;
	public Employee(int employee_id, String first_name, double salary, String hire_date) {
		super();
		this.employee_id = employee_id;
		this.first_name = first_name;
		this.salary = salary;
		this.hire_date = hire_date;
	}
	@Override
	public String toString() {
		return employee_id + "\t" + first_name + "\t" + salary + "\t" + hire_date;
	}
	
}








