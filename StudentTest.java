package test;
/*
main(String[] args) 메서드를 포함하는 또 다른 클래스를 
작성합니다.
2-1> command line argument - 명령행 매개변수를 이용하여 사용자로부터
  student가 참조하는 객체의 이름, 소속, 과정명, 
  교육비, 부가금을 입력받습니다.
  
2-2> 교육생 클래스의 객체를 생성하여 student
 라는 이름의 변수로 참조하도록 합니다.
이 때 2-1 입력 5개 변수를 이름, 소속, 과정명,
교육비, 부가금 변수값으로 초기화(=값 할당)합니다.

2-3> 환금급을 계산하자
	환급금은 
	과정명이 "자바프로그래밍" 이면
	입력한 교육비의 25% + 부가금 이고,
	과정명이 "JDBC프로그래밍" 이면
	입력한 교육비의 20% + 부가금 이고,

	과정명이 "JSP프로그래밍" 이면
	입력한 교육비의 15% + 부가금 으로        
    계산하여 초기화합니다.

    그밖의 과정명은 
    "잘못 입력되었습니다"는 에러 메시지를 출력합니다.

	올바른 과정명은 
	student  변수 참조 객체 내부의 
	이름, 소속, 과정명, 교육비, 부가금, 환급금을 출력합니다. 
*/

public class StudentTest {

	public static void main(String[] args) {
		
		
		Student s1 = new Student();
		
		s1.name = args[0];
		s1.dept = args[1];
		s1.course = args[2]; 
		s1.pay = Integer.parseInt(args[3]);
		s1.addmoney = Integer.parseInt(args[4]);
		s1.refund = 0;
		
		System.out.println("이름="+s1.name+" 소속="+s1.dept+" 과정="+s1.course+" 교육비"+s1.pay+" 부가금="+s1.addmoney+" 환급금="+s1.refund);
	
		if(s1.course.equals("자바프로그래밍")) {
			s1.refund = (int) (s1.pay*0.25);
			System.out.println(args[0]+" 학생은 "+s1.dept+"에서"+args[2]+" 과정을 듣고 있으며 이 과목의 수강료는 "+s1.pay+"원이고 환급금은 "+s1.refund+"입니다.");
			
		} else if(s1.course.equals("JDBC프로그래밍")) {
			s1.refund = (int)(s1.pay*0.20);
			System.out.println(args[0]+" 학생은"+s1.dept+"에서"+args[2]+"과정을 듣고 있으며 이 과목의 수강료는 "+s1.pay+"원이고 환급금은 "+s1.refund+"입니다.");
		} else if(s1.course.equals("JSP프로그래밍")) {
			s1.refund = (int)(s1.pay*0.15);
			System.out.println(args[0]+" 학생은"+s1.dept+"에서"+args[2]+"과정을 듣고 있으며 이 과목의 수강료는 "+s1.pay+"원이고 환급금은 "+s1.refund+"입니다.");
		} else {
			System.out.println("잘못 입력되었습니다.");
		}
	}
}