//
//  CategoryDetailTableViewCell.swift
//  BottomSheet
//
//  Created by Hyeji on 2021/07/30.
//

import UIKit

class CategoryDetailTableViewCell: UITableViewCell {

    @IBOutlet weak var ivCategoryDetail: UIImageView!
    @IBOutlet weak var lblCategoryDetail: UILabel!
    
    // 선택 시 및 미선택 시 색상 모두 화이트 설정
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        if selected {
            contentView.backgroundColor = UIColor.white
        } else {
            contentView.backgroundColor = UIColor.white
        }
    }
}
