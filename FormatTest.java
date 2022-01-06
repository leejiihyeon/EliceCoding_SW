package ch10;

import java.text.ChoiceFormat;
import java.text.DecimalFormat;
import java.text.MessageFormat;
import java.text.NumberFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

public class FormatTest {

	public static void main(String[] args) {

		double d1 = 123.456789;
		System.out.println(d1);
		DecimalFormat df = new DecimalFormat("0.00");
		String s1 = df.format(d1);
		System.out.println(s1);
		
		df = new DecimalFormat("00000.00");
		System.out.println(df.format(d1));
		
		df = new DecimalFormat("#####.##");
		System.out.println(123.40);
		System.out.println(df.format(123.40));
		
		//df = new DecimalFormat("00000.#0"); //오류
		//System.out.println(123.40);
		//System.out.println(df.format(123.40)); //00123.?0
		
		df = new DecimalFormat("\u00a4 #####.##+;#####.##-");
		System.out.println(df.format(123.40)); //123.4
		System.out.println(df.format(-123.40)); //-123.4
		
		df = new DecimalFormat("##%");
		System.out.println(df.format(0.5678));
		
		Date now = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy - MM - dd - HH - mm - ss -EEE");
		
		//날짜와 시간 - 지역, 개인별 다른 포맷
		String nowstr = sdf.format(now);
		System.out.println(nowstr);

		double [] scores = {60, 70, 80, 90}; //경계선값 작은값부터
		String [] grades = {"D등급", "C등급", "B등급", "A등급"}; //Scores 경계선 순서
		ChoiceFormat cf = new ChoiceFormat(scores, grades);
		System.out.println(cf.format(98.5));
		System.out.println(cf.format(0));
		System.out.println(cf.format(67));
		System.out.println(cf.format(88));
		
		Object [] data = {"이자바", 98.5, 1, nowstr};
		String msg = "{0} 학생이 {3} 일시에 응시한 시험성적은 {1} 이고 현재 {2}등입니다.";
		System.out.println(MessageFormat.format(msg, data));
		
		
	}
}