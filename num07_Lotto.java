package assignment01;

import java.util.Arrays;
import java.util.Scanner;

/*
scanner 사용
조건문 사용
반복문 사용
배열 사용
*/
public class num07_Lotto {

	public static void main(String[] args) {
		
		/*
			이름 : 이지현
			과제명 : 로또 당첨 프로그램
		*/

		Scanner sc = new Scanner(System.in);
		
		//로또 구매 개수 변수
		int num;
		
		System.out.println("[로또 당첨 프로그램]");
		System.out.print("로또 개수를 입력해 주세요.(숫자1~10) : ");
		num = sc.nextInt();
		
		
		//배열 선언
		char[] arr = new char[1];
		
		for(int i=0 ; i<arr.length ; i++) {
			System.out.println(arr[i] + "");
		}
		
		//정수 배열 생성
		int lotto [] = new int[6];
		
		for(int i=0 ; i<lotto.length ; i++) {
			//정수 생성
			int num2 = (int)(Math.random()*45)+1;
			lotto[i] = num2;
			
			for(int j=0 ; j<i ; j++) {
				//중복되는 결과 제거
				if(lotto[j]==lotto[i]) {
					i--;
					break;
				}
			}
			System.out.print(lotto[i] + " ");
		}
		
		
		System.out.println("[로또 발표]");
		
		//로또 결과에 대한 변수
		int result [] = new int[6];
		
		for(int i=0 ; i<result.length ; i++) {
			//정수 생성
			int num2 = (int)(Math.random()*45)+1;
			result[i] = num2;
			
			for(int j=0 ; j<i ; j++) {
				//중복되는 결과 제거
				if(result[j]==result[i]) {
					i--;
					break;
				}
			}
			System.out.print(lotto[i] + " ");
		}
		
//		
		System.out.println("[내 로또 결과]");
		
		//내 로또 결과와 당첨 번호가 같은지 비교
		if(result==lotto) {
			
		}
		//result[i].equals(lotto[i]);
		//Arrays.equals(lotto[i], result[i]);
		
		
		
		//정수 배열 생성
//		int lotto [] = new int[6];
//		
//		for(int i=0 ; i<6 ; i++) {
//			//정수 생성
//			lotto[i] = (int)(Math.random() * 45) + 1;
//			
//			for(int j=0 ; j<i ; j++) {
//				if(lotto[j]==lotto[i]) {
//					i--;
//				}
//				
//			}
//			System.out.println("\t" + Arrays.toString(lotto));
//		}
		//오름차순으로 정렬
		
		
		//for문을 사용하여 로또 번호 출력 할 때 구분지어줄 숫자 바로 앞 알파벳 출력
		//로또 구매는 최대 10장까지 가능하니 j까지만 출력 할 수 있다.
/*		for(char a='a' ; a<='j'; a++) {
			
			//출력받은 알파벳 대문자로 변환 => 실패
			String str = String.valueOf(a);*/
		
//		System.out.println("\t" + Arrays.toString(lotto));
		//}
	}
}