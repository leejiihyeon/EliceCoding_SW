package test;
/*
책 : 97권
int cntOfBooks = 97;

학생 : 102명
int cntOfStu = 12;

책권수가 학생수보다 많다면
12명 학생들에게 공평권수의 책 분배

===> 출력
1명의 학생당 : xx권씩 가질 수 있습니다.
남아있는 책은 xx권입니다.

책권수가 학생수보다 많지 않다면
===> 출력
나눠줄 수 없습니다.
*/
public class Ex2 {

	public static void main(String[] args) {
		
		int cntOfBooks = 97;
		int cntOfStu = 12;
		
		int i = cntOfBooks/cntOfStu;
		int j = cntOfBooks%cntOfStu;
		
		System.out.println("1명의 학생당 "+i+"권씩 가질 수 있습니다."+"\t");
		System.out.println("남아있는 책은 "+j+"권입니다.");
		
		System.out.println("책 권수가 학생수보다 많지 않다면");
		
		if(cntOfBooks < cntOfStu) {
			System.out.println("나눠줄 수 있습니다.");
		}
		System.out.println("나눠줄 수 없습니다.");
	}
}