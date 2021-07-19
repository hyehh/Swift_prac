//
//  ViewController.swift
//  MultiLine2
//
//  Created by Hyeji on 2021/07/19.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tvResult: UITextView!
    @IBOutlet weak var tfMessage: UITextField!
    
    let emoji = "😝"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tvResult.isEditable = false
    }

    @IBAction func btnSend(_ sender: UIButton) {
        let sendMessage = tfMessage.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        if !sendMessage.isEmpty{
            tvResult.text.append(sendMessage + "\n")
            self.view.endEditing(true)
        }
    }
    
    @IBAction func btnEmoji(_ sender: UIButton) {
        tfMessage.text?.append(emoji)
        self.view.endEditing(true)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}

