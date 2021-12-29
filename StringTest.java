package ch2;

public class StringTest {

	public static void main(String[] args) {

		String s1 = "java";
		char c1 = 'j';
		int i1 = 100;
		
		System.out.println(s1); //String - 0개 이상의 문자열 ""
		System.out.println(c1); //char - 반드시 1개의 문자만 ''
		
		System.out.println(s1+c1); //javaj
		System.out.println(s1+i1); //java100
		System.out.println(c1+i1); //206
		
		// + : 1. 숫자 덧셈 - 정수/실수 + 실수/정수 , 단일문자 unicode ('a' -> 97, 'b' ->98, 'j' ->106)
		//	   2. 문자열 결합 - String + 다른 타입, 다른 타입+ String, String + String 

		byte b1 = 127; //1byte정수=8bit / [부호1bit][값7bit] --> -2^7 ~ 2^7-1 --> -128~127
		//byte b2 = 128;
		
		int b2 = 1280000000; //4byte
		
		//형변환
		int i2 = 127; //127 (4byte)의 크기로 127을 표현
		byte b3 = (byte)i2; //127 (1byte)의 크기로 127을 표현
		//(타입명)
		
		int i3 = 65;
		System.out.println(i3); //65 - 'a'->97, 'A'->65 , '0'->48
		System.out.println((char)i3); //A
		
		int i0 = 48;
		System.out.println(i0); //48
		System.out.println((char)i0); //'0'
		
		int i11 = 97;
		System.out.println(i11);
		System.out.println((char)i11);
		//'A'출력
		System.out.println(i11-32);
		System.out.println((char)(i11-32));
	}
}