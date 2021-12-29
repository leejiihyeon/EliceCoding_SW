package ch4;

public class SwitchTest {

	public static void main(String[] args) {

		String name = "이자바";
		
		//java, db, algorithm 시험 점수 - 100
		int java = (int)(Math.random() * 100) + 1; // 1~100 난수 저장 - 재실행
		int db = (int)(Math.random() * 100) + 1;
		int algo = (int)(Math.random() * 100) + 1;
		int sum = java + db + algo;
		int avg = sum / 3;
		double avgDouble = sum / 3;
		
		System.out.println(name + " 학생은 자바점수="+java + ", db점수="+db+", 알고리즘 점수="+algo);
		System.out.println(name + " 학생은 자바점수="+sum+", 정수 평균="+avg+",실수 평균="+avgDouble);
		
		System.out.println();
		
		/*
		avg : 90이상 100점이하 A등급 부여
		avg : 80이상 90점이하 B등급 부여
		avg : 70이상 80점이하 C등급 부여
		avg : 나머지 미수료 부여
		*/
		
		int avg10 = avg / 10; //100/10 --> 10
		
		switch(avg10) {
		case 10:
		case 9: 
			System.out.println("A등급 부여");
			break;
		case 8:
			System.out.println("B등급 부여");
			break;
		case 7:
			System.out.println("C등급 부여");
			break;
		default:
			System.out.println("기타 등급 부여");
		

		//avg : 90 A등급 부여
		//avg : 80 B등급 부여
		//avg : 70 C등급 부여
		//avg : 나머지 기타등급 부여
		
		//switch
//		switch(avg) {
//		case 90: //if(avg==90) 의미
//			System.out.println("A등급 부여");
//			break;
//		case 80:
//			System.out.println("B등급 부여");
//			break;
//		case 70:
//			System.out.println("C등급 부여");
//			break;
//		default:
//			System.out.println("기타 등급 부여");
			
		} //switch end
	} //main end
} //class end