package test;

public class Ex2t {

	public static void main(String[] args) {
		
		//책 : 97권
		int cntOfBooks = 97;
		
		//학생 : 102명
		int cntOfStu = 102;
		
		if(cntOfBooks > cntOfStu) {
			int bookOneStu = cntOfBooks / cntOfStu;
			int restOfBooks = cntOfBooks % cntOfStu;
			System.out.println("1명의 학생당 : " + bookOneStu + "권씩 가질 수 있습니다.");
			System.out.println("남아 있는 책은 " +  restOfBooks + " 권입니다.");
		}
		else if(cntOfBooks==cntOfStu) {
			System.out.println("1명의 학생당 : 1권씩 가질 수 있습니다.");
		}
		else { //if(cntOfBooks < cntOfStu)
			System.out.println("나눠줄 수 없습니다.");
		}

	}
}