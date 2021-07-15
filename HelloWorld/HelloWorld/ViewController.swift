//
//  ViewController.swift
//  HelloWorld
//
//  Created by Hyeji on 2021/07/15.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lblText.text = "Hello World!"
    }


}

