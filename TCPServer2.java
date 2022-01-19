package server;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintStream;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.HashMap;
import java.util.Scanner;

public class TCPServer2 {//클라이언트보다 먼저 , 항상 실행중, 여러개 클라이언트 처리

	public static void main(String[] args) {
		HashMap<String, String> memberinfo = new HashMap();
		memberinfo.put("java", "web");
		memberinfo.put("jsp", "view");
		memberinfo.put("html","client");
		
		try {
		//1>서버시작=ServerSocket생성
		ServerSocket ss = new ServerSocket(60000);
		System.out.println("[==서버 :  60000 포트에서 시작==]");
		while(true) {
			Socket s = ss.accept();
			System.out.println("[==서버 : " +  s.getInetAddress().getHostAddress() + " 클라이언트와 연결==]");

			InputStream is = s.getInputStream();
			Scanner sc = new Scanner(is);
			String id = sc.next();
			String pw = sc.next();
			System.out.println("[==서버 :  클라이언트로부터 받은 로그인정보 ==]" + id + ":" + pw ); //java web
			
			//memberinfo key id 존재
			String loginresult = "";
			if( memberinfo.containsKey(id) == true) {
				String savedpw = memberinfo.get(id);
				if(savedpw.equals(pw)) {
					loginresult = id + " 회원님 안전하게 로그인되었습니다" ;
				}
				else {
					loginresult = "암호 " + pw + " 는 다릅니다. 다시 확인하세요";
				}
			}
			else {
				loginresult = id + " 아이디 존재하지 않습니다." ;
			}
			
			OutputStream o = s.getOutputStream();
			PrintStream p = new PrintStream(o);
			p.print(loginresult + "\n");
			p.flush();
			
			
			s.close();
			System.out.println("[==서버 :  클라이언트와 연결 해제==]");
			//if(true) { 
			//	ss.close();
			//	System.out.println("[==서버 :  종료==]");
			//}//if end(서버종료조건)
			
		}//while end
		

		
		}catch(IOException e) {
			e.printStackTrace();
		}
		
	}

}
