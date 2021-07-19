//
//  ViewController.swift
//  Switch2
//
//  Created by Hyeji on 2021/07/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var lblSize: UILabel!
    @IBOutlet weak var lblLamp: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imgView.image = UIImage(named: "lamp_on")
        
    }

    @IBAction func switchSize(_ sender: UISwitch) {
        
        let scale: CGFloat = 2.0
        var newWidth: CGFloat
        var newHeight: CGFloat
        
        switch sender.isOn{
        case true:
            newWidth = imgView.frame.width * scale
            newHeight = imgView.frame.height * scale
            lblSize.text = "전구 확대 여부 : Y"
        default:
            newWidth = imgView.frame.width / scale
            newHeight = imgView.frame.height / scale
            lblSize.text = "전구 확대 여부 : N"
        }
        
        imgView.frame.size = CGSize(width: newWidth, height: newHeight)
    }
    
    @IBAction func switchLamp(_ sender: UISwitch) {
        switch sender.isOn{
        case true:
            imgView.image = UIImage(named: "lamp_on")
            lblLamp.text = "전구 스위치 여부 : Y"
        default:
            imgView.image = UIImage(named: "lamp_off")
            lblLamp.text = "전구 스위치 여부 : N"
        }
    }
}

