package ch5;

public class ArrayTest2 {

	public static void main(String[] args) {
		
		//5명 학생의 국어, 영어 그리고 수학 점수들 저장 이차원 배열
		
//		int kors[] = new int[5];
//		int engs[] = new int[5];
//		int mats[] = new int[5];
		
		int scores [][] = new int[3][5];
		System.out.println("총 학생수 : "+scores[0].length);
		System.out.println("총 과목수 : "+scores.length);
		System.out.println("총 점수 갯수 : "+scores.length * scores[0].length);
		
		//배열 최초값 출력
		for(int i=0 ; i<scores.length;i++) {
			for(int j=0 ; j<scores[i].length ; j++) {
				System.out.println(scores[i][j] + "\t");
			}
			System.out.println();
		}
		System.out.println("==================================");
		//배열 1-100 난수들 저장 출력
		for(int i=0 ; i<scores.length;i++) {
			for(int j=0 ; j<scores[i].length ; j++) {
				scores[i][j] = (int)(Math.random()*100)+1;
				System.out.print(scores[i][j] +"\t");
			}
			System.out.println();
		}
		System.out.println("==================================");
		//저장 가변 길이 이차원 배열
		char stars[][] = new char[5][10];
		System.out.println("총 라인수="+stars.length);
		System.out.println("1줄 별 갯수 ="+stars[0].length);
		
		for(int i=0 ; i<stars.length;i++) {
			//stars[i]=new char[i+1];
			//System.out.println("각 줄 별 갯수 : " + stars[i].length);
			for(int j=0 ; j<stars[i].length;j++) {
				stars[i][j] = '*';
				System.out.print(stars[i][j]);
				
			}
			System.out.println();
		}
		
	int ar[][] = { {1,2}, {3,4}, {5,6} }; //가변 길이가 동일함
	
	int ar2[][] = { {1,2}, {3,4,5}, {5,6,7,8} }; //가변 길이 동일하지 않음
		
	}
}
