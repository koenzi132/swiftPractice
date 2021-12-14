//
//  ViewController.swift
//

// 화면을 이동하는 방법 2가지
// 1. 네비게이션 컨트롤러 이용(Navigation Controller) - (권장!) 수평이동
//   - 코드로 이동(push, pop..) or Segue로 이동
// 2. 팝업 창으로 이동: 간단한 이벤트 화면(로그인, 회원가입 등..) - 수직이동
//   - 코드로 이동(present, dismiss..) or Segue로 이동

/*
  네비게이션 컨트롤러 뷰 관리 방법
 
  1. 다음 화면으로 이동하기
    self.navigationController?.pushViewController
  2. 이전 화면으로 이동하기
    popViewController
  3. 맨 앞으로 이동하기 (root)
    popToRootViewController
  4. 특정번째 뷰로 이동하기(ex- 2번째, 3번째...)
    popToViewController(newVC, animated: true)
  5. 특정뷰를 삭제할 때
    navigationController?.viewControllers 배열에서 삭제. remove(at:)
  6. 특정뷰를 중간에 추가할 때
    navigationController?.viewControllers 배열에서 추가. insert(at:)
 
 */

/*
  뷰 컨트롤러의 생명주기 (Life Cycle)
 
  viewDidLoad: 뷰가 생성될 때 한번만 호출됨.(초기화 용도)
  viewDidAppear: 뷰가 화면에 보이고 나서 호출됨.
  viewWillAppear: 뷰가 화면에 보일 때 호출됨.(화면 갱신 용도)
  viewWillDisappear: 뷰가 화면에서 사라지기 전에 호출됨.(데이터 전달)
  viewDidDisappear: 뷰가 화면에서 사라지고 나서 호출됨
  viewWillLayoutSubviews: 컨트롤(서브뷰)들의 레이아웃을 잡기 전에 호출됨.
  viewDidLayoutSubviews: 컨트롤들의 레이아웃을 잡고 나서 호출됨.
 */

/*
 뷰 컨트롤러 간의 데이터 전달(참조) 방법
    1. 전역변수를 이용한다. (앱내 모든 VC에서 접근 가능) (AppDelegate에 선언)
    2. A클래스(VC)에서 B클래스로 데이터 전달
    3. B클래스에서 A클래스로 데이터 전달
 */


import UIKit

class ViewController: UIViewController {
    // 전역 변수를 참조하는 방법
    let appDelegate = UIApplication.shared.delegate as! AppDelegate

    var mainData: String = ""
    
    // outlet 들어가는 곳

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("viewDidLoad")
        
        appDelegate.mainVC = self
        
        // 전역 변수를 참조하는 곳
        appDelegate.globalData = "전역변수 설정함"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear")
        print(self.mainData)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear")
    }
    
    override func viewWillLayoutSubviews() {
        print("viewWillLayoutSubviews")
    }
    
    override func viewDidLayoutSubviews() {
        print("viewDidLayoutSubviews")
    }

    // action함수 들어가는 곳
    
    // 네비게이션 컨트롤러에서 Segue로 이동하기
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC" {
            let vc = segue.destination as! SecondViewController
            vc.secondData = "메인화면에서 전달한 데이타(Segue)"
        }
    }
    
    // 네비게이션 컨트롤러에서 코드로 이동하기
    @IBAction func onBtnNext(_ sender: UIButton) {
        let newVC = self.storyboard?.instantiateViewController(withIdentifier: "SecondVC") as! SecondViewController
        
        // SecondViewController로 데이터 전달 (SecondViewController에 미리 변수 선언해둠)
        newVC.secondData = "메인화면에서 전달한 데이터"
        
        self.navigationController?.pushViewController(newVC, animated: true)
    }
    
    @IBAction func onBtnPopup(_ sender: UIButton) {
        let newVC = self.storyboard?.instantiateViewController(withIdentifier: "PopupVC") as! PopupViewController
        
        self.present(newVC, animated: true, completion: nil)
    }
}

