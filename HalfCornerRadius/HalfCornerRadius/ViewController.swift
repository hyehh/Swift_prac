//
//  ViewController.swift
//  HalfCornerRadius
//
//  Created by HYEJI on 2021/12/08.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let rectShape = CAShapeLayer()
        rectShape.bounds = self.myView.frame
        rectShape.position = self.myView.center
        rectShape.path = UIBezierPath(roundedRect: self.myView.bounds, byRoundingCorners: [.bottomLeft , .bottomRight], cornerRadii: CGSize(width: 20, height: 20)).cgPath

        self.myView.layer.backgroundColor = UIColor.green.cgColor
        self.myView.layer.mask = rectShape
    }


}

