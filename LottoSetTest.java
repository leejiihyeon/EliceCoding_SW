package test;

import java.util.HashSet;
import java.util.Random;

public class LottoSetTest {

	public static void main(String[] args) {
		HashSet<Integer> lottoset = new HashSet();
		//lottoset에 1-45 사이의 중복되지 않는 로또 숫자 6개를 생성하여 저장하고 출력한다.
	    //  1 45 23 33 44 45 2 --> 난수 7개 생성되었으나 45 중복되므로 셋 저장 데이터 6개
		while(true) {
			//int ran = (int)(Math.random() * 45) + 1;
			Random r = new Random();
			int ran = r.nextInt(46);
			
			System.out.println(ran);
			lottoset.add(ran);//ran 중복값 무시 
			if(lottoset.size() == 6) break; //lottoset 6개 저장 중단
		}

		System.out.println("로또번호 : ");
		for (Integer i : lottoset) {
			System.out.println(i);
		}
	}

}
