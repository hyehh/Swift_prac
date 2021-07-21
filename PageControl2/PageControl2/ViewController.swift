//
//  ViewController.swift
//  PageControl2
//
//  Created by Hyeji on 2021/07/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblNumber: UILabel!
    @IBOutlet weak var pageControl: UIPageControl!
    
    var numberList = Array<Int>(1...10)
    var listCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        listCount = numberList.count
        lblNumber.text = String(numberList[0])
        lblNumber.textColor = UIColor.systemRed
        pageControlSetting()
    }
    
    func pageControlSetting() {
        pageControl.numberOfPages = listCount
        pageControl.currentPage = 0
        pageControl.pageIndicatorTintColor = UIColor.systemPurple
        pageControl.currentPageIndicatorTintColor = UIColor.systemYellow
    }

    @IBAction func btnPageControl(_ sender: Any) {
        lblNumber.text = String(numberList[pageControl.currentPage])
        switch numberList[pageControl.currentPage] % 2 == 0 {
        case true:
            lblNumber.textColor = UIColor.systemBlue
        default:
            lblNumber.textColor = UIColor.systemRed
        }

    }
}

