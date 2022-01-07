package ch11;

import java.util.HashSet;

public class SetTest {

	public static void main(String[] args) {
		
		HashSet set = new HashSet(); //데이터저장가능크기 가변
		set.add(100);
		set.add("java");
		set.add(new Employee(100, "박사원", 360000.55));
		set.remove(100);
		set.add("java"); //중복 무시
		
		System.out.println(set.size());
		
		
		
		
		
	}
}