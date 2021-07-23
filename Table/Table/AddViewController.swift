//
//  AddViewController.swift
//  Table
//
//  Created by Hyeji on 2021/07/23.
//

import UIKit

class AddViewController: UIViewController {

    @IBOutlet weak var tfContent: UITextField!
        
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    @IBAction func btnAdd(_ sender: UIButton) {
        self.view.endEditing(true)
        
        let content = tfContent.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        if !content.isEmpty {
            items.append(content)
            itemsImageFiles.append("pencil.png")
            navigationController?.popViewController(animated: true)
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
