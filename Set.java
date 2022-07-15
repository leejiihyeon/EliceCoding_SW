package Math;
import java.util.ArrayList;
//ArrayList를 사용한 집합 구현 실습(집합 관련 연산 사용 X)
import java.util.Arrays;
import java.util.HashSet;

class MySet {
	//ArrayList
	ArrayList<Integer> list;
	
	//생성자1 - 단순 객체 생성
	MySet() {
		this.list = new ArrayList<Integer>();
	}
	
	//생성자2 - 데이터를 넣어주는 객체 생성
	MySet(int[] arr) {
		this.list = new ArrayList<Integer>();
		
		for(int item: arr) {
			this.list.add(item);
		}
	}
	
	//원소 추가 (중복X)
	public void add(int x) {
		for(int item: this.list) {
			if(item == x) {
				return;
			}
		}
		this.list.add(x);
	}
	
	//교집합
	public MySet retainAll(MySet b) {
		MySet result = new MySet();
		
		for(int itemA: this.list) {
			for(int itemB: b.list) {
				if(itemA == itemB) {
					result.add(itemA);
				}
			}
		}
		return result;
	}
	
	//합집합
	public MySet addAll(MySet b) {
		MySet result = new MySet();
		
		for(int itemA: this.list) {
			result.add(itemA);
		}
		
		for(int itemB: b.list) {
			result.add(itemB);
		}
		return result;
	}
	
	//차집합
	public MySet removeAll(MySet b) {
		//반환을 위한 새로운 자료형
		MySet result = new MySet();
		
		for(int itemA: this.list) {
			boolean containFlag = false;
			
			for(int itemB: b.list) {
				if(itemA == itemB) {
					containFlag = true;
					break;
				}
			}
			if(!containFlag) {
				result.add(itemA);
			}
		}
		return result;
	}
}

public class Set {
	
	public static void main(String[] args) {
		
		//1. 자바에서 집합 사용 - HashSet
		System.out.println("== HashSet ==");
		HashSet set1 = new HashSet();
		set1.add(1);
		set1.add(1);
		set1.add(1);
		System.out.println("set1 = " + set1); //set1 = [1]
		set1.add(2);
		set1.add(3);
		System.out.println("set1 = " + set1); //set1 = [1, 2, 3]
		set1.remove(1);
		System.out.println("set1 = " + set1); //set1 = [2, 3]
		System.out.println(set1.size()); //2
		System.out.println(set1.contains(2)); //true
		
		//2. 집합 연산
		System.out.println("== 집합 연산 ==");
		
		//2-1. 교집합
		HashSet a = new HashSet(Arrays.asList(1, 2, 3, 4, 5));
		HashSet b = new HashSet(Arrays.asList(2, 4, 6, 8, 10));
		//a.retainAll(b); //교집합
		//System.out.println("교집합  : " + a); //교집합  : [2, 4]

		//2-2. 합집합
		a.addAll(b);
		System.out.println("합집합 : " + a); //합집합 : [1, 2, 3, 4, 5, 6, 8, 10]
		
		//2-3. 차집합
		a.removeAll(b);;
		System.out.println("차집합 : " + a); //차집합 : [1, 3, 5]
		
		
		
		

	}

}
