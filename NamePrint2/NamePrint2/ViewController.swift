//
//  ViewController.swift
//  NamePrint2
//
//  Created by Hyeji on 2021/07/15.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblText: UILabel!
    @IBOutlet weak var tfName: UITextField!
    @IBOutlet weak var lblResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lblText.text = "Welcome!"
        lblResult.text = "Input your name!"
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    @IBAction func btnSend(_ sender: UIButton) {
        
        if tfName.text?.isEmpty == true{
            lblResult.text = "Input your name!"
        }else{
            lblText.text = "Welcome!"
            // lblText.text?.append(" " + tfName.text!)
            lblText.text = "Welcome! \(tfName.text!)"
            self.view.endEditing(true)
            lblResult.text = "Send OK!"
        }

    }
    
    @IBAction func btnClear(_ sender: Any) {
        lblText.text = "Welcome!"
        tfName.text?.removeAll()
        lblResult.text = "Clear OK!"
    }
    
}

