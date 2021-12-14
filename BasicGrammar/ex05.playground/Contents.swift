import UIKit

// 스위프트 객체 타입
// Any, AnyObject, nil

// Any 타입 : 모든 데이터 타입을 담을 수 있음. (자바의 경우 최상위 오브젝트 Object)
// (기본 데이터 타입 Int, Float, Double, Bool, String,
//  Class, Struct, Enum, Array 등.. 다 담을 수 있음)
var myAny: Any = 100 // 정수데이터
myAny = "문자열"
myAny = true

// AnyObject 타입 : 모든 클래스 타입을 담을 수 있음.
class MyClass1 {
    var name = "홍길동"
}

class MyClass2 {
    var age = 30
}

var myAnyObject: AnyObject = MyClass1()
myAnyObject = MyClass2()

// nil : null (비어있음). 비어있는 객체변수(참조변수)
//var myNil = nil -> 에러
var myNil: Int? = nil


