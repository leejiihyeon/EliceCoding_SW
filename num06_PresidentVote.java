package assignment01;

import java.util.Scanner;

public class num06_PresidentVote {

	public static void main(String[] args) {
		
		/*
			이름 : 이지현
			과제명 : 가상 대선 당선 시뮬레이션 프로그램
		*/

		Scanner sc = new Scanner(System.in);
		
		//총 투표수에 대한 변수 선언 및 값 설정
		int total_vote = 10000;
		
		//후보자에 대한 배열 선언
		int[] candidate = new int[4];
		String[] name = {"이재명", "윤석열", "심상정", "안철수"};
		
		//조건문과 Random함수를 이용하여 투표수와 투표율 구하기
		for(int i=1 ; i<total_vote ; i++) {
			int vote = (int)(Math.random() * 4);
			
		}
		
		System.out.println("[투표진행률] : ");
		
		
		
	}
}