package test;

public class Ex4t {

	public static void main(String[] args) {

		int lines=10; //2~10
		
		//lines줄 반복
		for(int i=1 ; i<=lines; i++) {
			//i - 현재 출력 줄번호
			for(int j=1; j<=i ; j++) {
				//j - 현재 줄 출력 별 갯수
				System.out.print("*");
			}
			System.out.println();
		}
		
	}
}