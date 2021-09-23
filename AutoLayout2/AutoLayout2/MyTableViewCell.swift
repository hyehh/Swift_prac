//
//  MyTableViewCell.swift
//  AutoLayout2
//
//  Created by Hyeji on 2021/09/23.
//

import Foundation
import UIKit

class MyTableViewCell: UITableViewCell {
    
    @IBOutlet weak var userProfileImg: UIImageView!
    @IBOutlet weak var userContentLabel: UILabel!
    
    // 셀이 렌더링될 때(그릴 때)
    override func awakeFromNib() {
        super.awakeFromNib()
        
        print("MyTableViewCell - awakeFromNib")
        
        // height 든 width 든 상관 없음!
        userProfileImg.layer.cornerRadius = userProfileImg.frame.height / 2
    }
}
