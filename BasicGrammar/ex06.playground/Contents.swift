import UIKit

// 스위프트 언어의 중요한 특징
// 옵셔널 Optional - nil 체크 (Nil Exception 발생빈도 줄이기 위해)

var myNum1: Int = 10 // 선언과 동시에 실제값으로 10으로 초기화했기 때문에 nil이 아님.
var myNullable: Int? = nil // 명시적으로 nil일 수도 있음을 선언해야 됨.

print(myNum1)
print(myNullable)

// 옵셔널 변수를 안전하게 사용하는 방법 : Nil Exception을 피하는 방법
// 1. 옵셔널 바인딩 - if let 구문
// 2. 가드 문장 - guard let, guard else 구문

myNullable = 20
// 옵셔널 바인딩 Optional Binding
if let newInt = myNullable {
    // Nil이 아님
    print("Nil이 아님")
    print(newInt)
} else {
    // Nil임
    print("Nil임")
}

// 강제 언래핑 forced unwrapping
// nil임을 감수하고(or nil이 아님을 확신하고) 값을 빼오는 것을 의미
// ! 연산자 : 실제값을 빼오는 연산자
print(myNullable!)

// 연습문제
// 1. 옵셔널 문자열 변수 myStr을 선언하고, "Hello"를 초기값으로 할당하고
// 옵셔널 바인딩(if let)을 활용하여, myStr의 값을 출력하시오.
// nil이면 "nil입니다", 아니면 "nil이 아닙니다" 출력

var myStr: String? = "Hello"

if let newMyStr = myStr {
    print("nil이 아닙니다 \(newMyStr)")
} else {
    print("nil입니다")
}


