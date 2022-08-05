function reverse(str){

    var reverStr = "";
    /* 
    5번째 줄에 for ( ) { } 을 입력하여 조건문 생성을 시작합니다. 조건문 실행 시, 비어있는 변수 reverStr에 str.charAt 
    (i)를 삽입하도록 합니다.
    */
    
    for(var i = str.length-1 ; i>=0 ; i--) {
        reverStr = reverStr + str.charAt(i);
    }
    return reverStr;
}

document.write(reverse("Nice to meet you"));