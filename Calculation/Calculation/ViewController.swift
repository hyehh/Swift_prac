//
//  ViewController.swift
//  Calculation
//
//  Created by Hyeji on 2021/07/16.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfFirstNum: UITextField!
    @IBOutlet weak var tfSecondNum: UITextField!
    @IBOutlet weak var tfAdd: UITextField!
    @IBOutlet weak var tfMinus: UITextField!
    @IBOutlet weak var tfMultiple: UITextField!
    @IBOutlet weak var tfDivision: UITextField!
    @IBOutlet weak var tfQuotient: UITextField!
    @IBOutlet weak var tfRemainder: UITextField!
    @IBOutlet weak var lblResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lblResult.text = "숫자를 입력해주세요!"
    }

    @IBAction func btnClick(_ sender: UIButton) {
    }
}

