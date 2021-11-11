//
//  TopTableViewCell.swift
//  TableViewInCollectionView
//
//  Created by HYEJI on 2021/11/10.
//

import UIKit

class TopTableViewCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var numberList = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21"]
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        collectionView.delegate = self
        collectionView.dataSource = self
        let collectionViewCellNib = UINib(nibName: String(describing: CollectionViewCell.self), bundle: nil)
        self.collectionView.register(collectionViewCellNib, forCellWithReuseIdentifier: "CollectionViewCell")
        
        let flowLayOut = UICollectionViewFlowLayout()
        flowLayOut.minimumInteritemSpacing = 0;
        flowLayOut.minimumLineSpacing = 0;
        flowLayOut.scrollDirection = .horizontal
        flowLayOut.estimatedItemSize = UICollectionViewFlowLayout.automaticSize
        collectionView.collectionViewLayout = flowLayOut
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return numberList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as? CollectionViewCell
        cell?.imageView.image = UIImage(named: "1")
        return cell!
    }
    
}
