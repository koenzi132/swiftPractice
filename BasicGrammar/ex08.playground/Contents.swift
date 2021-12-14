import UIKit

// 조건문     if문(80%)  switch문(20%)

// if문의 4가지 패턴
// 1. 단일(single) if문
if true { // 소괄호 없어짐. 중괄호 생략 불가
    // 참일 때 수행
}

// 2. if else문
if false {
    // 조건이 참일 때
} else {
    // 거짓일 때
}
// 3. if else if문
if false {
    // 첫 번째 조건
} else if true {
    // 두 번째 조건
} else {
    // 나머지
}

// 4. 중첩(duplicated) if문 (if문 안의 if문, if in if)
// (3,4 depth 이상은 권장하지 않음.)
if true {
    if false {
        // 이런 식으로 if문 안에 if문이 중첩되는 경우
    }
}

// 랜덤수(임의의 수) 발생
let randomNum: UInt32 = arc4random_uniform(100) // 0~99까지의 값을 랜덤수로 발생시킴.
// UInt32 -> Int로 형변환
let intValue: Int = Int(randomNum)

// 로또번호 1~45까지의 값에서 하나의 랜덤수 발생
let lottoNum: UInt32 = arc4random_uniform(45) + 1 // 0~44 => 1~45

// switch case문
switch lottoNum {
case 0:
    print("0")
case 1...20:
    print("1~20")
case 21...45:
    print("21~45")
default:
    print("others")
}

// 연습문제 - 5분정도 잠시 멈춤
// 1부터 10사이의 랜덤수를 발생시키고
// if문을 이용하여
// 5보다 작으면 "5보다 작음" 출력하고
// 8보다 작으면 "8보다 작음" 출력하고
// 그외의 수이면 "그외의 수"라고 출력하시오.

let randomValue: UInt32 = arc4random_uniform(10) + 1

if randomValue < 5 {
    print("5보다 작음")
} else if randomValue < 8 {
    print("8보다 작음")
} else {
    print("그외의 수")
}


// switch case문으로 똑같은 결과를 출력하시오
switch randomValue {
case 1..<5:
    print("5보다 작음")
case 5..<8:
    print("8보다 작음")
default:
    print("그외의 수")
}

