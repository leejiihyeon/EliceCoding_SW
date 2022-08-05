// 삼각형의 넓이를 구하는 함수를 완성시켜 보세요.
// 삼각형의 밑변과 높이가 주어졌을 때 삼각형의 넓이를 구하는 함수를 만들고, 밑변이 5, 높이가 7인 삼각형의 넓이를 document.write()로 확인해보세요.
//삼각형의 넓이를 구하는 함수 triangle을 만들어 봅시다!
//삼각형의 밑변을 나타내는 변수는 width, 높이를 나타내는 변수는 height로 선언합니다.

function triangle(width, height) {
    return (width * height)/2;
}

document.write(triangle(5, 7));