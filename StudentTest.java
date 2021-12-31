package ch6;

class Student {
	//Student () { } //자동 정의 = default constructor
	Student(int i, String n, String m) { //생성자 1개 정의 //{System.out.println("생성자호출");} //사용자 정의 변경 = default constructor 수정
		this.id = i;
		this.name = n;
		this.major = m;
	}
	int id; //학번
	String name;
	String major; //전공
	void study() { //메서드 study
		System.out.println(name + " 학생은 " + major + " 공부를 열심히 합니다.");
	}
	Student() {
		id= -1;
		name = "none";
		major = "전공미정";
		
	}
}


public class StudentTest {

	public static void main(String[] args) {
		
		Student st1 = new Student(10000, "김대한", "it전산학");
		//st1.id = 10000;
		//st1.name = "김대한";
		//st1.major = "it전산학";
		st1.study();
		
		Student st2 = new Student(20000, "박민국", "한국어문학");
//		st2.id = 20000;
//		st2.name = "박민국";
//		st2.major = "한국어문학";
		st2.study();
		
		Student st3 = new Student(10000, "김대한", "it전산학");
		st3.study();

		C c1 = null; //null 값 명시적 저장
		C c2 = new C(); //객체주소값 저장
		System.out.println(c1);
		System.out.println(c2); //ch6.C@15db9742
	}
}

class C {
	int i = 10, j = 20 , k = 30;
	
}

class D {
	int i, j;
	int l = 10;
	int k = l;
	
	
	D(){}
	D(int i){this.i = i;}
	void m1() {
		System.out.println(j);
	}
}