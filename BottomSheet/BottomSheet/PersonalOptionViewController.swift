//
//  PersonalOptionViewController.swift
//  BottomSheet
//
//  Created by Hyeji on 2021/08/02.
//

import UIKit

class PersonalOptionViewController: UIViewController {

    @IBOutlet weak var lblPersonalOptionName: UILabel!
    @IBOutlet weak var lblPersonalOptionSelected: UILabel!
    @IBOutlet weak var lblPersonalOptionPrice: UILabel!
    @IBOutlet weak var lblPersonalOptionCount: UILabel!
    
    var personalOptionName = ""
    var personalOptionPrice = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        initSetting()
    }
    
    func initSetting() {
        lblPersonalOptionName.text = personalOptionName
        lblPersonalOptionPrice.text = personalOptionPrice
    }
    
    func receivedData(_ receivedName: String, _ receivedPrice: String) {
        personalOptionName = receivedName
        personalOptionPrice = receivedPrice
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
