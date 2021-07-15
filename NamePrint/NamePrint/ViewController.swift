//
//  ViewController.swift
//  NamePrint
//
//  Created by Hyeji on 2021/07/15.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblText: UILabel!
    var countClick = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lblText.text = "Welcome!"
    }

    @IBAction func btnName(_ sender: Any) {
        
        // 0과 1 사용해 if 조건 생성
//        if countClick == 0{
//            lblText.text = "Welcome! hyehh"
//            countClick += 1
//        }else{
//            lblText.text = "Welcome!"
//            countClick -= 1
//        }
        
        // 홀짝 판단한 if 조건 생성
        if countClick % 2 == 0{
            lblText.text = "Welcome! hyehh"
        }else{
            lblText.text = "Welcome!"
        }
        countClick += 1
        
    }
}

