package Calender;

import java.util.Calendar;

public class Calendar2 {

	public static void main(String[] args) {

		Calendar cal = Calendar.getInstance();
		
		cal.set(2022, 6, 1);
		
		//일
		System.out.println(cal.get(Calendar.DATE) + "일");
		
		//월
		System.out.println(cal.get(Calendar.MONTH) + "월");
		
		//년
		System.out.println(cal.get(Calendar.YEAR) + "년");
		
	}
}