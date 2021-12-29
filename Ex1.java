package test;
/*
정수가 주어지면
int sample = 567;

===> 백단위 출력 :500
*/
public class Ex1 {

	public static void main(String[] args) {
		
		int min = 100;
		int max = 999;
		
		int sample = (int)((Math.random()*(max-min))+min);
		
		int n=sample/100;
		System.out.println("백단위출력 : "+n*100);

		
	}
}