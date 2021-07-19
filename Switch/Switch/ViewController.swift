//
//  ViewController.swift
//  Switch
//
//  Created by Hyeji on 2021/07/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var btnText: UIButton!
    
    var imgOn: UIImage?
    var imgOff: UIImage?
    var isZoom = true // 전구 확대
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imgOn = UIImage(named: "lamp_on.png")
        imgOff = UIImage(named: "lamp_off.png")
        
        imgView.image = imgOn
    }

    @IBAction func btnResize(_ sender: UIButton) {
        
        let scale: CGFloat = 2.0
        var newWidth: CGFloat
        var newHeight: CGFloat
        
        switch isZoom{
        case true:
            newWidth = imgView.frame.width * scale
            newHeight = imgView.frame.height * scale
            btnText.setTitle("이미지 축소", for: .normal)
        default:
            newWidth = imgView.frame.width / scale
            newHeight = imgView.frame.height / scale
            btnText.setTitle("이미지 확대", for: .normal)
        }
        imgView.frame.size = CGSize(width: newWidth, height: newHeight)
        isZoom = !isZoom
    }
    
    @IBAction func switchLamp(_ sender: UISwitch) {
        switch sender.isOn{
        case true:
            imgView.image = imgOn
        default:
            imgView.image = imgOff
        }
    }
}

