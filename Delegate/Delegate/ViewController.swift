//
//  ViewController.swift
//  Delegate
//
//  Created by Hyeji on 2021/07/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfInput: UITextField!
    @IBOutlet weak var lblResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lblResult.text = ""
        tfInput.delegate = self
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    @IBAction func btnClick(_ sender: UIButton) {
        btnClick()
    }
    
    func btnClick() {
        let inputText = tfInput.text?.trimmingCharacters(in: .whitespacesAndNewlines)
        lblResult.text = inputText
        self.view.endEditing(true)
    }
    
} // ViewController

extension ViewController: UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        let inputText = textField.text?.trimmingCharacters(in: .whitespacesAndNewlines)
        textField.text = inputText
        self.view.endEditing(true)
        
        // btnClick()
        return true
    }
}
