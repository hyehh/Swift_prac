//
//  ViewController.swift
//  PageControl4
//
//  Created by HYEJI on 2021/10/05.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet var pageControl: UIPageControl!
    @IBOutlet weak var scrollview: UIScrollView!

    // #imageLiteral(resourceName: )
    var images = [#imageLiteral(resourceName: "flower_01"), #imageLiteral(resourceName: "flower_05"), #imageLiteral(resourceName: "flower_02"), #imageLiteral(resourceName: "flower_04"), #imageLiteral(resourceName: "flower_03"), #imageLiteral(resourceName: "flower_02")]
    //var imageViews = [UIImageView]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        pageControlSetting()
        addContentScrollView()
        scrollview.delegate = self
    }
    
    func pageControlSetting() {
        pageControl.numberOfPages = images.count
        pageControl.currentPage = 0
        pageControl.pageIndicatorTintColor = UIColor.systemGray
        pageControl.currentPageIndicatorTintColor = UIColor.systemPink
    }
    
    func addContentScrollView() {
            for i in 0..<images.count {
                let imageView = UIImageView()
                let xPos = self.view.frame.width * CGFloat(i)
                imageView.frame = CGRect(x: xPos, y: 0, width: scrollview.bounds.width, height: scrollview.bounds.height)
                imageView.image = images[i]
                scrollview.addSubview(imageView)
                scrollview.contentSize.width = imageView.frame.width * CGFloat(i + 1)
            }
        }

    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
           let value = scrollView.contentOffset.x/scrollView.frame.size.width
           setPageControlSelectedPage(currentPage: Int(round(value)))
       }
    
    func setPageControlSelectedPage(currentPage:Int) {
            pageControl.currentPage = currentPage
        }
}

