package JavaBasic;
//Java 프로그래밍 - 클래스와 객체_1
class Car {
    String name;
    String type;

    public void printCarInfo() {
        System.out.println("=== Car Info ===");
        System.out.println("name: " + name);
        System.out.println("type: " + type);
    }

    public void move() {
        System.out.println("이동!");
    }

    public void brake() {
        System.out.println("정지!");
    }
}

class Car2 {
    String name;
    String type;

//    Car2() {}
    Car2(String name, String type) {
        this.name = name;
        this.type = type;
        System.out.println("생성자 출력!");
    }

    public void printCarInfo() {
        System.out.println("=== Car Info ===");
        System.out.println("name: " + name);
        System.out.println("type: " + type);
    }

    public void load() {
        System.out.println("짐을 주세요!");
    }

    public void horn() {
        System.out.println("빵빵!");
    }
}

		/*
		[객체, 인스턴스]
		-객체(objct) : 실체
		-인스턴스(Instance)
		1. 클래스와 객체의 관계
		2. 클래스로부터 객체를 선언(인스턴스 화)
		3. 어떤 객체는 어떤 클래스의 인스턴스
		*/

public class ClassAndObject01 {

    public static void main(String[] args) {
        Car myCar1 = new Car();
        myCar1.name = "a";
        myCar1.type = "suv";
        myCar1.printCarInfo();
        myCar1.move();
        myCar1.brake();

        Car2 myCar2 = new Car2("b", "sedan");
        myCar2.printCarInfo();
        myCar2.load();
        myCar2.horn();
    }
}