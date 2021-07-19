//
//  ViewController.swift
//  MultiLine
//
//  Created by Hyeji on 2021/07/19.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfText: UITextField!
    @IBOutlet weak var tvResult: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tvResult.isEditable = false
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    @IBAction func btnAdd(_ sender: UIButton) {
        
        let inputText = tfText.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        
        if !inputText.isEmpty{
            tvResult.text += inputText + "\n"
            self.view.endEditing(true)
        }

    }
    
}

