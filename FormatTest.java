package ch10;

import java.text.DecimalFormat;

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
	}

}
