//
//  ViewController.swift
//  Navigation
//
//  Created by Hyeji on 2021/07/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfMessage: UITextField!
    @IBOutlet weak var imgView: UIImageView!
    
    var imgOn = UIImage(named: "lamp_on.png")
    var imgOff = UIImage(named: "lamp_off.png")
    var isOn = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imgView.image = imgOn
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let editViewController = segue.destination as? EditViewController
        
        if segue.identifier == "editButton" {
            editViewController?.segueName = "Segue : Use Button"
        }else {
            editViewController?.segueName = "Segue : Use Bar Button"
        }
        
        editViewController?.message = tfMessage.text!
        editViewController?.isOn = isOn
        
        editViewController?.delegate = self
    }
}

extension ViewController: NavigationDelegate{
    
    func didTfOnOff(_ controller: EditViewController, _ message: String, _ isOn: Bool) {
        tfMessage.text = message
        
        switch isOn {
        case true:
            self.isOn = true
            imgView.image = imgOn
        default:
            self.isOn = false
            imgView.image = imgOff
        }
    }
        
//    func didTextFieldDone(_ controller: EditViewController, _ message: String) {
//        tfMessage.text = message
//    }
//
//    func didLampOnOffDone(_ controller: EditViewController, _ isOn: Bool) {
//        switch isOn {
//        case true:
//            self.isOn = true
//            imgView.image = imgOn
//        default:
//            self.isOn = false
//            imgView.image = imgOff
//        }
//    }
    
}
