package ch8;

import java.io.IOException;

import javax.imageio.IIOException;

class Test {
	void ma(int i) throws IOException {
		System.out.println(100/i);
		throw new IOException();
	}
	void mb() {
		try {
		ma(0);
		} catch(IOException e) {
			System.out.println("입출력오류");
		}
	}
}

public class ThrowsTest {

	public static void main(String[] args) {
		
		Test t = new Test();
		try {
			t.mb();
		} catch(ArithmeticException e) {
			System.out.println("0 나누기 불가");
		}
	}
}