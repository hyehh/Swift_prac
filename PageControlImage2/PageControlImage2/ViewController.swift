//
//  ViewController.swift
//  PageControlImage2
//
//  Created by HYEJI on 2021/11/26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var pageControl: CustomPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        pageControl.numberOfPages = 3
        pageControl.currentPage = 0
    }
    
    
    @IBAction func pageControl(_ sender: CustomPageControl) {
        pageControl.currentPage = sender.currentPage
    }
    
    

}

