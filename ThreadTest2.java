package runna;

class MyThread1 implements Runnable {
	@Override
	public void run() {
		System.out.println(Thread.currentThread().getName());
		//System.out.println(Thread.currentThread().getPriorty());
		for(int i = 1; i <= 100; i++) {
			try {
			Thread.sleep(1000);
			}catch(InterruptedException e) {/**/ }
			System.out.print("!");
		}
	}
}
class MyThread2 implements Runnable {
	public void run() {
		System.out.println(Thread.currentThread().getName());
		for(int i = 1; i <= 100; i++) {
			System.out.print("#");
		}
	}
}
public class ThreadTest {

	public static void main(String[] args) {
		System.out.println(Thread.currentThread().getName());
		
		//Runnable 타입 객체 생성
		MyThread1 t1 = new MyThread1();
		MyThread2 t2 = new MyThread2();
		//Thread 타입 객체 변환
		Thread tt1 = new Thread(t1);
		Thread tt2 = new Thread(t2);
		
		tt1.setPriority(Thread.MIN_PRIORITY);
		tt2.setPriority(Thread.MAX_PRIORITY);
		
		System.out.println("tt1의 우선순위="+tt1.getPriority());
		System.out.println("tt2의 우선순위="+tt2.getPriority());
		
		tt1.start();//t1.run()호출
		tt2.start();
		System.out.println("main종료");
//t1, t2, main스레드 3개 멀티스레드
	}

}
