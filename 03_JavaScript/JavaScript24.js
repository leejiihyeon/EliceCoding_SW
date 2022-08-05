// 반복문을 이용하여 3, 6, 9 게임을 만들어주세요!

//1. 1부터 30까지 반복할 수 있는 for문을 작성합니다.
for(i=1 ; i<=30 ; i++) {
    //2. 1의 자리가 3의 배수인 경우 “짝”을 출력하는 코드를 작성해봅시다.
    if((i%10)%3 == 0 && i%10 != 0) {
        console.log("짝!");
    }
    //3. 10의 자리가 3의 배수인 경우 “짝”을 출력하는 코드를 작성해봅시다.
    else if (Math.floor((i / 10) % 3) == 0 && Math.floor(i / 10) != 0) {
        console.log("짝!");
    }
    //4. 이외의 경우에는 해당 숫자를 출력하는 구문을 작성합니다.
    else {
        console.log(i);
    }
}