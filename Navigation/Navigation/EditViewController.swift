//
//  EditViewController.swift
//  Navigation
//
//  Created by Hyeji on 2021/07/23.
//

import UIKit

class EditViewController: UIViewController {

    @IBOutlet weak var lblMessage: UILabel!
    @IBOutlet weak var tfMessage: UITextField!
    @IBOutlet weak var lblOnOff: UILabel!
    @IBOutlet weak var swIsOn: UISwitch!
    
    var isOn: Bool = true
    var message: String = ""
    var segueName: String = ""
    var delegate: NavigationDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        inputInformation()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    // ViewController에서 넘긴 데이터 받기
    func inputInformation() {
        lblMessage.text = segueName
        tfMessage.text = message
        swIsOn.isOn = isOn
    }
    
    @IBAction func btnFInish(_ sender: UIButton) {
        self.view.endEditing(true)
        delegate?.didTfOnOff(self, tfMessage.text!, isOn)
//        delegate?.didTextFieldDone(self, tfMessage.text!)
//        delegate?.didLampOnOffDone(self, isOn)
        
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func swOnOff(_ sender: UISwitch) {
        switch sender.isOn {
        case true:
            isOn = true
        default:
            isOn = false
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
