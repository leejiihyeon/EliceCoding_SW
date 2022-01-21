package algorithm;
import java.util.Scanner;

public class ReverseArrayTest {
	static int[] reverseA(int[] data) {
		System.out.println("=====max메소드 내부====");
		for(int i =0 ; i<data.length ; i++) {
			System.out.print("data[" + i + "]="+data[i]+ " , ");
		}
		System.out.println();
		
		//scan - 배열 data 모든 내용 한 번 돌아가며 검색한다
		
		for(int i=0 ; i<data.length/2 ; i++) {
			new ReverseArrayTest().swap(data, i, data.length - i -1);
		}
		return data;
	} //reverse end
	
	void swap(int [] ar, int i, int j) { //ar 배열 매개변수 전달 변경되면 호출 메소드 내용 반영
		int temp = ar[i];
		ar[i] = ar[j];
		ar[j] = temp;
	}
	
	public static void main(String[] args) {

			Scanner stdIn = new Scanner(System.in);
			System.out.println("숫자 갯수 : ");
			int count = stdIn.nextInt(); //5
			stdIn.nextLine();//엔터
			
			System.out.println("역순으로 정렬한 숫자들 : ");
			String line = stdIn.nextLine(); 
			
			String[] su = line.split(" ");
			int[] suInt = new int[count];
			for(int i=0 ; i<count; i++) {
				suInt[i] = Integer.parseInt(su[i]);
			}
			
			reverseA(suInt);
			
			//기본형 + 참조형 매개변수 전달 - call by value 원리
			//참조형 주소값만 복사해서 전달 = data, suInt 같은 주소 동일 배열 객체 참조
			System.out.println("=====main메소드 내부====");
			for(int i=0 ; i<suInt.length; i++) {
				System.out.print("suInt[" + i + "]=" + suInt[i] + " , ");
			}
			System.out.println();
			
	}
}