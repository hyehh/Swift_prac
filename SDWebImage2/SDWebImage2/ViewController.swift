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
        
        self.imgView.sd_setImage(with: URL(string: "http://issue3.gmoneytrans.net//Product/1.PNG"))
        
        print("여기 등장하니?")
    }


}

