package assignment01;
import java.util.Random;
//Random함수 사용할 것
//nextInt()함수 사용할 것
import java.util.Scanner;
//Random함수의 nextInt()함수 사용하기
public class num04_ResidentNum {

	public static void main(String[] args) {
		
		/*
			이름 : 이지현
			과제명 : 주민등록번호 생성 프로그램
		*/
		
		//성별에 따른 주민등록번호 변수 선언
		int genderNum = 0;
		
		//주민등록번호 변수 선언
		String residentNum;
		
		System.out.println("[주민등록번호 계산]");
		System.out.print("출생년도를 입력해 주세요.(yyyy) : ");
		Scanner sc1 = new Scanner(System.in);
		int year = sc1.nextInt();
		
		
		System.out.print("출생월을 입력해 주세요.(mm) : ");
		Scanner sc2 = new Scanner(System.in);
		int month = sc2.nextInt();
		
		System.out.print("출생일을 입력해 주세요.(dd) : ");
		Scanner sc3 = new Scanner(System.in);
		int day = sc3.nextInt();
		
		System.out.print("성별을 입력해 주세요.(m/f) : ");
		Scanner sc4 = new Scanner(System.in);
		char gender = sc4.next().charAt(0);
		
		if(gender=='m') {
			genderNum=3;
		} else if(gender=='f') {
			genderNum=4;
		}
		
		//int year을 String type으로 형 변환
		String yyyy = Integer.toString(year);
		String mm = Integer.toString(month);
		String dd = Integer.toString(day);
		
		//random.nextInt() : 1과 10사이의 난수 생성
		
		int[] arr = new int[6];
		Random random = new Random();
		
		for(int i=0; i<6 ; i++) {
			arr[i] = random.nextInt(10);
		}
		
		residentNum = yyyy + mm + dd + "-" + genderNum;
		
		//주민등록번호 출력
		System.out.println(residentNum + arr[0] +arr[1] + arr[2] + arr[3] + arr[4] + arr[5]);

    }
}