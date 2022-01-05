package test;

import javax.crypto.SecretKey;

class Employee {
	
	int id;
	String name;
	int baseSalary, generalFee, totalSalary;
	
	public Employee(int id, String name, int baseSalary, int generalFee) {
		//super();
		this.id = id;
		this.name = name;
		this.baseSalary = baseSalary;
		this.generalFee = generalFee;
	}
	Employee() {}
	void calcTotalSalary() {
		totalSalary = baseSalary + generalFee;
	}
} //Employee end

class Manager extends Employee {
	int managerFee;
	
	Manager (int id, String name, int baseSalary, int ganeralFee, int managerFee) {
		super(id, name, baseSalary, ganeralFee); //Employee() 호출
//		this.id = id;
//		this.name = name;
//		this.baseSalary = baseSalary;
//		this.generalFee = generalFee;
		this.managerFee = managerFee;
	}
	@Override
	void calcTotalSalary() {
		//totalSalary= baseSalary + generalFee + managerFee;
		super.calcTotalSalary();
		totalSalary = totalSalary + managerFee;
	}
} //Manager end

class Engineer extends Employee {
	int certiFee, techFee;
	Engineer (int id, String name, int baseSalary, int generalFee, int certiFee, int techFee) {
		super(id, name, baseSalary, generalFee);
		this.certiFee = certiFee;
		this.techFee = techFee;
		
	}
	@Override
	void calcTotalSalary() {
		//totalSalary= baseSalary + generalFee + managerFee;
		super.calcTotalSalary();
		totalSalary = totalSalary + certiFee + techFee;
}

public class SalaryTest extends Employee {
	int secFee;
	public SecretKey(int id, String name, int baseSalary, int generalFee, int certiFee, int techFee) {
		super(id, name, baseSalary, generalFee);
		this.secFee = secFee;
	}
	@Override
	void calcTotalSalary() {
		//totalSalary= baseSalary + generalFee + managerFee;
		super.calcTotalSalary();
		totalSalary = totalSalary + secFee;
	}
}
	class SalaryTest {
	public static void main(String[] args) {
		
		Employee e [] = new Employee[4];
		e[0] = new Employee (1000, "이사원", 10000, 5000);
		e[1] = new Manager (1000, "이사원", 10000, 5000);
		e[2] = new Engineer (1000, "이사원", 10000, 5000);
		e[3] = new Secretary (1000, "이사원", 10000, 5000);
		
		for(int i=0 ; i<e.length ; i++) {
			e[i].calcTotalSalary(); //e[i].오버라이딩모세드 --> 각 객체 메소드 실행
			System.out.println(e[i].id + ":" + e[i].name + ":" + e[i].baseSalary + ":" + e[i].totalSalary)
		} //for end

}
