package Hash;

import java.util.Arrays;
import java.util.HashSet;

public class Hash {

	public static void main(String[] args) {
		
		//1. 자바에서 집합 사용 - HashSet
		System.out.println("[HashSet]");
		HashSet set1 = new HashSet();
		set1.add(1);
		set1.add(1);
		set1.add(1);
		System.out.println("set1 = " + set1); //set은 중복되서 들어가지 않아 1만 출력 됨
		set1.add(2);
		set1.add(3);
		System.out.println("set1 = " + set1); //set1 = [1, 2, 3]
		set1.remove(1);
		System.out.println("set1 = " + set1); //set1 = [2, 3]
		System.out.println(set1.size()); //2
		System.out.println(set1.contains(2)); //true
		
		
		System.out.println("[집합연산-교집합]");
		HashSet a = new HashSet(Arrays.asList(1, 2, 3, 4, 5));
		HashSet b = new HashSet(Arrays.asList(2, 4, 6, 8, 10));
		
		a.retainAll(b); //a에는 교집합 원소만 남는다
		System.out.println("교집합 : " + a); //교집합 :[2, 4]
			
		System.out.println("[집합연산-합집합]");
		a.addAll(b);
		System.out.println("합집합 : " + a); //[1, 2, 3, 4, 5, 6, 8, 10]
		
		System.out.println("[집합연산-차집합]");
		a.removeAll(b);
		System.out.println("차집합 : " + a); //[1, 3, 5]
		
	}
}