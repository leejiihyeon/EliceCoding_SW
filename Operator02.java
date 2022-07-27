package JavaBasic;

public class Operator02 {

	public static void main(String[] args) {
		
		/*
		-2진법
		1. 컴퓨터에서 데이터 표현에 사용
		2. 2를 기반으로 하는 숫자체계
		
		-2의 보수
		1. 2의 제곱수에서 빼서 얻은 이진수
		2. ex)2진수 3의 2의 보수 : 11 -> 01
		
		-비트 연산자
		1. 비트 단위로 연산
		2. 기본 연산자와 비트 연산자 비교
		*/
		
		//1. 비트 논리 연산자
		System.out.println("== 비트 논리 연산자 ==");
		//1-1. AND 연산자(&)
		System.out.println("== & ==");
		int num1 = 5;
		int num2 = 3;
		int result = 0; //초기화
		
		result = num1 & num2;
		System.out.println("result = " + result); //1
		System.out.println(Integer.toBinaryString(num1));
		System.out.printf("%04d\n", Integer.parseInt(Integer.toBinaryString(num1)));
		System.out.printf("%04d\n", Integer.parseInt(Integer.toBinaryString(num2)));
		System.out.printf("%04d\n", Integer.parseInt(Integer.toBinaryString(result)));
		
		//1-2. OR 연산자(|)
		System.out.println("== | ==");
		result = num1 | num2;
		System.out.println("result = " + result); //7r
		System.out.printf("%04d\n", Integer.parseInt(Integer.toBinaryString(num1)));
		System.out.printf("%04d\n", Integer.parseInt(Integer.toBinaryString(num2)));
		System.out.printf("%04d\n", Integer.parseInt(Integer.toBinaryString(result)));
		
		//1-3. XOR 연산자(^)
		System.out.println("== XOR ==");
		System.out.println("result = " + result);
		System.out.printf("%04d\n", Integer.parseInt(Integer.toBinaryString(num1)));
		System.out.printf("%04d\n", Integer.parseInt(Integer.toBinaryString(num2)));
		System.out.printf("%04d\n", Integer.parseInt(Integer.toBinaryString(result)));
		
		//1-4. 반전 연산자(~)
		System.out.println("== ~ ==");
		num1 = 5;
		result = ~num1;
		System.out.println("result = " + result);
		System.out.printf("%04d\n", Integer.parseInt(Integer.toBinaryString(num1)));
		System.out.printf("%s\n", Integer.toBinaryString(result));
		
		//2. 비트 이동 연산자
		System.out.println("== 비트 이동 연산자 ==");
		
		//2-1. <<연산자
		int numA = 3;
		result = numA << 1;
		System.out.println(result);
	    System.out.printf("%04d\n", Integer.parseInt(Integer.toBinaryString(numA)));
	    System.out.printf("%04d\n", Integer.parseInt(Integer.toBinaryString(result)));

	    //2-2. >> 연산자
	    numA = 3;
	    result = numA >> 1;
	    System.out.println(result);
	    System.out.printf("%04d\n", Integer.parseInt(Integer.toBinaryString(numA)));
	    System.out.printf("%04d\n", Integer.parseInt(Integer.toBinaryString(result)));

	    //2-3. >>> 연산자
	    numA = -5;
	    result = numA >> 1;
	    System.out.println(result);
	    System.out.printf("%s\n", (Integer.toBinaryString(numA)));
	    System.out.printf("%s\n", (Integer.toBinaryString(result)));

	    numA = -5;
	    result = numA >>> 1;
	    System.out.println(result);
	    System.out.printf("%s\n", (Integer.toBinaryString(numA)));
	    System.out.printf("%s\n", (Integer.toBinaryString(result)));
		
	}
}