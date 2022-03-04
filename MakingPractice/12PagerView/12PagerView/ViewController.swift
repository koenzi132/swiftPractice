//
//  ViewController.swift
//  12PagerView
//
//  Created by 김호연 on 2022/02/18.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var pageControl: UIPageControl!

    let appDelegate = UIApplication.shared.delegate as! AppDelegate

    override func viewDidLoad() {
        super.viewDidLoad()
        
        appDelegate.mainVC = self
    }


}

