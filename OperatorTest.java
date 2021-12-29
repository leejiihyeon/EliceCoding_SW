package ch3;

public class OperatorTest {

	public static void main(String[] args) {
		
		boolean r1 = true;
		boolean r2 = false;
		boolean r3 = 10>5;
		
		int i1 = 100;
		int i2 = 200;
		double d1 = 100.0;
		boolean r4 = i1 == i2;
		boolean r5 = i1 == d1;
		boolean r6 = (double)i1 == d1;
		
		System.out.println(r4); //false
		System.out.println(r5); //true
		System.out.println(r6); //true
		
		int i3 = 10 / 3;
		int i4 = 10 % 3 ;
		double d2 = 10 /3.0;
		System.out.println("정수몫="+i3); //문자열결합
		System.out.println("나머지="+i4);
		System.out.println("실수몫="+d2);
		System.out.println("덧셈="+100+200);//덧셈=100200
		System.out.println("덧셈="+(100+200));//덧셈=300
		
		int i = 0; //i가 1이면 수료 / 0, -1, -100.. 미수료
		String finish = i == 1 ? "수료" : "미수료";
		System.out.println(finish);
		
	}
}