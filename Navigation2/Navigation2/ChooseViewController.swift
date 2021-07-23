//
//  ChooseViewController.swift
//  Navigation2
//
//  Created by Hyeji on 2021/07/23.
//

import UIKit

class ChooseViewController: UIViewController {

    @IBOutlet weak var swOn: UISwitch!
    @IBOutlet weak var swRed: UISwitch!
    
    var isOnOff = true
    var isRed = false
    var delegate: LampDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        swOn.isOn = isOnOff
        swRed.isOn = isRed
    }
    

    @IBAction func btnSwOn(_ sender: UISwitch) {
        switch sender.isOn {
        case true:
            isOnOff = true
            swRed.isEnabled = true
        default:
            isOnOff = false
            swRed.isEnabled = false
            isRed = false
            swRed.isOn = false
        }
    }
    
    @IBAction func btnSwRed(_ sender: UISwitch) {
        switch sender.isOn {
        case true:
            isRed = true
            isOnOff = true
        default:
            switch isOnOff {
            case true:
                isRed = false
                isOnOff = true
            default:
                isRed = false
                isOnOff = false
            }
        }
    }
    
    @IBAction func btnFinish(_ sender: UIButton) {
        print(isOnOff)
        delegate?.didLampSwitchDone(self, isOnOff, isRed)
        navigationController?.popViewController(animated: true)
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
