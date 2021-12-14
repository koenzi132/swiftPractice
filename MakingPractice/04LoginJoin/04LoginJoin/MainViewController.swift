//
//  ViewController.swift
//

import UIKit

class MainViewController: UIViewController {
    @IBOutlet weak var labelStatus: UILabel!
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    // 화면이 생성될 때 딱 한 번만 호출됨.
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    // 화면이 보일 때마다 호출됨
    override func viewWillAppear(_ animated: Bool) {
        // 로그인 상태 갱신
        if appDelegate.isLogin {
            labelStatus.text = "로그인 상태: 로그인됨\(appDelegate.userInfo.id)"
        } else {
            labelStatus.text = "로그인 상태: 로그아웃됨"
        }
    }

    @IBAction func onBtnLogout(_ sender: UIButton) {
        appDelegate.isLogin = false
        labelStatus.text = "로그인 상태: 로그아웃됨"
    }
}

