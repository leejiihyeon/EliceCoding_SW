package ch6;

class Data {
	int a = 30;
}

class Call {
	void add(int i) {
		System.out.println("add내부=" + i++);
	}
	void addData(Data d) {
		System.out.println("addData내부 : "+ d.a++);
	}
}


public class CallTest {

	public static void main(String[] args) {
		
		Call c = new Call();
		//int j = 10;
		//기본형 전달 원리
		//c.add(j);
		//System.out.println("main 내부" + j);
		
		Data d1 = new Data();
		c.addData(d1);
		System.out.println("main 내부 : "+d1.a);
	}

}
