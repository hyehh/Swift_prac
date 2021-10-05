//
//  ViewController.swift
//  PageControl
//
//  Created by Hyeji on 2021/07/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var pageControl: UIPageControl!
    
    var flowerFileList = [UIImage?]()
    var listCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        for i in 1...6{
            flowerFileList.append(UIImage(named: "flower_0\(i).png"))
        }
        listCount = flowerFileList.count
        imgView.image = flowerFileList[0]
        pageControlSetting()
    }
    
    func pageControlSetting() {
        pageControl.numberOfPages = listCount
        pageControl.currentPage = 0
        pageControl.pageIndicatorTintColor = UIColor.systemGray
        pageControl.currentPageIndicatorTintColor = UIColor.systemPink
    }

    @IBAction func btnPageControl(_ sender: UIPageControl) {
        imgView.image = flowerFileList[pageControl.currentPage]
    }
}

