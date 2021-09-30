//
//  MyCustomCollectionViewCell.swift
//  CollectionView2
//
//  Created by HYEJI on 2021/09/29.
//

import UIKit

class MyCustomCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var profileImg: UIImageView!
    @IBOutlet weak var profileLabel: UILabel!
    
    var imageName : String = "" {
        didSet {
            print("MyCustomCollectionViewCell / imageName - didSet() : \(imageName)")
            self.profileImg.image = UIImage(systemName: imageName)
            self.profileLabel.text = imageName
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        print("MyCustomCollectionViewCell - awakeFromNib() called")
        self.contentView.backgroundColor = .systemYellow
        self.contentView.layer.cornerRadius = 8
        self.contentView.layer.borderWidth = 1
        // self.contentView.layer.borderColor = .systemBlue
    }
    
}
