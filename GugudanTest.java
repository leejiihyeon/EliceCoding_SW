package ch4;

public class GugudanTest {

	public static void main(String[] args) {
		
		System.out.println("[구구단 출력]");
		
		for(int i=2 ; i<=9 ; i++) {
			for(int j=1 ; j<=9 ; j++) {
				System.out.print(i+"*"+j+"="+i*j+"\t");
			}
			System.out.println();
		}
	}
}