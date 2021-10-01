//
//  MyCustomCollectionViewCell.swift
//  CollectionView
//
//  Created by HYEJI on 2021/09/29.
//

import UIKit

class MyCustomCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var ImgView: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblPrice: UILabel!
    
    var imageName : String = "" {
        didSet {
            print("MyCustomCollectionViewCell / imageName - didSet() : \(imageName)")
            self.ImgView.image = UIImage(systemName: imageName)
            self.lblName.text = imageName
            self.lblPrice.text = "10,000 Point"
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        print("MyCustomCollectionViewCell - awakeFromNib() called")
        // self.contentView.backgroundColor = .systemYellow
        // self.contentView.layer.cornerRadius = 8
        self.contentView.layer.borderWidth = 0.5
        self.contentView.layer.borderColor = CGColor(red: 123/225, green: 123/225, blue: 123/225, alpha: 1)
    }
    
}
