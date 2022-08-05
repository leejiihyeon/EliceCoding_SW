/* var a = 20; var b = 40; var c = 60;을 입력하여 세 변수를 생성합니다. */
var a = 20;
var b = 40;
var c = 60;

/* 조건문을 활용하여 만약 a가 b보다 크면, "a > b" 출력합니다. */
if(a>b) {
    document.writeln("a>b");
}

/* 그렇지 않고, 만약 b가 c보다 크면, "b > c" 출력합니다. */
else if(b>c) {
    document.writeln("b>c");
}

/* 그렇지 않고, 만약 a가 c보다 작으면, "a < c" 출력합니다. */
else if (a<c) {
    document.writeln("a<c");
} 

/* 그렇지 않고, 만약 b가 c보다 작으면, "b < c" 출력합니다. */
else if(b<c) {
    document.writeln("b<c");
}

/* 위의 모든 조건에 부합하지 않으면, "모든 조건을 만족하지 않는다." 출력합니다. */
else { 
    document.writeln("모든 조건을 만족하지 않는다.");
}