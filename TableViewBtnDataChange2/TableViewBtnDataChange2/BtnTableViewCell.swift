//
//  BtnTableViewCell.swift
//  TableViewBtnDataChange2
//
//  Created by HYEJI on 2021/10/07.
//

import UIKit

class BtnTableViewCell: UITableViewCell {

    @IBOutlet weak var btnA: UIButton!
    @IBOutlet weak var btnB: UIButton!
    @IBOutlet weak var btnC: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func btnA(_ sender: UIButton) {
        data = []
        data += dataA
        data += dataB
    }
    
    @IBAction func btnB(_ sender: UIButton) {
        data = dataA
        print("click B")
    }
    
    @IBAction func btnC(_ sender: UIButton) {
        data = dataB
        print("click C")
    }
    
}
