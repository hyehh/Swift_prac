//
//  ViewController.swift
//  LottieView
//
//  Created by HYEJI on 2021/11/30.
//

import UIKit
import Lottie

class ViewController: UIViewController {

    let animationView = AnimationView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("시작")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        setLottie()
    }

    func setLottie() {
        animationView.frame = view.bounds
        animationView.animation = Animation.named("heart")
        animationView.contentMode = .scaleAspectFit
        animationView.loopMode = .loop
        animationView.play()
        view.addSubview(animationView)
    }

}

