package assignment01;
/*
조건문 사용하기
반복문 사용하기
자바의 정석 챕터 10 참고하기
*/
import java.util.Calendar;
import java.util.Scanner;

public class num05_Calendar {

	public static void main(String[] args) {
		
		/*
			이름 : 이지현
			과제명 : 달력 출력 프로그램
		*/
		
		
		//Scanner 객체생성
		Scanner sc = new Scanner(System.in);
		
		System.out.println("[달력 출력 프로그램]");
		System.out.print("달력의 년도를 입력해 주세요.(yyyy) : ");
		int year = sc.nextInt();
		
		System.out.print("달력의 월을 입력해 주세요.(mm) : ");
		int month = sc.nextInt();
		
		//calender가 추상클래스 이기 때문에 new Calendar(); 대신 Calendar.getInstance();를 사용한다
		//getInstance()로 얻은 인스턴스는 현재 날짜와 시간 정보를 담고 있다.
		
		//Calendar 객체 생성
		Calendar cal = Calendar.getInstance();

		cal.set(Calendar.YEAR, year);
		//0~11의 값으로 리턴하기 때문에 1을 더하여 준다
		cal.set(Calendar.MONTH, month-1);
		cal.set(Calendar.DATE, 1);
		
		//DAY_OF_WEEK : 현재 요일
		int startDay = cal.get(Calendar.DAY_OF_WEEK);
		
		//DAY_OF_MONTH : 현재 월의 날짜
		int lastDay = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
		//int day = 1;
		
		System.out.println("[" + year + "년 " + month + "월]");
		
		String week_day = "일월화수목금토";
		
		//
		for (int i = 0; i < week_day.length(); i++) {
			char c = week_day.charAt(i);
			System.out.print(c + "\t");
		}
		
		System.out.println();
		
		//위쪽 빈칸
		for (int i = 1; i < startDay; i++) {
			System.out.print("*"+"\t");	
		}
		
		//날짜
		for (int i = 1; i <= lastDay; i++) {
			System.out.print(i+"\t");
			if((i + startDay - 1)%7==0)
				System.out.println();
		}
		
		//밑 빈칸
		for (int i = 0; i < (7 -(startDay+lastDay -1) % 7); i++) {
			System.out.print("*"+"\t");	
		}
	}
}