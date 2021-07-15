//
//  ViewController.swift
//  Append
//
//  Created by Hyeji on 2021/07/15.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblSmile: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lblSmile.text?.removeAll()
    }

    @IBAction func btnSmile(_ sender: UIButton) {
        lblSmile.text?.append("😝")
    }
    
}

