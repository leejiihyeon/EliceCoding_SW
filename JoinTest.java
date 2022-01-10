class JoinThread extends Thread{
	int i;
	public void run() {
		i = 10;
		System.out.println("JoinThread에서 i="+i);
	}
}

public class JoinTest {

	public static void main(String[] args) {
		JoinThread jt = new JoinThread();
		jt.start();// 즉각 run 메소드 실행 아니다 . jt: 대기중    main: 실행중
		
		try {
			jt.join(); // jt: 실행중    main: 일시중지
		}catch(InterruptedException e) {  }
		
		System.out.println("main에서 i=" + jt.i);// run메소드 수행 결과 출력
		System.out.println("main종료");
	}

}
