package ch11;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Set;

public class MapTest {

	public static void main(String[] args) {

		HashMap<String, Integer> map = new HashMap(); //타입 여러가지. 갯수 가변
		map.put("aa", 111); //저장
		map.put("aa", 222); //수정 - 키 중복시 set 무시
		map.put("cc", 333);
		map.put("dd", new Employee(333,"이름",123.55).hashCode());
		
		//aa, dd의 암호 출력
		System.out.println(map.get("aa"));
		System.out.println(map.get("dd")); //333 나와야 하는데 나는 값이 다름..
		System.out.println("map저장데이터갯수 : "+ map.size());
		
		if(map.containsKey("ee")) {
			System.out.println(map.get("ee").intValue());
		}
		else {
			System.out.println("ee 아이디는 가입한 적이 없습니다.");
		}
		
		//모든 회원 아이디와 암호 조회
		//아이디 - map 모든 key값 조회
		//암호 - map 해당key value값 조회
		Set<String> ids = map.keySet();
		for(String oneid : ids) {
			System.out.println(oneid + ":" +map.get(oneid));
		}
		
		HashMap<Integer, Employee> map2 = new HashMap<Integer, Employee>();
		map2.put(1, new Employee(1, "사원1", 12300.0));
		
		HashMap<String, String[]> map3 = new HashMap();

		map3.put("내친구", new String[]{"010-111-2222", "02-456-7890", "031-999-1234", "a@gmil.com"});
		map3.put("엄마", new String[]{"010-987-2222", "02-666-7890"});
		map3.put("직장동료", new String[]{"010-999-0987", "031-123-1234", "b@gail.com"});
		// 명령형 매개변수 직장동료 입력시
		//010-999-0987 엔터 031-123-1234 엔터 b@gail.com
		if(map3.containsKey(args[0])) {
			String[] phone = map3.get(args[0]);
			for(String p : phone) {
				System.out.println(p);
		}
	}
	else {
		System.out.println("폰정보는 없습니다.");
		}
		
		//폰정보 리스트 관리
		ArrayList<HashMap<String, String[]>> mapList = new ArrayList<HashMap<String, String[]>>();
		//List 메소드 사용 add, get, size, set, remove
		
		
		
		
		
	}
}