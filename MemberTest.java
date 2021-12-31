package test;

class Member {
	
	String id; //아이디
	int password; //비밀번호
	String name; //이름
	int age; //나이
	void insert(String s, int a, String n, int b) {
		id = s;
		password = a;
		name = n;
		age = b;
		System.out.println("아이디 : "+id);
		System.out.println("이름 : "+name);
		System.out.println("나이 : "+age);
		System.out.println("가입 완료되었습니다.");
	} //insert end
	void login(String s, int p) {
		//매개변수 아이디 : s, 암호 : p
		//필드변수 아이디 : id, 암호 : password
		if(s.equals(id)) {
			if(p==password) {
			System.out.println("로그인되었습니다.");
		} //inner if end
			else {
				System.out.println("로그인 정보를 확인하세요(암호 확인)");
			} //inner else end
		} //outer if end
		else {
			System.out.println("로그인 정보를 확인하세요(아이디 확인)");
		}
	} //login  end
	void setPassword(int p) {
		password = p;
	} //setPassword
	void getMyInfo() {
		String info ="아이디" + id + " , 암호 : " + password + " , 이름  : " + name + " , 나이 : " + age;
		System.out.println(info);
	} //getMyInfo end
	String logout() {
		System.out.println("로그아웃 되었습니다.");
		id = null;
		password = -1; //-1로 초기화
		name = null;
		age = -1; //-1로 초기화
		return id;
	}
} //Member class end

public class MemberTest {

	public static void main(String[] args) {

		Member mem = new Member();
		mem.insert("test", 1234, "이자바", 25); //매개변수 전달
		mem.login("test2", 1234);
		mem.login("test", 4321);
		mem.login("test", 1234);
		mem.setPassword(1111);
		mem.getMyInfo();
		String id=mem.logout();
		if(id==null) {
			System.out.println("다시 로그인하셔야 됩니다.");
		}
	}
}