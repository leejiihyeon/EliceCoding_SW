/* var를 사용하여 함수를 선언합니다. 함수명은 sum, 매개변수는 num1, num2, return값은 num1+num2로 설정합니다. */
var sum = function(num1, num2) {
    return num1 + num2;
}

/* 함수 sum의 인자로 10, 20을 넣고, document.write();를 사용하여 값을 확인합니다. */
document.write(sum(10, 20))

/* function만을 사용하여 함수를 선언합니다. 함수명은 mul, 매개변수는 num3, num4, return값은 num3 * num4로 설정합니다. */
function mul(num3, num4) {
    return num3 * num4;
}

/* 함수 mul의 인자로 3, 4를 넣고, document.write();를 사용하여 값을 확인합니다. */
document.write(mul(3, 4));