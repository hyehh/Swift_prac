//
//  ViewController.swift
//  ImageRepeat
//
//  Created by Hyeji on 2021/07/20.
//

import UIKit

class TimerViewController: UIViewController {

    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var imgView: UIImageView!
    
    let nameList = ["flower_01", "flower_02", "flower_03", "flower_04", "flower_05", "flower_06"]
    var nameCount = 0
    let interval = 3.0
    let timeSelector: Selector = #selector(TimerViewController.changeImage)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lblName.text = nameList[0]
        imgView.image = UIImage(named: nameList[0])
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector, userInfo: nil, repeats: true)
    }

    @objc func changeImage(){
        
        switch nameCount {
        case 0..<nameList.count-1:
            nameCount += 1
        default:
            nameCount = 0
        }
        // print(nameCount)
        lblName.text = nameList[nameCount]
        imgView.image = UIImage(named: nameList[nameCount])
        
    }

}

