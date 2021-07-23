//
//  ViewController.swift
//  Navigation2
//
//  Created by Hyeji on 2021/07/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgView: UIImageView!
    
    var imgOn = UIImage(named: "lamp_on.png")
    var imgOff = UIImage(named: "lamp_off.png")
    var imgRed = UIImage(named: "lamp_red.png")
    var isOnOff = true
    var isRed = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imgView.image = imgOn
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let chooseViewController = segue.destination as? ChooseViewController
        
        chooseViewController?.isOnOff = isOnOff
        chooseViewController?.isRed = isRed
        
        chooseViewController?.delegate = self
    }
}

extension ViewController: LampDelegate{
    
    func didLampSwitchDone(_ controller: ChooseViewController, _ isOnOff: Bool, _ isRed: Bool) {
        switch isOnOff {
        case true:
            switch isRed {
            case true:
                self.isOnOff = true
                self.isRed = true
                imgView.image = imgRed
            default:
                self.isOnOff = true
                self.isRed = false
                imgView.image = imgOn
            }
        default:
            self.isOnOff = false
            self.isRed = false
            imgView.image = imgOff
        }
    }

}
