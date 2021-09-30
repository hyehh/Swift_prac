//
//  ViewController.swift
//  CollectionView
//
//  Created by HYEJI on 2021/09/29.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myCollectionView: UICollectionView!
    
    fileprivate let systemImageNameArray = [
            "moon", "zzz", "sparkles", "cloud", "tornado", "smoke.fill", "tv.fill", "gamecontroller", "headphones", "flame", "bolt.fill", "hare", "tortoise", "moon", "zzz", "sparkles", "cloud", "tornado", "smoke.fill", "tv.fill", "gamecontroller", "headphones", "flame", "bolt.fill", "hare", "tortoise", "ant", "hare", "car", "airplane", "heart", "bandage", "waveform.path.ecg", "staroflife", "bed.double.fill", "signature", "bag", "cart", "creditcard", "clock", "alarm", "stopwatch.fill", "timer"
        ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // 컬렉션 뷰에 대한 설정
        myCollectionView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        myCollectionView.dataSource = self
        myCollectionView.delegate = self
        
        // 사용할 컬렉션 뷰 셀을 등록
        // 닙파일 가져오기
        let myCustomCollectionViewCellNib = UINib(nibName: String(describing: MyCustomCollectionViewCell.self), bundle: nil)
        
        // 가져온 닙파일로 컬렉션뷰에 셀로 등록한다
        self.myCollectionView.register(myCustomCollectionViewCellNib, forCellWithReuseIdentifier: String(describing: MyCustomCollectionViewCell.self))
        
        // 컬렉션뷰의 컬렉션 뷰 레이아웃을 설정한다
         self.myCollectionView.collectionViewLayout = createCompositionalLayout()
    }

}

// MARK: - 컬렉션뷰 컴포지셔널 레이아웃 관련
extension ViewController {
    
    // 컴포지셔널 레이아웃 설정
    fileprivate func createCompositionalLayout() -> UICollectionViewLayout {
        // 컴포지셔널 레이아웃 생성
        let layout = UICollectionViewCompositionalLayout {
            // 만들게 되면 튜플 (키: 값, 키: 값)의 묶음으로 들어옴
            // 반환하는 것은 NSCollectionLayoutSection 콜렉션 레이아웃 섹션을 반환해야함
            (sectionIndex: Int, layoutEnvironment: NSCollectionLayoutEnvironment) -> NSCollectionLayoutSection? in
            
            // 아이템에 대한 사이즈 - absolute 는 고정값, estimated 는 추측, fraction 퍼센트
            // 전체에서 1/3 이라는 의미
            let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(1.0))
            
            // 위에서 만든 아이템 사이즈로 아이템 만들기
            let item = NSCollectionLayoutItem(layoutSize: itemSize)
            
            // 아이템 간의 간격 설정
            item.contentInsets = NSDirectionalEdgeInsets(top: 2, leading: 2, bottom: 2, trailing: 2)
            
            let groupHeight = NSCollectionLayoutDimension.fractionalWidth(1/2)
            
            // 그룹사이즈
            let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: groupHeight)
            
            // 그룹 사이즈로 그룹 만들기
            // let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitem: item, count: 1)
            let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitem: item, count: 2)
            
            // 그룹으로 섹션 만들기
            let section = NSCollectionLayoutSection(group: group)
            
            // 오른쪽으로 스크롤되는 형태로 바뀜
            // section.orthogonalScrollingBehavior = .continuous
            // section.orthogonalScrollingBehavior = .groupPaging
            
            // 섹션에 대한 간격 설정
            section.contentInsets = NSDirectionalEdgeInsets(top: 20, leading: 20, bottom: 20, trailing: 20)
            
            return section
        }
        return layout
    }
}

// 액션과 관련된 것들
extension ViewController: UICollectionViewDelegate {
    
}

// 데이터와 관련된 것들
extension ViewController:
    
    // 각 세션에 들어가는 데이터 개수
    UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.systemImageNameArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
//        let cellId = String(describing: CollectionViewCell.self)
//        print("cellId : \(cellId)")
        
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! CollectionViewCell
//
//        cell.contentView.layer.cornerRadius = 8
//        cell.contentView.layer.borderWidth = 1
//
//
//        // 데이터에 따른 셀 UI 변경
//        cell.imgView.image = imgList[indexPath.row]
//        cell.profileLabel.text = self.list[indexPath.row]
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: MyCustomCollectionViewCell.self), for: indexPath) as! MyCustomCollectionViewCell
        
        cell.imageName = self.systemImageNameArray[indexPath.item]
        
        return cell
    }
    
}
