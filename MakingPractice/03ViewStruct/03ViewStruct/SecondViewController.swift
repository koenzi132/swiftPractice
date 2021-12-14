//
//  SecondViewController.swift
//

import UIKit

class SecondViewController: UIViewController {
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    var secondData: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        // 전역변수를 참조하여 출력함
        print(appDelegate.globalData)
        // 첫 번째 화면에서 전달받은 데이터 출력
        print(self.secondData)
    }


    @IBAction func onBtnNext(_ sender: UIButton) {
        let newVC = self.storyboard?.instantiateViewController(withIdentifier: "ThridVC") as! ThirdViewController
        
        self.navigationController?.pushViewController(newVC, animated: true)
    }
    
    @IBAction func onBtnBack(_ sender: UIButton) {
        appDelegate.mainVC?.mainData = "두 번째 화면에서 전달한 데이터"
        
        self.navigationController?.popViewController(animated: true)
    }
}
