package ch6;

class Initial {
	int i;
	int j = 10;
	static int k = 30;
	Initial(int i, int j) {
		this.i = i;
		this.j = j;
	}
}




public class ConstructorTest {

	public static void main(String[] args) {
		
		System.out.println(Initial.k);
		Initial ini = new Initial(100, 200);
		
		System.out.println(ini.i);
		System.out.println(ini.j);
		System.out.println(ini.k);
		
	}
}