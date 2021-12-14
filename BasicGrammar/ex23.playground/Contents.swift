import UIKit

// 재네릭(Generic)

// 용도: 입력되는 데이터 타입을 여러 가지로 다르게 해주기 위해서 사용
// (주로 콜랙션-배열의 입력타입으로 사용이 됨. Array<Int>)
// 사용처: 함수, 구조체, 클래스, 열거형

struct Calc<Type> {
    var myParam: Type // 여러 타입이 들어올 수 있음
    
    init(param: Type) {
        self.myParam = param
    }
}

var myCalc = Calc<Int>(param: 10)
dump(myCalc)
var myCalc2 = Calc<String>(param: "파라미터")
dump(myCalc2)
