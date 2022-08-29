// money 문자열입니다.
var money = "500원, 엘리스 토끼는 하루 용돈으로 500원. 단돈 500원을 받는다. 부모님이 주시는 500원. 하지만 잘못한 것이 있으면 500원을 받지 못한다.";

// money 문자열에서 "500원"을 기준으로 나누어 배열 형태로 저장하세요. 그리고 저장한 배열을 출력하세요.
var splitted_money = money.split("500원");
console.log(splitted_money);