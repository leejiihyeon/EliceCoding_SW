package ch4;

public class ifTest {

	public static void main(String[] args) {
		
		String name = "이자바";
		
		//java, db, algorithm 시험 점수 - 100
		int java = 100;
		int db = 50;
		int algo = 75;
		int sum = java + db + algo;
		int avg = sum / 3;
		double avgDouble = sum / 3;
		
		System.out.println(name + " 학생은 자바점수="+java + ", db점수="+db+", 알고리즘 점수="+algo);
		System.out.println(name + " 학생은 자바점수="+sum+", 정수 평균="+avg+",실수 평균="+avgDouble);

		//avg : 90이상 100점이하 A등급 부여
		//avg : 80이상 90미만 B등급 부여
		//avg : 70이상 80미만 C등급 부여
		//avg : 나머지 미수료 부여
		
		if(avg>=90) {
			System.out.println("A등급 부여");
			//93점 이상 a+
			if(avg>=93 ) {
				System.out.println("A+등급 부여");
			}
		}
		else if(avg>=80) { //avg<90 포함
			System.out.println("B등급 부여");
		}
		else if(avg>=70) { //avg<80 포함
			System.out.println("C등급 부여");
		} else {
			System.out.println("미수료 부여");
		}
	}
}