package test;

class OverridingTest {
    public static void main(String args[]){
        int i = 10;
        int j = 20;
        
        MySum ms1 = new MySum(i, j);
        MySum ms2 = new MySum(j, i);

        System.out.println(ms1);//test.MySum@16진수주소값-오버라이딩 30
        System.out.println(ms2);
        if(ms1.equals(ms2)) {//주소값 비교 - 오버라이딩하면 인스턴스변수값 더한 결과가 같으면 true 
            System.out.println("ms1과 ms2의 합계는 동일합니다.");
        }
        String ms3 = new String("30");
        if(ms1.equals(ms3)) {
            System.out.println("ms1과 ms3의 합계는 동일합니다.");
        }       
    }
}
class MySum {
    int first;
    int second;
    
    MySum (int first, int second){
        this.first = first;
        this.second = second;
    }

    public String toString() {
    	//System.out.println(first + second );
    	return String.valueOf(first + second);
    }
    public boolean equals(Object o) {//자동형변환발생
    	if(o instanceof MySum) {
    		//자동형변환 이후에 접근 사용가능 변수나 메소드 --> Object 클래스 포함(MySum 불가)
    		//   자동형변환 이후에 오버라이딩 메소드--> Mysum 클래스 포함                              
    		return toString().equals(o.toString());
    	}
    	else {
    		return false;
    	}
    }
    
}
