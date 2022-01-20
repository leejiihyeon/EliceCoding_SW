package jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class ConnectionTest {

	public static void main(String[] args) {
		try {
		//mysql db용 jdbc driver 로드	
		Class.forName("com.mysql.cj.jdbc.Driver");
		//db 연결
		Connection conn = 
		DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/employeesdb", "emp", "emp");
		System.out.println("mysql db 연결 성공");

        // emp_copy 테이블 레코드 저장 - 
		//employee_id :자동증가 first_name, salary, hire_date:current_date

		//String insertSQL = "insert into emp_copy (SELECT EMPLOYEE_ID, FIRST_NAME, SALARY, HIRE_DATE FROM EMPLOYEES)";
		
		
		//String insertSQL = "insert into emp_copy values (null, '이름', 10000 ,  CURRENT_DATE)";
		
		//명령행 매개변수 이용
		//RUN CONFIGURATION - ARGUMENTS - PROGRAM ARGUMENTS - 이사원 20000 - args[0] args[1]
		//
		String insertSQL = "insert into emp_copy values (null, '"  + args[0] + "', " + args[1] + " ,  CURRENT_DATE)";
		
		//sql 저장 - 전송 - 실행결과 저장
		Statement st = conn.createStatement();
		int insertROW = st.executeUpdate(insertSQL);
		System.out.println(insertROW + " 개의 행 삽입 완료");
		
		conn.close();
		System.out.println("mysql db 연결 해제 성공");		
		}
		catch(ClassNotFoundException e) {
			System.out.println("mysql driver 미설치 또는 드라이버이름 오류");
		}
		catch(SQLException e) {
			System.out.println("db접속오류이거나 sql문장오류");
			e.printStackTrace();
		}

	}

}


