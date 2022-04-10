//
//  ViewController.swift
//  15MoviePlayer
//
//  Created by 김호연 on 2022/03/25.
//

import UIKit
import AVKit // 애플 네이티브 SDK

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func playMovie(url: NSURL) {
        let playController = AVPlayerViewController()
        let player = AVPlayer(url: url as URL)
        playController.player = player
        
        self.present(playController, animated: true) {
            player.play()
        }
    }

    @IBAction func onBtnPlayerInner(_ sender: UIButton) {
        let filePath: String? = Bundle.main.path(forResource: "Video1", ofType: "mp4")
        let url = NSURL(fileURLWithPath: filePath!)
        playMovie(url: url)
    }
    
    @IBAction func onBtnPlayerLink(_ sender: UIButton) {
        let url = NSURL(string: "http://nissisoft21.dothome.co.kr/Video1.mp4")
        playMovie(url: url!)
    }
    
    @IBAction func onBtnPlayerYoutube(_ sender: UIButton) {
    }
}

