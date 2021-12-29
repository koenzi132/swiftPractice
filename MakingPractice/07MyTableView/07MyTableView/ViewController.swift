//
//  ViewController.swift
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    
    let names: [String] = ["잭블랙", "조니뎁", "로다쥬", "디카프리오", "컴버비치"]
    let arts: [String] = ["스쿨오브락, 걸리버", "캐리비안의해적, 브레이브", "아이언맨, 셜록홈즈", "인셉션, 타이타닉", "셜록홈즈, 닥터스트레인지"]
    let images: [String] = ["image1.png", "image2.png", "image3.png",
    "image4.png", "image5.png"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 테이블뷰의 일반 이벤트 처리
        tableView.delegate = self
        // 테이블뷰의 데이터소스 처리
        tableView.dataSource = self
    }
    
    // MARK: 데이터소스
    
    // section: Grouped TableView
    // 아이템의 수를 리턴
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    // 테이블뷰 셀의 객체(인스턴스, 뷰)를 리턴
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // indexPath: section = 0 / row = 0, 1, 2, 3, 4(우리가 다섯개를 넣었기 때문)
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "MyTableViewCell", for: indexPath) as! MyTableViewCell
        cell.idolImageView?.image = UIImage(named: images[indexPath.row])
        cell.labelName.text = names[indexPath.row]
        cell.labelArt.text = arts[indexPath.row]
        // 기본 선택 효과 제거
        cell.selectionStyle = .none

        return cell
    }
    
    // MARK: 일반이벤트
    // 셀의 높이값을 리턴
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("선택된 셀의 위치: 섹션-", indexPath.section)
        print("선택된 셀의 위치: 열-", indexPath.row)
    }
}

