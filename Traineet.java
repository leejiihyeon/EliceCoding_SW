package test;

class Trainee {
	String name;
	String sosok;
	String title;
	int fee;
	int addFee;
	int returnFee;
}
 

public class Traineet {

	public static void main(String[] args) {

		/* 실행 : 
		run-run configuration-arguments-program arguments
		이자바 멀티캠퍼스 JSP프로그래밍 50000 5000 */

		Trainee student = new Trainee();
		student.name = args[0];
		student.sosok = args[1];
		student.title = args[2];
		student.fee = Integer.parseInt(args[3]);//"50000"
		student.addFee = Integer.parseInt(args[4]);
		
		/*switch(student.title) {
		case "자바프로그래밍":
			student.returnFee = (int)(student.fee * 0.25 + student.addFee);
			break;
		case "JDBC프로그래밍":
			student.returnFee = (int)(student.fee * 0.2 + student.addFee);
			break;
		case "JSP프로그래밍":
			student.returnFee = (int)(student.fee * 0.15 + student.addFee);
			break;
		default:
			System.out.println("잘못 입력되었습니다.");
		}*/
		
		if(student.title.equals("자바프로그래밍")) {
			student.returnFee = (int)(student.fee * 0.25 + student.addFee);
		}else if(student.title.equalsIgnoreCase("JDBC프로그래밍")) {
			student.returnFee = (int)(student.fee * 0.2 + student.addFee);
		}else if(student.title.equalsIgnoreCase("JSP프로그래밍")) {
			student.returnFee = (int)(student.fee * 0.15 + student.addFee);
		}else{
			System.out.println("잘못 입력되었습니다.");
			return;
		}
		//이름, 소속, 과정명, 교육비, 부가금, 환급금
		System.out.println("이름 : " +  student.name 
				+ "\n소속 : " + student.sosok
				+ "\n과정명 : " + student.title
				+ "\n교육비 : " + student.fee
				+ "\n부가금 : " + student.addFee
				+ "\n환급금 : " + student.returnFee);
		
	}
}