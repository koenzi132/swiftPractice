import UIKit

// 변수와 상수
// 변수 : variable : 수학적으로 변하는 수, 프로그래밍에서는 메모리 공간(ex-4byte). 숫자나 문자열 데이터 등을 저장
// 상수 : constant : 변수이면서 값이 한 번 정해지면 못 바꾸는 변수

// 변수 var (Variable)
// 상수 let (Letter)

// 변수의 선언
// var 변수이름 : 자료형(변수타입) = 값(변수)
var myVar1 = 10 // 타입 추정
var myVar2: Int = 10 // 명시적 타입 선언

// 상수의 선언
let myLet1 = 10
// myLet1 = 20 // 에러, 값을 재할당 할 수 없음
let PI = 3.14 // 원주율 (변경하지 않을 값들은 이런 식으로 상수로 지정)
let G = 9.8 // 중력가속도 (")

// 한 줄에 여러 변수를 선언하는 법
var myVar3, myVar4, myVar5: Int
myVar3 = 10;
myVar4 = 20;
myVar5 = 30;

// 변수 이름 짓는 법
// 일반 변수, 함수 이름 : 소문자로 시작
// ex) student, count
// 클래스, 구조체, 열거형 : 영대문자로 시작
// ex) Student, Count

// 코드를 잘 작성하는 법 : 가독성있는 코드 작성하는 것

