//
//  ViewController.swift
//  Module
//
//  Created by HYEJI on 2021/10/14.
//

import UIKit

class ViewController: UIViewController {

    var newStudent: Person = Person(state: false)
    var state = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        state = newStudent.talk()
        print(state)
    }


}

