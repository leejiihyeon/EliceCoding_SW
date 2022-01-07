package ch11;

import java.util.ArrayList;

public class EmployeeListTest {

	public static void main(String[] args) {

		Employee[] e = new Employee[5];
		ArrayList<Employee> list = new ArrayList<Employee>(5); //최초 5개 공간 + 5개씩 자동 증가
		//Employee 타입 데이터저장 의도 list 알려줌 - 컴파일러 타입 체크 오류
//		list.add("java");
//		list.add(100);
//		list.add(3.14);
//		list.add("java");
//		list.add(100);
//		list.add(3.14);

		Employee e1 = new Employee(100, "박과장", 500000.55);
		Employee e2 = new Employee(100, "김대리", 400000.55);
		Employee e3 = new Employee(100, "최부장", 600000.55);
		
		list.add(e1); //자동형변환 ( Object<-Employee)
		list.add(e2);
		list.add(e3);
		
		System.out.println(list.size());
		
		for(int i=0 ; i<list.size(); i++) {
			System.out.println(i+"번째인덱스값=" + ((Employee)list.get(i)).name);
		}
			System.out.println("================================================");
			
			for(Employee one : list) {
				System.out.println(one.name);
		}
	}
}