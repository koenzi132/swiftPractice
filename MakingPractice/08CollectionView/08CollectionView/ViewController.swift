//
//  ViewController.swift
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    @IBOutlet weak var CollectionView: UICollectionView!
    
    let names: [String] = ["잭블랙", "조니뎁", "로다쥬", "디카프리오", "컴버비치"]
    let arts: [String] = ["스쿨오브락, 걸리버", "캐리비안의해적, 브레이브", "아이언맨, 셜록홈즈", "인셉션, 타이타닉", "셜록홈즈, 닥터스트레인지"]
    let images: [String] = ["image1.png", "image2.png", "image3.png",
    "image4.png", "image5.png"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 일반 이벤트 처리자를 자신으로
        CollectionView.delegate = self
        // 데이터소스 이벤트 처리자를 자신으로
        CollectionView.dataSource = self
    }
    
    // MARK: 데이터소스 이벤트
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return names.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = self.CollectionView.dequeueReusableCell(withReuseIdentifier: "MyCollectionCellView", for: indexPath) as! MyCollectionCellView
        cell.ImageView.image = UIImage(named: images[indexPath.row])
        cell.labelName.text = names[indexPath.row]
        cell.labelArt.text = arts[indexPath.row]
        return cell
    }

    // MARK: 일반 이벤트
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("아이템 선택됨 : ", indexPath.row)
    }
    
    // MARK: 플로우 레이아웃
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: CGFloat(180), height: CGFloat(180))
    }
}

