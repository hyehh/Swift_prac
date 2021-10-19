//
//  ViewController.swift
//  UiViewShadow
//
//  Created by HYEJI on 2021/10/19.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myView: UIView!
    
    open var shadowOffset: CGSize = CGSize(width: 0, height: 0)
    open var shadowOpacity: Float = 0
    open var shadowRadius: CGFloat = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // 그림자 위치 설정
        // myView.layer.shadowOffset = CGSize(width: -10, height: 5)
        myView.layer.shadowPath = UIBezierPath(rect: CGRect(x: 0, y: 0, width: myView.bounds.width, height: myView.bounds.height)).cgPath
        // 그림자 불투명도 설정 (0으로 갈수록 투명해짐)
        myView.layer.shadowOpacity = 0.3
        // 그림자 둥글게 설정
        myView.layer.shadowRadius = 10
    }


}

