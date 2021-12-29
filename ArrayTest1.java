package ch5;

public class ArrayTest1 {

	public static void main(String[] args) {
		
		
		//46개 점수 저장
		int scores[] = new int[46];
		
		//1~100 점수 배열 랜덤 저장
		for(int i=0 ; i<46 ; i++) {
			scores[i] = (int)(Math.random() * 100) + 1;
			System.out.println(i+" : "+scores[i]);
		}
		System.out.println("점수의 총 갯수 : "+scores.length);
		
		//총점, 평균
		int sum = 0;
		int avg;
		for(int i=0 ; i<46 ; i++) {
			sum = sum + scores[i];
		}
		avg = sum / 46;
		System.out.println("총점 : "+sum);
		System.out.println("평균 : "+avg);
	}
}