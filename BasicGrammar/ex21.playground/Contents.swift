import UIKit

// 형변환 (type casting)

let myInt: Int = 10
let myFloat: Float = 3.14
let myString: String = "123"

// Int -> Double
let myDouble: Double = Double(myInt)
// Float -> Int
let myInt2: Int = Int(myFloat)

// Int -> String
let myString2: String = String(myInt)
// String -> Int
let myInt3: Int? = Int(myString)

// 안전하게 사용하기 위해서, 옵셔널 바인딩 if let
if let newInt = Int(myString) {
    // 형변환 성공: newInt가 nil이 아님
    print(newInt)
} else {
    // newInt가 nil임
    print("형변환 실패")
}

// 클래스의 형변환 (다형성)
// 다형성: 상속관계에서 특정한 클래스만 빼오는 것
// (A > B > C에서 C만, B만, A만 가져오는 것)
class Person {
    var name: String = ""
    func breath() {
        print("숨쉬기")
    }
}

class Student: Person {
    var school: String = ""
    func goToSchool() {
        print("학교가기")
    }
}

class UnivStudent: Student {
    var major: String = ""
    func goToMT() {
        print("MT가기")
    }
}

var grandPapa: Person = Person()
var papa: Student = Student()
var son: UnivStudent = UnivStudent()

// is연산자 : 상속관계의 클래스 객체의 속성을 검사해 볼 수 있다. (유전자 검사)
grandPapa is Person
grandPapa is Student
grandPapa is UnivStudent

papa is Person
papa is Student
papa is UnivStudent

son is Person
son is Student
son is UnivStudent

// as연산자 : 클래스 형변환 연산자
// as? 연산자 : nil일 수도 있기에
var optionalCasted: Student?
optionalCasted = grandPapa as? UnivStudent // -> nil(granPapa는 UnivStudent의 속성을 가지고 있지 않기 때문
optionalCasted = papa as? UnivStudent
optionalCasted = son as? UnivStudent

// ?? 연산자
// nil일 때는 기본값으로 ?? UnivStudent로..
optionalCasted = grandPapa as? UnivStudent ?? UnivStudent()

// as! 연산자 : nil임을 각오하고 강제 형변환(절대 nil이 아니라고 확신할 때)
var forcedCasted: Student?
//forcedCasted = grandPapa as! UnivStudent // nil이라 에러 떨어짐
forcedCasted = son as! UnivStudent
