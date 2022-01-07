package ch11;

import java.util.ArrayList;

class Employee {
	int id;
	String name;
	double pay;
	
	public Employee(int i, String string, double d) {
		this.id = id;
		this.name = name;
		this.pay = pay;
	
	}
	public String toSring() {
		return id+"-"+name+"-"+pay;
	}
}

public class ListTest {

	public static void main(String[] args) {
		
		// 1. 동일타입 데이터만 저장 구조 2. 길이 한정
		String [] sarr = new String[100];
		
		// 1. 모든 타입 데이터 저장 구조 2. 길이 가변(저장 예측 데이터 갯수 + xxxx)
		//ArrayList list = new ArrayList(5, 3); //최초 10개 공간 + 3개씩 자동 증가
		//ArrayList list = new ArrayList(); //최초 10개 공간 + 10개씩 자동 증가 
		
		//jdk 1.5 이후
		int i = 100;
		int i2 = new Integer(100);
		
		ArrayList list = new ArrayList(5); //최초 5개 공간 + 5개씩 자동 증가
		list.add("java");
		list.add(100);
		list.add(3.14);
		list.add("java");
		list.add(100);
		list.add(3.14);
		
		Employee e1 = new Employee(100, "박과장", 500000.55);
		Employee e2 = new Employee(100, "김대리", 400000.55);
		Employee e3 = new Employee(100, "최부장", 600000.55);
		
		list.add(e1);
		list.add(e2);
		list.add(e3);
		
	
		//list.remove(0);
		//list.set(0, 200);
		System.out.println(list.size());
		
		for(int i1=0 ; i1<list.size(); i1++) {
			System.out.println(i1+"번째인덱스값 : "+list.get(i1)/*to.String()*/);
			
			System.out.println("================================================");
			
			for(Object one : list) {
				System.out.println(one);
			}
		}
	}
}