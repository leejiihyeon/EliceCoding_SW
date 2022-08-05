//timeTable() 함수 안에 for문을 이용해 구구단을 출력하도록 만들어보세요.
function timesTable(n) {
    for(var i=1 ; i<=9 ; i++) {
        document.write(n);
        document.write(" x ");
        document.write(i);
        document.write(" = ");
        document.write(n*i);
        document.write("<br />");
    }
}

timesTable(2); // 2단만 출력
timesTable(3); // 3단만 출