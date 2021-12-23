//
//  ViewController.swift
//

/*
    화면 배치 레이아웃 방법 2가지
    1. 오토 리사이징(Auto Resizing): 기본값, 간단한 배치용도.
    2. 오토 레이아웃(Auto Layout): 주로 사용함.

    사용 용도: 다양한 화면 해상도 대응. (아이폰8,아이폰x,아이패드....)
 
    Xcode11부터 SwiftUI 지원 - iOS 13부터 사용가능
    SwiftUI : 향후 3~5년 정도 후에 상용화하는 것을 권장.
 
    앱을 만들 때, 해상도 지원은 어디까지?
    모든 해상도를 지원하는 것은 시간, 노력이 너무 들어간다. 개인, 소규모에서는 어렵다.
    1. 아이패드는 PC해상도 급이기 때문에 제외한다. 폰 해상도만 지원한다.
    2. 너무 작은 해상도는 지원 불가. 예) iphone4, 5s까지는 지원하지 않아도.. 이걸 지원하려면 레이아웃을 별도로 만들어야한다.
    3. 지원하는 대상: 최신 아이폰 해상도 ~ 5년 전 모델 정도 (ex - iphone6 plus ~ iphone 11)
 */

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}

