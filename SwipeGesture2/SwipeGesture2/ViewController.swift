//
//  ViewController.swift
//  SwipeGesture2
//
//  Created by Hyeji on 2021/07/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var pageControl: UIPageControl!
    
    var flowerList = [UIImage?]()
    var listCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        for i in 1...6{
            flowerList.append(UIImage(named: "flower_0\(i).png"))
        }
        
        listCount = flowerList.count
        imgView.image = flowerList[0]
        pageControlSetting()
        makeSwipeGesture()
    }

    func pageControlSetting() {
        pageControl.numberOfPages = listCount
        pageControl.currentPage = 0
        pageControl.pageIndicatorTintColor = UIColor.systemYellow
        pageControl.currentPageIndicatorTintColor = UIColor.systemBlue
    }
    
    @IBAction func btnPageControl(_ sender: UIPageControl) {
        imgView.image = flowerList[pageControl.currentPage]
    }
    
    func makeSwipeGesture() {
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.respondToSwipeGesture(_:)))
        swipeLeft.direction = UISwipeGestureRecognizer.Direction.left
        self.view.addGestureRecognizer(swipeLeft)
        
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.respondToSwipeGesture(_:)))
        swipeRight.direction = UISwipeGestureRecognizer.Direction.right
        self.view.addGestureRecognizer(swipeRight)
    }
    
    @objc func respondToSwipeGesture(_ gesture: UIGestureRecognizer) {
        if let swipeGesture = gesture as? UISwipeGestureRecognizer{
            switch swipeGesture.direction {
            case UISwipeGestureRecognizer.Direction.left:
                switch pageControl.currentPage == 5 {
                case true:
                    pageControl.currentPage = 0
                default:
                    pageControl.currentPage += 1
                }
                imgView.image = flowerList[pageControl.currentPage]
            case UISwipeGestureRecognizer.Direction.right:
                switch pageControl.currentPage == 0 {
                case true:
                    pageControl.currentPage = 5
                default:
                    pageControl.currentPage -= 1
                }
                imgView.image = flowerList[pageControl.currentPage]
            default:
                break
            }
        }
    }
}

