package jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class UpdateTest {

	public static void main(String[] args) {
		try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/employeesdb", "emp", "emp");
		System.out.println("mysql db 연결 성공");

  		// 명령행 매개변수 이용 이사원 3 입력하면 emp_copy 테이블에서 이사원으 급여 2배로 변경 
		/*update 테이블명 set 변경컬럼명 = 변경값  where 변경레코드조건식 */
		String updateSQL = "update emp_copy set salary = salary*" + args[1] 
				+ " where first_name='" + args[0] + "'";
		
        /*delete from emp_copy where first_name like '%사원%'  */
		/*create table / drop table... - jdbc program (insert delete update select)*/
		Statement st = conn.createStatement();
		int updateROW = st.executeUpdate(updateSQL);
		System.out.println(updateROW + " 개의 행 수정 완료");
		
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


