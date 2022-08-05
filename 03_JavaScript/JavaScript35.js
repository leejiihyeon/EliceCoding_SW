/*지시사항을 따라 작성해주세요*/
var target = document.getElementById("btn");

function changeButtonOnclick() {
  /* 버튼 클릭 시 색상이 변경될 수 있도록 changeColor 클래스를 추가하세요. */
  target.classList.add("changeColor");
  
  /* 버튼 클릭 시 innerText 메소드를 사용해 버튼의 타이틀이 ‘버튼 클릭 성공!’으로 변경될 수 있도록 작성해주세요. */
target.innerText = "버튼 클릭 성공!";
  
}

/* 버튼 클릭 시 위의 함수changeButtonOnclick가 실행될 수 있도록 작성해주세요. */
target.addEventListener("click", changeButtonOnclick);

