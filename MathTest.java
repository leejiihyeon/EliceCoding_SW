package ch9;

import java.util.Random;

public class MathTest {

	public static void main(String[] args) {
		//Math m = new Math();//private 생성자. final클래스. 객체생성불가능,상속불가능
		//모든 메소드 static
		System.out.println(Math.random());
		System.out.println(Math.abs(123));
		System.out.println(Math.round(123.65));
		
		//난수발생클래스
		//1-100 난수 발생
		int ran1 = (int)(Math.random() * 100)+1;
		System.out.println(ran1);
		
		//ch10
		java.util.Random rd = new Random();
		int ran2 = rd.nextInt(); //  int최소값 ( - 2^31  ) ~ int최대값( 2^31 -1)
		System.out.println(ran2);
	
		int ran3 = rd.nextInt(101); //  0 ~ 100
		System.out.println(ran3);

		//
		boolean r1 = Boolean.parseBoolean("TrUE");
		System.out.println(r1);
		System.out.println(Integer.toBinaryString(10));
		int max = Integer.MAX_VALUE;
		int min = Integer.MIN_VALUE;
		System.out.println(max);
		System.out.println(min);
		
	}
}