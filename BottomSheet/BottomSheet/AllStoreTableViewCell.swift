//
//  AllStoreTableViewCell.swift
//  BottomSheet
//
//  Created by Hyeji on 2021/08/01.
//

import UIKit

class AllStoreTableViewCell: UITableViewCell {

    @IBOutlet weak var lblAllStoreName: UILabel!
    @IBOutlet weak var lblAllStoreAddress: UILabel!
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        if selected {
            contentView.backgroundColor = UIColor.white
        } else {
            contentView.backgroundColor = UIColor.white
        }
    }

}
