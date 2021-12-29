package test;
/* 
2 ~ 10  줄 별모양 직각삼각형 출력
반복문
*
**
***
****
***** 
*/
public class Ex4 {

	public static void main(String[] args) {

		for(int i=1 ; i<=10 ; i++) {
			for(int j=1 ; j<=i ; j++) {
				System.out.print("*");
			}
			System.out.println();
		}
	}
}