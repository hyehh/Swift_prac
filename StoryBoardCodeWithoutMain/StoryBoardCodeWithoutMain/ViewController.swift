//
//  ViewController.swift
//  StoryBoardCodeWithoutMain
//
//  Created by HYEJI on 2021/11/29.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setLabel()
    }
    
    func setLabel() {
        let test = UILabel()
        view.backgroundColor = .white
        view.addSubview(test)
        test.text = "text"
        test.translatesAutoresizingMaskIntoConstraints = false
        test.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        test.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }


}

