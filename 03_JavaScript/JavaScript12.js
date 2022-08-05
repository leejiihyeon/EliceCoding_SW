/* 배열 [“Apple”, “Banana”, “Tomato”] 를 데이터로 갖는 변수 fruit을 선언합니다. */
var fruit = ["Apple", "Banana", "Tomato"];

/* .length를 사용하여 변수의 길이를 확인합니다. */
document.write(fruit.length);

/* push를 사용하여 배열 맨 끝에 데이터 “A” 를 추가합니다. */
fruit.push("A");

/* unshift를 사용하여 배열 맨 앞에 데이터 “B” 를 추가합니다. */
fruit.unshift("B");

/* document.write();를 사용하여 데이터가 올바르게 추가됐는지 확인합니다. */
document.write(fruit);

/* pop을 사용하여 배열 맨 끝 데이터를 제거합니다. */
fruit.pop();

/* shift를 사용하여 배열 맨 앞 데이터를 제거합니다. */
fruit.shift();

/* document.write();를 사용하여 데이터가 올바르게 제거됐는지 확인합니다. */
document.write(fruit);