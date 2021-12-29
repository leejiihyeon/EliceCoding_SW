package test;
/*
사다리꼴 면적 실수: 300.xxx
윗변 : 정수  = 10
아랫변 : 정수 = 15
높이 : 정수 = 12
사다리꼴 면적 구하는 식 :  [(윗변 + 아랫변) × 높이 ÷ 2]
*/
public class Ex3 {

	public static void main(String[] args) {
		
		int x=10; //윗변
		int y=15; //아랫변
		int h=12; //높이
		
		int area=(x+y)*h/2;
		
		System.out.println("사다리꼴 면적 : "+area);
		
	}
}