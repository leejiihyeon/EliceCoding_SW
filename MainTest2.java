package ch5;

public class MainTest2 {

	public static void main(String args[]) {
		System.out.println("입력변수 갯수=" + args.length);
		System.out.println("내용 출력");
		
		for(int i = 0; i < args.length; i++) {
			System.out.println(args[i]);
		}

		// run-.... 100 200
		// 300 출력
		System.out.println( args[0] + args[1] );//"100" + "200"
		//자바 형변환 - boolean 제외 기본형 변수들 가능/String 기본형 아니다
		//String -- int  형변환 메소드
		int first = Integer.parseInt(args[0]);
		int second = Integer.parseInt(args[1]);		
		System.out.println(first + second);
		//String - - double  형변환
		//double d1 = Double.parseDouble(args[0]);
	}
}