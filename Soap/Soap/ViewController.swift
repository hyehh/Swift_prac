//
//  ViewController.swift
//  Soap
//
//  Created by HYEJI on 2021/09/30.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        WebRequest.shared.call_api(url: "https://") {
            (message) in
            print(message)
        }
    }


}

