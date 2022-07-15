package assignment01;

import java.util.Scanner;

public class num02_CashBack {
	
	public static void main(String[] args) {
		
		/*
			이름 : 이지현
			과제명 : 결제 금액 캐시백 계산 프로그램
		*/
		
		Scanner sc = new Scanner(System.in);
		
		System.out.println("[캐시백 계산]");
		System.out.print("결제 금액을 입력해 주세요.(금액) : ");
		
		//결제 금액에 대한 변수 선언
		int pay = sc.nextInt();
		
		//cashback에 대한 변수 선언
		int cashback = (int) (pay * 0.1);
		//캐시백 포인트를 Math.floor()를 이용하여 백원단위로 출력
		cashback = (int) Math.floor((cashback/100)*100);
		
		//if문을 이용하여 캐시백 포인트를 최대 300으로 지정
		if(cashback>=300) {
			cashback = 300;
		}
		System.out.println("결제 금액은 " + pay + "원이고, 캐시백은" + cashback + "원 입니다.");
	}
}