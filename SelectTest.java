package jdbc;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class SelectTest {

	public static void main(String[] args) {
		try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/employeesdb", "emp", "emp");
		System.out.println("mysql db 연결 성공");

		String selectSQL = "select * from  emp_copy";
		Statement st = conn.createStatement();
		ResultSet rs = st.executeQuery(selectSQL);
		
		int cnt = 0;
		while(rs.next()) {
			cnt++;
			int id = rs.getInt("employee_id");
			String name = rs.getString("first_name");
			double salary = rs.getDouble("salary"); 
			Date hire_date = rs.getDate("hire_date");
			System.out.println(id + "\t" + name + "\t" + salary + "\t" + hire_date);
			
		}
		System.out.println("조회 완료 : 총 " + cnt + " 명 조회");
		
		//
		ResultSet rs2 = st.executeQuery("select count(*) as total from emp_copy");
		int count = 0;
		//1행 이전 참조 
		//1행 이동(1행만 존재)
		rs2.next();
		count = rs2.getInt("total");
		System.out.println("조회 완료 : 총 " + count + " 명 조회");
		
		
		System.out.println(rs.next());//true/false
		rs.close();
		st.close();
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


