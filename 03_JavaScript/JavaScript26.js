// HTML <div> 요소를 선택하도록 코드를 작성하세요
// document.getElementsByTagName()를 사용하여 태그가 div인 요소를 선택합니다.
var selectedTagName = document.getElementsByName("div");

// 아이디가 “banana"인 요소를 선택하도록 코드를 작성하세요
// document.getElementById()를 사용하여 아이디가 banana인 요소를 선택합니다.
var selectedId = document.getElementById("banana");

// 클래스가 "vegetable"인 모든 요소를 선택하도록 코드를 작성하세요
// document.getElementsByClassName()를 사용하여 클래스가 vegetable인 모든 요소를 선택합니다.
var selectedClassNameS = document.getElementsByClassName("vegetable");

// name 속성값이 "red"인 모든 요소를 선택하도록 코드를 작성하세요
// document.getElementsByName()를 사용하여 name 속성값이 red인 모든 요소를 선택합니다.
var selectedNameS = document.getElementsByName("red");

// 선택된 요소들을 출력합니다.
document.write(selectedTagName);
document.write(selectedId);
document.write(selectedClassNameS);
document.write(selectedNameS);