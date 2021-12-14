//
//  LoginViewController.swift
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var tfID: UITextField!
    @IBOutlet weak var tfPW: UITextField!
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func onBtnLogin(_ sender: UIButton) {
        // 통신을 통해서 서버에 아이디, 암호를 전달 -> response로 회원정보 받아와야함.
        let id = tfID.text
        let pw = tfPW.text
        
        // 예외처리: id, pw가 제대로 입력됐는지 확인
        if let safeId = id, let safePw = pw {
            // true: safeId, safePw가 모두 nil이 아님. 정상!
            if safeId.count < 3 || safePw.count < 4 {
                print("ID나 PW가 입력되지 않았습니다.")
                return
            }
            // 통신하는 곳..
            // 로그인 성공!?
            appDelegate.userInfo.id = safeId
            appDelegate.userInfo.pw = safePw
            
            appDelegate.isLogin = true // 로그인 성공
            
            self.navigationController?.popViewController(animated: true)
        } else {
            // false
            print("ID나 PW가 nil입니다.")
        }
        
    }
}
