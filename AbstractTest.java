abstract class Shape {
	abstract public void area(); //면적을 구하는 메서드
	abstract public void circum(); //둘 다 구현부가 없으니 abstract을 붙임
}
class Rectangle extends Shape {
	int width=0 , height=0;

	public Rectangle(int width, int height) {
		super();
		this.width = width;
		this.height = height;
	}
	@Override
	public void area() {
		System.out.println("가로 : " + width + " 세로 : " + height + "인 사각형의 면적 : " + width*height);
	}

	@Override
	public void circum() {
		System.out.println("가로 : " + width + " 세로 : " + height + "인 사각형의 둘레 " + 2*(width+height));
		
	}
	//메소드 overiding : 리턴타입, 이름, 매개변수 동일하고 접근제한의 modifier가 상위 클래스의 부모랑 동일하거나 더 넓어야 한다.
}

class Circle extends Shape {
	int radius;
	// 생성자 정의
	Circle(int r) {
		radius = r;
		
	}
	@Override
	public void area() {
		System.out.println("반지름 : " + radius + " 인 원이 면적 : " + radius*radius*3.14);
	}
	@Override
	public void circum() {
		System.out.println("반지름 : " + radius + " 인 사각형의 둘레 : " + 2*radius*3.14);
	}
}

class Parent {
	String name="부모";
	void tellName() {
		System.out.println(name);
	}
}
class Child extends Parent {
	int su = 2; 
	void tellSu() {
		System.out.println(su);
	}
	//overriding
	void tellName() {
		System.out.println("자식");
	}
}
	//상속 - area, circum 오버라이딩
	//반지름이 ㅇ인 원의 면적 : ㅇㅇㅇ
	//반지름이 ㅇ인 원의 둘레 : ㅇㅇㅇ

public class AbstractTest {

	public static void main(String[] args) {
		
		Parent p = new Child();
		p.tellName(); //자식. 형변환된 후에 overriding된 메소드이면 자식 메소드 호출
		System.out.println(p.name); //부모
		
		Shape s1 = new Rectangle(5, 8); //가로5, 세로 8인 사각형
		Shape s2 = new Circle(6); //반지름 6인 원
		Shape s3 = new Circle(7); //반지름 7인 원
		Shape s4 = new Rectangle(10, 15);
		
		Shape ar[] = new Shape[4];
		ar[0] = s1;
		ar[1] = s2;
		ar[2] = s3;
		ar[3] = s4;
		
		//Shape ar = new Shape();
				
		for(int i=0 ; i<ar.length ; i++) {
			ar[i].area();
			ar[i].circum();
			if(ar[i] instanceof Circle) {
				//Circle c = (Circle)ar[i]; //명시적 형변환 이후 변수 Circle 클래스 사용 가능
				System.out.println(((Circle)ar[i]).radius);
			}
		}
		
		//ar[i] 타입 - Shape 타입
		//ar[i].메소드()
		//ar[i].변수

	}
}