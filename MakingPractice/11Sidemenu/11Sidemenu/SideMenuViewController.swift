//  SideMenuViewController.swift

import UIKit

class SideMenuViewController: UIViewController {
    let appDelegate = UIApplication.shared.delegate as! AppDelegate

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

    @IBAction func onBtnLogin(_ sender: UIButton) {
        // 사이드메뉴 닫기
        appDelegate.mySideMenu?.dismiss(animated: true, completion: nil)
        // 메인화면에서 로그인 화면으로
        appDelegate.mainVC?.goToLoginView()
    }
    
    
    @IBAction func onBtnNotice(_ sender: UIButton) {
        // 사이드메뉴 닫기
        appDelegate.mySideMenu?.dismiss(animated: true, completion: nil)
        // 메인화면에서 공지사항 화면으로
        appDelegate.mainVC?.goToNoticeView()
    }
}
