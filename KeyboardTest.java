package ch15;

import java.io.IOException;

public class KeyboardTest {

	public static void main(String[] args) {
		//더이상 입력문자 없을 때까지 계속 입력
		try {
			while(true) {
				int onekey = System.in.read();
				if(onekey == '\n') break; // 엔터키입력 중단
				//if(onekey == 13) break; // 엔터키입력 중단
				System.out.println((char)onekey);
				//100+200
				// 한글입력표현불가능. 자바타입해석불가능(문자1개 유니코드)
			}
		}catch(IOException e) {
			e.printStackTrace();
		}
	}

}
