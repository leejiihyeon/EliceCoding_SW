package test; //현재 클래스 저장 위치 설정

//다른 클래스의 패키지명 알려줌
import java.util.ArrayList;
import java.util.Date;
import multi.A;

/*
자동 import
1. java.lang 패키지 클래스 사용 - 라이브러리
2. 현재파일과 같은 패키지 작성 클래스 사용 - 사용자 정의
*/
public class B {

	public static void main(String[] args) {

		multi.A a1 = new multi.A();
		Date now = new Date(); //현재시각
		System.out.println("현재시각 : "+now);
		ArrayList list = new ArrayList();
		
		Date Sqldb = new Date(); //db 날짜 가져와서

	}
}