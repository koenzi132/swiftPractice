//
//  ViewController.swift
//  02MyBasicControl
//
//  Created by 김호연 on 2021/12/06.
//

import UIKit

class ViewController: UIViewController {

    // Outlet 변수가 들어가는 곳
    // 컴파일지시어 메모리정책           강제언래핑
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    @IBOutlet var buttons: [UIButton]!
    @IBOutlet weak var tfInput: UITextField!
    @IBOutlet weak var imageView: UIImageView!

    // 화면이 로딩완료 시 자동 호출되는 함수.
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelTitle.backgroundColor = UIColor.systemCyan
        labelTitle.text = "타이틀 입니다."
        labelTitle.textColor = UIColor.systemOrange
        
        btn1.backgroundColor = UIColor.systemRed
        
        for btn in buttons {
            btn.backgroundColor = UIColor(red: 1.0, green: 0, blue: 0, alpha: 1)
            // alpha: 0.0 ~ 1.0
            // rgb: 0.0 ~1.0
            // (이렇게 표현도 가능)
            btn.backgroundColor = UIColor(red: 255/255, green: 100/255, blue: 100/255, alpha: 1)
        }
        buttons[0].backgroundColor = UIColor.systemBlue
    }
    
    // Action 함수가 들어가는 곳
    @IBAction func onBtn1Click(_ sender: UIButton) {
        // 로그를 남기는 법
        print("btn1 is clicked")
        labelTitle.text = "btn1 is clicked"
        imageView.image = UIImage(named: "image1.png")
    }
    
    @IBAction func onBtn2Click(_ sender: UIButton) {
        imageView.image = UIImage(named: "image2.png")
    }

    @IBAction func onBtnInput(_ sender: UIButton) {
        let titleText = tfInput.text
        labelTitle.text = titleText
    }
    
}

