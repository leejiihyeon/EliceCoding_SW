package test;

public class Ex1t {

	public static void main(String[] args) {
		
		//3자리 정수 주어지면
		int sample = 567;
		
		// 567/100 ==> 5 ==> 5*100 ==> 500
		int result = sample / 100; //5
		result = result * 100; //500
		
		System.out.println(sample + " 값의 백자리 숫자는 " + result);
		
	}
}