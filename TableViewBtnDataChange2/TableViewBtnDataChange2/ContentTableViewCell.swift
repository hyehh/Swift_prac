//
//  ContentTableViewCell.swift
//  TableViewBtnDataChange2
//
//  Created by HYEJI on 2021/10/07.
//

import UIKit

class ContentTableViewCell: UITableViewCell {

    @IBOutlet weak var lblText: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
