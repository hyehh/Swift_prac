//
//  ViewController.swift
//  CollectionViewFlowLayout2
//
//  Created by HYEJI on 2021/10/01.
//

// 2021.10.01 CollectionViewFlowLayout 시도하기
import UIKit

var list = ["flower_01", "flower_02", "flower_03", "flower_04", "flower_05", "flower_06"]

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    var pokemons: [UIImage?] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        for i in 0..<list.count {
            pokemons.append(UIImage(named: list[i]))
        }
        
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(UINib(nibName: "MonsterCell", bundle: .main), forCellWithReuseIdentifier: "MonsterCell")
        
        setupFlowLayout()
    }

    func setupFlowLayout() {
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.sectionInset = UIEdgeInsets.zero
        flowLayout.minimumInteritemSpacing = 10
        flowLayout.minimumLineSpacing = 10
        
        // 전체 뷰 사이즈를 3으로 나눈 값으로 셀의 사이즈를 지정하고 셀 간격도 그에 맞게 지정
        let halfWidth = UIScreen.main.bounds.width / 3
        flowLayout.itemSize = CGSize(width: halfWidth * 1.3 , height: halfWidth * 1.3)
        self.collectionView.collectionViewLayout = flowLayout
    }

}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return list.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MonsterCell", for: indexPath) as? MonsterCell else {
            return UICollectionViewCell()
        }
    
        cell.imageView.image = pokemons[indexPath.row]
        return cell
    }
}
