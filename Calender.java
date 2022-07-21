package Calender;

import java.util.Calendar;

public class Calender {

	public static void main(String[] args) {
		
		//Calendar는 추상 클래스이기 때문에 직접 new하여 객체 생성이 불가
		//Calendar.getInstance() 메소드를 이용하거나
		//Calendar클래스를 상속받는 GregorianCalendar 클래스를 이용하여 객체 생성
		Calendar cal = Calendar.getInstance();
		
		//현재 일
		System.out.println(cal.get(Calendar.DATE) + "일");
		
		//현재 월
		//바로 출력하려면 +1을 해줍니다. 월은 0부터 시작
		System.out.println((cal.get(Calendar.MONTH)+1) + "월");
		
		//올해 년도
		System.out.println(cal.get(Calendar.YEAR) + "년");
		
		//현재 시간
		System.out.println(cal.get(Calendar.HOUR_OF_DAY) + "시");
		
		//현재 분
		System.out.println(cal.get(Calendar.MINUTE) + "분");
		
		//현재 초
		System.out.println(cal.get(Calendar.SECOND) + "초");
		
		//1월 1일 부터 오늘까지 흐른 일 수
		System.out.println(cal.get(Calendar.DAY_OF_YEAR) + "일이 흘렀습니다.");
		
		//현재 월의 마지막 날짜
		//2018년 3월의 마지막 날은 30일입니다.
		System.out.println(cal.getActualMaximum(Calendar.DATE));
		
		//월의 시작 요일
		//2018년 4월 시작 요일은 일요일입니다.
		//일 월 화 수 목 금 토 순으로
		System.out.println(cal.get(Calendar.DAY_OF_WEEK));
		
	}
}