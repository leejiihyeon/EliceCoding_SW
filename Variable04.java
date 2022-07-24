package JavaBasic;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashMap;

public class Variable04 {

	public static void main(String[] args) {
		
		/*
		자료형 - 리스트(List)
		1. 배열과 같이 여러 데이터를 담을 수 있는 자료형
		2. 추가로 여러가지 메소드를 제공
		ArrayList l1 = new ArrayList();
		l1.add(1);
		3. 리스트 메소드 => add, get, size, remove, clear, sort, contains
		
		자료형 - 맵(Map)
		1. key, value 형태로 데이터를 저장하는 자료형
		HashMap<String, String>map = new HashMap<String, String>();
		map.put("product", "kiwi");
		map.put("price", "9000");
		2. 맵 메소드 => put, get, remove, containsKey

		자료형 - 제네릭스(Generics)
		1. 자료형을 명시적으로 지정
		2. 제한적일 수 있지만 안정성을 높여주고 형변환을 줄여줌
		ArrayList<String>l1 = new ArrayList<String>();
		HashMap<String, Integer>map1 = new HashMap(String, Integer>();
		*/
		
		//1. 자료형 - 리스트
		System.out.println("== 리스트 ==");
		ArrayList l1 = new ArrayList();
		
		//1-1. add
		l1.add(1);
		l1.add("hello");
		l1.add(2);
		l1.add(3);
		l1.add(4);
		l1.add("world!");
		System.out.println("l1 = " + l1);
		
		l1.add(0, 1);
		System.out.println("l1 = " + l1);
		
		//1-2. get
		System.out.println(l1.get(0));
		System.out.println(l1.get(3));

		
		//1-3. size
		System.out.println(l1.size());
		
		//1-4. remove
		System.out.println(l1.remove(0));
		System.out.println("l1 = " + l1);
		
		System.out.println(l1.remove(Integer.valueOf(2))); //리스트중 2라는 값을 지움
		System.out.println("l1 = " + l1);
		
		
		//1-5. clear
		l1.clear();
		System.out.println("l1 = " + l1);

		//1-6. sort(정렬)
		ArrayList l2 = new ArrayList();
		l2.add(5);
		l2.add(3);
		l2.add(4);
		System.out.println("l2 = " + l2);

		l2.sort(Comparator.naturalOrder()); //오름차순
		System.out.println("l2 = " + l2);
		l2.sort(Comparator.reverseOrder()); //내림차순
		System.out.println("l2 = " + l2);
		
		//1-7. contains : 데이터가 들어있는지 체크
		System.out.println(l2.contains(1)); //false
		System.out.println(l2.contains(3)); //true
		
		//2. Maps
		System.out.println("== Maps ==");
		HashMap map = new HashMap();
		
		//2-1. put
		map.put("kiwi", 9000);
		map.put("apple", 10000);
		map.put("mango", 12000);
		System.out.println("map = " + map);
		
		//2-2. get
		System.out.println(map.get("mandarine")); //null
		System.out.println(map.get("kiwi")); //9000
		
		
		//2-3. size
		System.out.println(map.size()); //3
		
		//2-4. remove
		System.out.println(map.remove("kiwi")); //9000
		System.out.println(map.remove("mandarine")); //null
		System.out.println("map = " + map);
		
		//2-5. containsKey
		System.out.println(map.containsKey("apple")); //true
		System.out.println(map.containsKey("kiwi")); //false
		
		
		//3. Generics
		System.out.println("== Generics ==");
		
		ArrayList l3 = new ArrayList();
		l3.add(1);
		l3.add("hello");
		System.out.println("l3 = " + l3); //l3 = [1, hello]
		
		ArrayList<String> l4 = new ArrayList<String>();
		//l4.add(1); => String(문자열)타입만 출력 가능
		l4.add("hello");
		System.out.println("l4 = " + l4);
		
		HashMap map1  = new HashMap();
		map1.put(123, "id");
		map1.put("apple", 100000);
		System.out.println("map1 = " + map1);
		
		HashMap<String, Integer> map2 = new HashMap<>();
		//map2.put(123, "id");
		map2.put("apple", 100000);
		System.out.println("map2 = " + map2);
		
	}
}