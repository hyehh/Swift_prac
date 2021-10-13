//
//  BtnViewController.swift
//  Object2
//
//  Created by HYEJI on 2021/10/13.
//

import UIKit

class BtnViewController: UIViewController {

    var newStudent: Person = Person(name: "한량", age: 32)
    
    @IBOutlet weak var lbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        lbl.text = "\(newStudent.talk(_message: "안녕"))"
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
