//
//  ViewController.swift

import UIKit
import AVFoundation // 애플 네이티브 SDK에서 제공

class ViewController: UIViewController, AVAudioPlayerDelegate {
    
    @IBOutlet weak var progressView: UIProgressView!
    @IBOutlet weak var sliderSeak: UISlider!
    @IBOutlet weak var labelCurrentTime: UILabel!
    @IBOutlet weak var labelEndTime: UILabel!
    
    @IBOutlet weak var btnPlay: UIButton!
    @IBOutlet weak var btnPause: UIButton!
    @IBOutlet weak var btnStop: UIButton!
    
    @IBOutlet weak var sliderVolume: UISlider!
    
    var audioPlayer: AVAudioPlayer!
    var audioFile: URL!
    var timer: Timer?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 번들안의 mp3, ogg, wav 파일 재생시
        // selectAudioFile()
        // initPlayer()
        
        // http서버 상의 오디오 파일 재생시
        let urlString = "http://nissisoft21.dothome.co.kr/music.mp3"
        let url = URL(string: urlString)
        downloadFileFromURL(url: url!)
    }
    
    func downloadFileFromURL(url: URL) {
        var downloadTask: URLSessionDownloadTask
        
        downloadTask = URLSession.shared.downloadTask(with: url, completionHandler: {
            [weak self](URL, responds, error) -> Void in
            // 다운로드 마쳤을 때
            self?.audioFile = URL! as URL
            self?.initPlayer()
        })
        
        downloadTask.resume()
    }

    func selectAudioFile() {
        audioFile = Bundle.main.url(forResource: "musicTest", withExtension: "mp3")
    }
    
    func initPlayer() {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: audioFile)
        } catch let error as NSError {
            print("error init player", error)
        }
        
        audioPlayer.delegate = self
        audioPlayer.prepareToPlay() // 메모리에 음원을 넣어줌. 버퍼링
        audioPlayer.volume = 1.0

        DispatchQueue.main.sync {
            labelCurrentTime.text = "00:00" // 현재 재생 시간
            let min = Int(audioPlayer.duration / 60)
            let sec = Int(audioPlayer.duration) % 60
            labelEndTime.text = "\(min):\(sec)" // 총 재생 시간
            
            // UI 초기화
            sliderVolume.maximumValue = 1.0
            sliderVolume.value = 1
            progressView.progress = 0
            btnPlay.isEnabled = true // 활성화
            btnPause.isEnabled = false // 비활성화
            btnStop.isEnabled = false // 비활성화
            sliderSeak.maximumValue = Float(audioPlayer.duration)
            sliderSeak.value = 0
            
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(callbackTimer), userInfo: nil, repeats: true)
        }
        
//        labelCurrentTime.text = "00:00" // 현재 재생 시간
//        let min = Int(audioPlayer.duration / 60)
//        let sec = Int(audioPlayer.duration) % 60
//        labelEndTime.text = "\(min):\(sec)" // 총 재생 시간
//
//        // UI 초기화
//        sliderVolume.maximumValue = 1.0
//        sliderVolume.value = 1
//        progressView.progress = 0
//        btnPlay.isEnabled = true // 활성화
//        btnPause.isEnabled = false // 비활성화
//        btnStop.isEnabled = false // 비활성화
//        sliderSeak.maximumValue = Float(audioPlayer.duration)
//        sliderSeak.value = 0
//
//        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(callbackTimer), userInfo: nil, repeats: true)
    }
    
    // 타이머 콜백함수 (1초마다 불러지는)
    @objc func callbackTimer() {
        let min = Int(audioPlayer.currentTime / 60)
        let sec = Int(audioPlayer.currentTime) % 60
        labelCurrentTime.text = "\(min):\(sec)" // 현재 재생 시간
        
        progressView.progress = Float(audioPlayer.currentTime / audioPlayer.duration)
    }

    @IBAction func onBtnPlay(_ sender: UIButton) {
        audioPlayer.play()
        
        btnPlay.isEnabled = false
        btnPause.isEnabled = true
        btnStop.isEnabled = true
    }
    
    @IBAction func onBtnPause(_ sender: UIButton) {
        audioPlayer.pause()
        
        btnPlay.isEnabled = true
        btnPause.isEnabled = false
        btnStop.isEnabled = false
    }
    
    @IBAction func onBtnStop(_ sender: UIButton) {
        audioPlayer.stop()
        
        audioPlayer = nil
//        initPlayer()
        let urlString = "http://nissisoft21.dothome.co.kr/music.mp3"
        let url = URL(string: urlString)
        downloadFileFromURL(url: url!)
        
        btnPlay.isEnabled = true
        btnPause.isEnabled = false
        btnStop.isEnabled = false
    }
    
    @IBAction func onSliderVolume(_ sender: UISlider) {
        audioPlayer.volume = sliderVolume.value
    }
    
    @IBAction func onSliderSeakUp(_ sender: UISlider) {
        audioPlayer.pause()
        audioPlayer.currentTime = Double(sender.value)
        audioPlayer.play()
        
        progressView.progress = Float(audioPlayer.currentTime/audioPlayer.duration)
    }
    
}

