//
//  ViewController.swift
//  StoryBoardCodeImageView
//
//  Created by HYEJI on 2021/11/30.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        setImageView()
    }

    func setImageView() {
        let myImage = UIImage(named: "Hyeji")
        let myImageView : UIImageView = UIImageView()
        view.addSubview(myImageView)
        myImageView.translatesAutoresizingMaskIntoConstraints = false
        myImageView.contentMode = UIView.ContentMode.scaleAspectFit
        // 중앙에 오게 하는 코드
//        myImageView.frame.size.width = 200
//        myImageView.frame.size.height = 200
//        myImageView.center = self.view.center
        myImageView.widthAnchor.constraint(equalToConstant: 180).isActive = true
        myImageView.heightAnchor.constraint(equalToConstant: 180).isActive = true
        myImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        myImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -200).isActive = true
        myImageView.image = myImage
    }

}

