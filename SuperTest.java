package ch7;

class A {
	int i;
	A(String s) {
		System.out.println("A생성자 호출");
		i = 10;
	}
}

class B extends A {
	int j;
	B() {
		this("전달");
		System.out.println("B생성자 호출");
		j = 100;
	}
	B(String s) {
		super(s);
	}
}


public class SuperTest {

	public static void main(String[] args) {

		B b1 = new B();
		System.out.println(b1.j);
		System.out.println(b1.i);
		
		
	}
}