package ch5;

public class MainTest {

	public static void main(String[] args) {
		
		System.out.println("입력변수 갯수 : "+args.length);
		System.out.println("내용 출력");
		
		for(int i=0 ; i< args.length ; i++) {
			System.out.println(args[i]);
		}
		
		//run-... 100 200
		//300 출력
		System.out.println( args[0] + args[1]); //"100" + "200"
		//자바 형변환 - boolean 타입을 제외한 나머지 7개의 기본형 변수끼리 가능 / String 기본형 변수가 아니다
		//String -- int 형변환 메소드
		int first = Integer.parseInt(args[0]);
		int second = Integer.parseInt(args[1]);
		System.out.println(first+second);
		//String - double 형변환
		//double d1 = Double.parseDouble(args[0]);
		
	}
}
//위 예제 run configuration으로 100200을 치니 오류가 해결됨!
//(~배열)