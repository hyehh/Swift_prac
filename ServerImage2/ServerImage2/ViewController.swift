//
//  ViewController.swift
//  ServerImage2
//
//  Created by Hyeji on 2021/07/28.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgView: UIImageView!
    var imgList = [UIImage?]()
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imgSetting()
        imgView.image = imgList[0]
    }
    
    func imgSetting() {
        // 서버에 있는 이미지를 다 가져오고 시작한다!
        for i in 1...6 {
            let url = URL(string: "http://192.168.0.92:8080/ios/flower_0\(i).png")
            let data = try? Data(contentsOf: url!)
            imgList.append(UIImage(data: data!))
        }
    }

    @IBAction func btnPrev(_ sender: UIButton) {
        
        if count == 0 {
            count = 5
        }else {
            count -= 1
        }
        imgView.image = imgList[count]
    }
    
    @IBAction func btnNext(_ sender: UIButton) {
        
        if count == 5 {
            count = 0
        }else {
            count += 1
        }
        imgView.image = imgList[count]
    }
    
}

