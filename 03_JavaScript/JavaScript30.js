// 먼저 실행 버튼을 눌러 초기 값을 확인하세요

// 초기 값을 확인한 뒤, 주석을 지워주세요.
// 1. document.getElementById()를 사용하여 아이디가 apple인 요소를 선택하도록 코드를 작성하세요.
// 주석을 제거하고 document.getElementById()를 사용하여 아이디가 apple인 요소를 선택하여 apple_node변수에 할당합니다.
var apple_node = document.getElementById("apple");

// 2. firstChild.nodeValue를 사용하여 node의 첫번째 자식 노드의 값을 `apple_pie`로 변경하도록 코드를 작성하세요.
// node.firstChild.nodeValue를 사용하여 node의 첫 번째 자식 노드의 값을 apple_pie로 변경합니다.
apple_node.firstChild.nodeValue = "apple_pie";

// 3. 실행 버튼을 눌러 바뀐 값을 확인합니다..