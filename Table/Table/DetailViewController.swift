//
//  DetailViewController.swift
//  Table
//
//  Created by Hyeji on 2021/07/23.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var lblContent: UILabel!
    
    var content = "" // 받아올 내용
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        lblContent.text = content
    }
    
    func receviedData(_ receivedData: String) {
        content = receivedData
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
