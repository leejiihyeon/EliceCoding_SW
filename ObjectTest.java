package ch9;

public class ObjectTest {

	public static void main(String[] args) {
		
		MyObject o1 = new MyObject(100, "java");
		MyObject o2 = new MyObject(100, "java");
		
		//getClass().getName() + '@' + Integer.toHexString(hashCode())
		//패키지명.클래스명@16진수(주소값)
		//java.lang.Object@15db974
		System.out.println(o1/*.toString()*/); //200-java형태 출력하도록 수정-메소드 오버라이딩
		//System.out.println(o1.toString());
		System.out.println(o2); //100-java형태 출력
		//System.out.println(o2.toString());
		
		//equals 메소드 객체 참조형 동등성 비교
		//Object 클래스 equals 메소드 객체 참조형 동등성 비교(String equals 다르다)
		// == 동등비교 연산자 : 기본형, 참조형 동등성 비교
		
		if(o1==o2) { //주소 비교. 메소드 오버라이딩 불가
			System.out.println("o1==o2 true");
		}
		if(o1.equals(o2)) { //MyObject 타입이고 code, msg 변수값 동일하면 true
			System.out.println("o1.equals(o2) true");
		}
	}		
}

class MyObject /*extends Object*/{
	int code;
	String msg;
	MyObject(int code, String msg) {
		this.code = code;
		this.msg = msg;
	}
	@Override
	public String toString() {
		return code + "-" + msg;
		
	}
	@Override
	public boolean equals(Object obj) { //o1.equals(o2) //obj=o2;
		//MyObject 타입이고 code, msg 변수값 동일하면 true
		if(obj instanceof MyObject) {
			if(this.code == ((MyObject)obj).code && this.msg.equals(((MyObject)obj).msg));
				return true;
		}
		else {
			return false;
		}
	}
}