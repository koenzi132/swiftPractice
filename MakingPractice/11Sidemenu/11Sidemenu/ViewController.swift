//  ViewController.swift

import UIKit

class ViewController: UIViewController {
    let appDelegate = UIApplication.shared.delegate as! AppDelegate

    override func viewDidLoad() {
        super.viewDidLoad()

        appDelegate.mainVC = self
    }

    func goToLoginView() {
        // 네비게이션 컨트롤러로 이동하기
        let loginVC = self.storyboard?.instantiateViewController(identifier: "LoginVC") as! LoginViewController
        self.navigationController?.pushViewController(loginVC, animated: true)
    }
    
    func goToNoticeView() {
        // 네비게이션 컨트롤러로 이동하기
        let noticeVC = self.storyboard?.instantiateViewController(identifier: "NoticeVC") as! NoticeViewController
        self.navigationController?.pushViewController(noticeVC, animated: true)
    }

}

import SideMenu

extension ViewController: SideMenuNavigationControllerDelegate {
    func sideMenuWillAppear(menu: SideMenuNavigationController, animated: Bool) {
        print("sideMenu will appear")
    }
    func sideMenuDidAppear(menu: SideMenuNavigationController, animated: Bool) {
        print("sideMenu did appear")
    }
    func sideMenuWillDisappear(menu: SideMenuNavigationController, animated: Bool) {
        print("sideMenu will disappear")
    }
    func sideMenuDidDisappear(menu: SideMenuNavigationController, animated: Bool) {
        print("sideMenu did disappear")
    }
}
