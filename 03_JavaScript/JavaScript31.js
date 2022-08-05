// 1. 아이디가 apple인 요소의 첫번째 자식 노드를 선택하도록 코드를 작성하세요.
// getElementById, childNodes를 사용하여 아이디가 apple인 요소의 첫 번째 자식 노드를 apple_node변수에 할당합니다.
var apple_node = document.getElementById('apple').childNodes[0];

// 2. apple_node의 값을 변수에 할당하도록 코드를 작성하세요.
// nodeValue을 사용하여 apple_node의 값을 apple_node_value변수에 할당합니
var apple_node_value =  apple_node.nodeValue;

// 3. apple_node의 타입을 변수에 할당하도록 코드를 작성하세요.
// nodeType을 사용하여 apple_node의 타입을 apple_node_type변수에 할당합니다
var apple_node_type = apple_node.nodeType;

// 4. apple_node의 값과 타입을 출력하도록 코드를 작성하세요.
document.write(apple_node_value);
document.write(apple_node_type);