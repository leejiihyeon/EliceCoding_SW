package ch8;

public class FinallyTest {

	public static void main(String[] args) {
		try {
			int first = Integer.parseInt(args[0]);
			int second = Integer.parseInt(args[1]);
			System.out.println(second/first);
		} catch(ArithmeticException e) {
			System.out.println("0 입력하면 실행 불가능");
		}
		catch(NumberFormatException e) {
			System.out.println("정수 아닌 값 입력하면 실행 불가능");
		} finally { //예외발생유무, 예외타입무관, 예외처리무관 항상 실행 블록
			System.out.println("항상 실행 필요 문장");

		}
		System.out.println("main 실행 완료");
		
	}

}
