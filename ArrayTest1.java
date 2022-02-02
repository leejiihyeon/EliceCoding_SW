package ch5;

public class ArrayTest1 {

	public static void main(String[] args) {

		String names[] = {"이학생", "최신입", "김대리", "박과장", "최부장"};
		//System.out.println("학생수="+names.length);
		//for(int i = 0; i < names.length; i++) {
		//	System.out.println(names[i]);
		//}
		
		int scores[] = new int[names.length];
		
// 1-100 점수 배열 랜덤 저장
		for(int i = 0; i < scores.length; i++) {
			scores[i] = (int)(Math.random() * 100) + 1;
			System.out.print(names[i] + ":" + scores[i] + " , ");
		}
		System.out.println();
		System.out.println("점수 총갯수=" + scores.length);
		//총점,평균
		int sum = 0;
		int avg;
		for(int i = 0; i < scores.length; i++) {
			sum = sum + scores[i];
		}
		avg = sum / scores.length;
		System.out.println("총점=" + sum);
		System.out.println("평균" + avg);
		
		//1등점수
		int max = 0; //max=100 , scores[i]=xxxx
		String maxName = "";
		for(int i = 0; i < scores.length; i++) {
		if(scores[i] > max) {
			max = scores[i];
			maxName = names[i];
		}//if end
		}//for end
		
		System.out.println("1등점수="+maxName + ":" +  max); //1등점수 xxxx : xxx
		
		//꼴등점수
		int min = 101; //min=999  scores[i] = 1
		for(int i = 0; i < scores.length; i++) {
		if(scores[i] < min) {
			min = scores[i];
			System.out.println(min);
		}//if end
		}//for end
		
		System.out.println("꼴등점수="+min);		
	}

}
