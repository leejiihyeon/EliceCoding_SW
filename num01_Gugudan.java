package assignment01;

public class num01_Gugudan {

	public static void main(String[] args) {
		
		/*
			이름 : 이지현
			과제명 : 콘솔 화면에 구구단 출력하기
		*/
		
		//변수 선언
		int i, j;
		
		//다중 반복문 중 하나인 이중 for문을 사용
		for(i=1 ; i<=9 ; i++) {
			for(j=1 ; j<=9 ; j++) {
				//콘솔 화면에 내용이 맞도록 format함수 이용하여 형식 지정
				System.out.print(String.format("%02d X %02d = %02d", j, i, i*j)+"\t");
			}
			System.out.println();
		}
	}
}