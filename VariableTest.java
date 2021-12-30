package ch6;

class A {
	
	int i; //인스턴스 변수=객체 변수=필드 변수=멤버 변수 - 인스턴스변수는 자동초기저장값이 정해져 있다.
	void m() {
		int j = 0; //m메소드가 가지고 있는 지역 변수 -지역 변수는 자동초기화값이 정해져 있지 않다. 반면 인스턴스변수는 자동초기저장값이 저장되어 있다. 그러므로 지역변수는 값을 꼭 초기화 해줘야 한다.
		System.out.println(i+j);
		for(int k=0 ; k<10 ; k++) { //for블록 지역 변수
			System.out.println(k);
		}
		//System.out.println(k); for블록 밖에 있기 때문에 정 쓰고 싶다면 for문 바로 위에 쓰기 int k=0; 이렇게..
	}
	void m2() {
		//System.out.println(i-j);
		System.out.println(i); //자바에서 실행하려면 main 메서드가 있어야 한다. 하지만 A클래스에는 메인 메서드가 없다. 그러므로 밑에 메인 메서드에서 A클래스를 불러와야 실해행된다.
	}
}

public class VariableTest {

	public static void main(String[] args) {
		
		A a1 = new A();
		a1.m2();
		a1.m();

	}
}