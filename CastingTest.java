class A{
	int ia = 10;
	void ma() {System.out.println(ia);}
}
class B extends A{
//	int ia = 10;
//	void ma() {System.out.println(ia);}
	int ib = 20;
	void mb() {
		System.out.println(ib);
	}
}
class C extends A{
	//	int ia = 10;
	//	void ma() {System.out.println(ia);}
	int ic = 30;
	void mc() {
		System.out.println(ic);
	}
}

class D extends C{
	//	int ia = 10;
	//	void ma() {System.out.println(ia);}
	//	int ic = 30;
	//	void mc() {
	//		System.out.println(ic);
	int id = 40;
	void md() {
		System.out.println(id);
	}
}

public class CastingTest {

	public static void main(String[] args) {

		A a1 = new A(); //Object객체 + A객체
		//자동형변환
		A a2 = new B(); //Object객체 + A객체 + B
		A a3 = new C(); //Object객체 + A객체 + C
		A a4 = new D();  //Object객체 + A객체 + C + D
		//사용 변수나 메소드
//		System.out.println(a1.ia);
//		a1.ma();
//		System.out.println(a2.ia);
//		a2.ma();
//		System.out.println(a3.ia);
//		a3.ma();
//		System.out.println(a4.ia);
//		a4.ma();
		//System.out.println(a1.ib); //오류. 메모리상에 ib 변수 포함 객체가 없다
		
		//System.out.println(a2.ib); //오류. 메모리상에 ib 변수 포함 객체가 생성되었으나 형변한이 되는 바람에 접근이 불가능해졌다.
		//명시적형변환 - B타입 변환
		B b2 = (B)a2;
		System.out.println(b2.ib); //20
		
		//System.out.println(a3.ic); //오류. 메모리상에 ib 변수 포함 객체가 생성되었으나 형변한이 되는 바람에 접근이 불가능해졌다.
		//명시적형변환 - C타입 변환
		C c3 = (C)a3;
		System.out.println(c3.ic); //30
		
		//System.out.println(a4.id); 오류. 메모리상에 ib 변수 포함 객체가 생성되었으나 형변한이 되는 바람에 접근이 불가능해졌다.
		//명시적형변환 - D타입 변환
		D d4 = (D)a4;
		System.out.println(d4.id); //40
		
		//자동형변환 필요 경우 - 변수 타입 통일 - 여러가지 객체 1개 배열 선언
		A array[] = new A[4];
		array[0] = new D();
		array[1] = new C();
		array[2] = new B();
		array[3] = new A();
		
		for(int i=0 ; i<array.length ; i++) {
			//array 4개 객체중 id변수를 포함하고 있는 객체가 있다면 id 변수값 출력
			// = new D() 객체 생성했다면
			if(array[i] instanceof D) { //D 타입 명시적형변환 가능하니
				D d1 = (D)array[i]; //명시적형변환
				System.out.println(i + "번째 인덱스일 때 " + d1.id);
			}
		}
	}
}