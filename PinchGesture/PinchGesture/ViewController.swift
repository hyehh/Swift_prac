//
//  ViewController.swift
//  PinchGesture
//
//  Created by Hyeji on 2021/07/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        makePinchGesture()
    }

    func makePinchGesture() {
        let pinchGesture = UIPinchGestureRecognizer(target: self, action: #selector(ViewController.doPinch(_:)))
        self.view.addGestureRecognizer(pinchGesture)
    }
    
    @objc func doPinch(_ gesture: UIPinchGestureRecognizer) {
        // 크기 설정
        imgView.transform = imgView.transform.scaledBy(x: gesture.scale, y: gesture.scale)
        gesture.scale = 1
    }
    
}

