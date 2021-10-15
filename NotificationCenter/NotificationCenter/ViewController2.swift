//
//  ViewController2.swift
//  NotificationCenter
//
//  Created by HYEJI on 2021/10/15.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var lblText2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        NotificationCenter.default.addObserver(self, selector: #selector(hideLabel), name: NSNotification.Name(rawValue: "PostButton"), object: nil)
    }
    
    @objc func hideLabel(){
        // 수행할 업무 적어주기!
        lblText2.layer.isHidden = true
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
