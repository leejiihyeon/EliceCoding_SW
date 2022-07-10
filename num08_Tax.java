package assignment01;

import java.util.Scanner;

public class num08_Tax {

	public static void main(String[] args) {
		
		/*
			이름 : 이지현
			과제명 : 연소득 과세금액 계산 프로그램
		*/
		
		//세율에 의한 세금에 대한 변수 선언
		double rate; 
		
		//누진공제 계산에 의한 세금에 대한 변수 선언
		int advance; 

		System.out.println("[과세금액 계산 프로그램]");
		System.out.print("연소득을 입력해 주세요 : ");
		
		int income; //소득에 대한 변수 선언
		Scanner sc = new Scanner(System.in);
		income = sc.nextInt();
		
		if(income<=12000000) {
			rate = (income * 0.06);
			advance = 0;
			System.out.printf("%d * 6%% = " + (int)rate, advance);
			System.out.println();
		} else if(income<=46000000) {
			rate = (12000000 * 0.06) + ((income-12000000) * 0.15);
			advance = (int) ((income * 0.15) - 1080000);
			
		} else if(income<=88000000) {
			
		} else if(income<=150000000) {
			
		} else if(income<=300000000) {
			
		} else if(income<=500000000) {
			
		} else if(income<=1000000000) {
			
		} else if(income>1000000000) {
			
		}
		
		
		System.out.print("[세율에 의한 세금] : ");
		System.out.println();
		System.out.print("[누진공제 계산에 의한 세금] : ");

	}
}