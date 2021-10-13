//
//  ViewController.swift
//  Object2
//
//  Created by HYEJI on 2021/10/13.
//

import UIKit

class ViewController: UIViewController {

    var newStudent: Person = Person(name: "한량", age: 32)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // newStudent = Person(name: "한량", age: 32)
        newStudent.talk(_message: "안녕하세요!")
    }


}

