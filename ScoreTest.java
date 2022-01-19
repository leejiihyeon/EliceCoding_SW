package day12.iotest;

import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Scanner;

public class ScoreTest {
	
	/* 합계, 평균을 구하는 메서드를 가지고 있는 Student 클래스를 작성한다.
	 * 
	 * Scanner를 사용해 이름, 국어, 영어, 수학 점수를 입력 받아 Student 클래스의 인스턴스를 3개 생성한다.
	 * 
	 * ArrayList 에 생성된 학생의 인스턴스를 저장한다.
	 * 
	 * 현재 프로젝트에 scores.dat 파일을 생성해 저장한다.
	 * 파일 내용 : 1. 이학생 100 90 80  총점 평균
	 * 			   2. 김학생 80  70 70  총점 평균 
	 * 
	 */
	
	
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		ArrayList<Student> students = new ArrayList<>();
		
		try (FileWriter fw = new FileWriter("scores.dat",true)) {
			
			for (int i = 1; i <= 3; i++) {
				System.out.print("이름 : ");
				String name = sc.next();
				System.out.print("국어 : ");
				int kor = sc.nextInt();
				System.out.print("영어 : ");
				int eng = sc.nextInt();
				System.out.print("수학 : ");
				int math = sc.nextInt();
				System.out.println("\n-----------------------------\n");
				students.add(new Student(name,kor,eng,math));
			}
			
			int firstAvg = 0;
			Student winner = null;
			for (Student student : students) {
				if(student.getAvg() > firstAvg) {
					firstAvg = student.getAvg();
					winner = student;
				}
			}
			
			System.out.println(winner);
			
			for (int i = 0; i < students.size(); i++) {
				String contents = i + ". " + students.get(i).toString() + "\n\n";
				fw.write(contents);
			}
			
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}

class Student{
	
	private String name;
	private int kor;
	private int math;
	private int eng;
	private int sum;
	private int avg;
	
	public Student(String name, int kor, int math, int eng) {
		super();
		this.name = name;
		this.kor = kor;
		this.math = math;
		this.eng = eng;
		
		this.sum = kor + math + eng;
		this.avg = sum/3;
	}
	
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public int getKor() {
		return kor;
	}
	
	public void setKor(int kor) {
		this.kor = kor;
	}
	
	public int getMath() {
		return math;
	}
	
	public void setMath(int math) {
		this.math = math;
	}
	
	public int getEng() {
		return eng;
	}
	
	public void setEng(int eng) {
		this.eng = eng;
	}
	
	
	
	public int getSum() {
		return sum;
	}

	public int getAvg() {
		return avg;
	}

	@Override
	public String toString() {
		return  name + "\t 국어 : " + kor + "\t 영어 : " + eng + "\t 수학 : " + math + "\t 총점 : " + sum + "\t 평균 : " + avg;
	}
	
	


	
	
	
	
	
}
