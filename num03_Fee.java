package assignment01;

import java.util.Scanner;

public class num03_Fee {

	public static void main(String[] args) {
		
		/*
			이름 : 이지현
			과제명 : 놀이동산 입장권 계산 프로그램
		*/
		
		int fee=10000; //입장료
		
		System.out.print("[입장권 계산]");
		System.out.println("나이를 입력해 주세요.(숫자) : ");
		int age;
		Scanner sc1 = new Scanner(System.in);
		age=sc1.nextInt(); //나이
		
		System.out.print("입장시간을 입력해 주세요.(숫자입력) : ");
		int time;
		Scanner sc2 = new Scanner(System.in);
		time=sc2.nextInt(); //입장시간
		
		
		System.out.print("국가유공자 여부를 입력해 주세요.(y/n) : ");
		char national;
		Scanner sc3 = new Scanner(System.in);
		national=sc3.next().charAt(0); //국가유공자 여부(y/n)
		
		System.out.print("복지카드 여부를 입력해 주세요.(y/n) : ");
		char card;
		Scanner sc4 = new Scanner(System.in);
		card=sc4.next().charAt(0); //복지카드(y/n)
		
		
		//if-else if문을 사용하여 조건 설정
		if(age<3) { //3세 미만일 경우 무료 입장
			fee=0;
		}
		else if(age<13) {
			fee=4000;
		}
		else if(national=='y' || card=='y') { //복지카드와 국가 유공자의 경우 일반 할인 적용
			fee=8000;
		}
		else if(time<17 && time<=24) { //17 이후에 입장하면 특별할인 적용
			fee=4000;
		}
		System.out.println("입장료 : " + fee);
	}
}