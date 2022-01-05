class Teacher {
	void teach() {
		System.out.println("가르치다");
	}
}

class StudentWorker extends Teacher implements Worker, Student {

	@Override
	public void study() {
		System.out.println("공부 하다");
	}

	@Override
	public void work() {
		System.out.println("학교 업무를 보다");
	}

	@Override
	public void lunch() {
		System.out.println("점심 먹다");
	}
//
}
public class InterfaceTest {

	public static void main(String[] args) {
	StudentWorker sw = new StudentWorker();
	sw.study(); //인터페이스 구현
	sw.lunch(); //인터페이스 구현(2개 인터페이스 포함)
	sw.work(); //인터페이스 구현
	sw.teach(); //클래스 상속
	System.out.println(Student.name); //인터페이스 상속 2개중 학생 인터페이스
	System.out.println(Worker.name); //인터페이스 상속 2개중 교직원 인터페이스
	
	}
}