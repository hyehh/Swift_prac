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
        let InputText = tfInput.text?.trimmingCharacters(in: .whitespacesAndNewlines)
        lblResult.text = InputText
        self.view.endEditing(true)
    }
    
} // ViewController

extension ViewController: UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        btnClick()
        return true
    }
}
