import UIKit

// 출력문 (print, debugPrint, dump)
var myStr: String = "Swift Programming"

print(myStr)
debugPrint(myStr)
dump(myStr) // 잘 사용 안 함

class Student {
    var name = "홍길동"
}
// 클래스의 객체 선언
var student = Student()

print(student)
print(student.name)
debugPrint(student)
dump(student) // 클래스나 구조체 내용까지 출력해보고 싶을 때 사용

// 문자열 보간 : 문자열 연결하기
var age = 30
// print("저의 나이는 " + age) // 자바, 자바스크립트에서 사용하는 + 연결연산자는 사용 못함
print("저의 나이는 \(30)입니다.")
print("저의 나이는 ", age, "입니다.") // 쉼표로도 구분 가능

