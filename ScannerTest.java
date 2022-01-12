package ch15;

import java.util.Scanner;

public class ScannerTest {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.println("정수 2개를 입력하면 덧셈 연산 수행합니다");
		int first = sc.nextInt();
		int second = sc.nextInt();
		System.out.println(first + second);
		System.out.println("한글입력하세요");
		String third = sc.next();// 한개의 단어(공백이전)
		System.out.println(third);
		
	}

}
