package day11;

class MusicThread extends Thread{
	//상속 + 오버라이딩  
	// 음악 듣는 중입니다 * 3
	
	public MusicThread(String name) {
		super(name);
	}
	
	@Override
	public void run() {
		for (int i = 0; i < 3; i++) {
			try {
				Thread.sleep(500);
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			System.out.println("음악 듣는 중입니다");		
		}
	}
}

class DownloadThread extends Thread{
	//상속 + 오버라이딩
	//- 다운로드 중입니다. * 10
	
	public DownloadThread(String name) {
		super(name);
	}
	
	@Override
	public void run() {
		for (int i = 0; i < 10; i++) {
			try {
				Thread.sleep(700);
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			System.out.println("다운로드 중입니다");		
		}
	}
	
}


class NewsThread extends Thread{
	//상속 + 오버라이딩
	//- 뉴스 보는 중입니다. * 5
	public NewsThread(String name) {
		super(name);
	}
	
	@Override
	public void run() {
		for (int i = 0; i < 5; i++) {
			try {
				Thread.sleep(900);
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			System.out.println("뉴스 보는 중입니다");		
		}
	}
}


public class ThreadTest {
	
	public static void main(String[] args) {
		
		Thread[] arr = {
				new MusicThread("음악스레드")
				,new NewsThread("뉴스스레드")
				,new DownloadThread("다운로드스래드")
		};
		
		for (Thread thread : arr) {
			thread.start();
		}
		
		
	}

}
