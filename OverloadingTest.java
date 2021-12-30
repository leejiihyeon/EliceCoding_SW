package ch6;

class Arithmetic {
	int add(int i, int j) {
		return i+j; //정수 덧셈
	}
	double add(double i, double j) {
		return i+j; //실수 덧셈
	}
	String add(String i, String j) {
		return i+j; //문자열 결합
	}
}

public class OverloadingTest {

	public static void main(String[] args) {
		
		Arithmetic a = new Arithmetic();
		double r1 = a.add(1.1, 2.5);
		String r2 = a.add("java", "jsp");
		int r3 = a.add(100, 200);
		double r4 = a.add(3.14, 1);
		System.out.println(r1);
		System.out.println(r2);
		System.out.println(r3);
		System.out.println(r4);
		
		//무슨 뜻인지 찾아보자ㅠㅠㅠ
		int decimal = Integer.parseInt("100");
		int bin = Integer.parseInt("100", 2);
		int hex = Integer.parseInt("100", 16);
		System.out.println(decimal);
		System.out.println(bin);
		System.out.println(hex);
		
	}
}