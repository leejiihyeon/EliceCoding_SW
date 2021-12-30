package ch6;

class B {
	int i=10; //인스턴스변수
	static int j = 20; //클래스변수
	void m1() { //인스턴스메소드에서 인스턴스변수+클래스변수 사용
		System.out.println(i+j);
	}
	static void m2() {
		System.out.println(j);
		
	}
}
public class StaticMethodTest {
	static void test() {
		System.out.println("클래스=StaticMethodTest");
	}
	public static void main(String[] args) {
		
		B b1 = new B();
		b1.m1();
		B.m2(); //b1.m2();
		
		StaticMethodTest s = new StaticMethodTest();
		s.test();
		
//		Integer.parseInt(s)
//		Math.random()
		
		
	}
}