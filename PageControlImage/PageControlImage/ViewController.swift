//
//  ViewController.swift
//  PageControlImage
//
//  Created by HYEJI on 2021/11/18.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let pc = LKPageControl.init(frame: .zero)
        pc.currentPageIndicatorTintColor = .blue
        pc.pageIndicatorTintColor = .white
        pc.numberOfPages = 2
        pc.currentPage = 0
        pc.translatesAutoresizingMaskIntoConstraints = false
        pc.addTarget(self, action: #selector(onPageChanged(_:)), for: .valueChanged)
        view.addSubview(pc)
        
        self.view.addConstraints([
            
            pc.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 24),
            pc.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
            pc.heightAnchor.constraint(equalToConstant: 35),
            pc.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5, constant: 0)
            
        ])
    }

    @objc func onPageChanged(_ sender: LKPageControl) {
      print("page \(sender.currentPage) is selected")
    }
    
}

