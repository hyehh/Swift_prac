//
//  ViewController.swift
//  SDWebImage2
//
//  Created by HYEJI on 2021/10/01.
//

// 2021.10.01 SDWebImage url 통해서 사진 보여주기
import UIKit
import SDWebImage

class ViewController: UIViewController {

    @IBOutlet weak var imgView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let url = "http://issue3.gmoneytrans.net//Product/AirPods Max.png"
        // print(url.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed))
        
//        if let encoded = urlStr.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed), let myURL = URL(string: encoded) {
//
//               print(myURL)
//
//        }
        
        self.imgView.sd_setImage(with: URL(string: url.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!))
        
        print("여기 등장하니?")
    }


}

