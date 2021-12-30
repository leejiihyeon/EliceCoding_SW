package ch6;

class Sample { //메소드 정의(리턴 타입 이름 구현) == 실행을 의미하는 것은 아니다. 정의 된 메소드를 호출이 되어야 실행 됨.
	void m1() {
		System.out.println("m1");
	}
	int m2() {
		return 10*10;
	}
	double m3() {
		double pi = 3.14;
		return pi;
	}
	int[] m4() {
		int [] i = {1, 2, 3, 4, 5};
		return i;
	}
	String m5() {
		return "java";
	}
	Employee m6() {
		Employee e1 = new Employee();
		return e1;
	}
	Person m7() {
		Person p1 = new Person();
		p1.name = "박정보";
		if(p1.name.equals("박정보")) {
			//return p1;
		} else {
			p1 = new Person();
			p1.name = "박정보";
			//return p2;
		}
		return p1;
	}
	
	void m8() {
		System.out.println("m8 시작");
		if(1>0) {
			return; //return은 메서드 중단합니다라는 뜻! 그러므로 s.o.p 출력 안함! 참고로 break, continue는 반복문 중단을 뜻함!
		}
		System.out.println("m8 종료");
	}
	
}

public class ReturnTest {

	public static void main(String[] args) {

		Sample s = new Sample(); //객체생성=메모리 복사본 메모리 저장
		Employee r6 = s.m6();
		System.out.println(r6);
		String r5 = s.m5();
		int[] r4 = s.m4();
		double r3 = s.m3();
		int r2 = s.m2();
		s.m1(); //m1메소드는 리턴해주는게 없어서 앞에 뭐 안 붙이고 s.m1이라고만 씀
		s.m8();
		System.out.println("main종료");
	}
}