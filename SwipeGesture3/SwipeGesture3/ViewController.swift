//
//  ViewController.swift
//  SwipeGesture3
//
//  Created by Hyeji on 2021/07/22.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var myWeb: WKWebView!
    @IBOutlet weak var myIndicator: UIActivityIndicatorView!
    @IBOutlet weak var pageControl: UIPageControl!
    
    var siteList = ["www.naver.com", "www.nate.com", "www.google.com", "www.apple.com", "www.tistory.com", "www.bbs.com", "www.cnn.com"]
    var listCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        listCount = siteList.count
        pageControlSetting()
        webLoad(siteList[0])
        singleSwipe()
        myWeb.navigationDelegate = self
    }
    
    func pageControlSetting() {
        pageControl.numberOfPages = listCount
        pageControl.currentPage = 0
        pageControl.pageIndicatorTintColor = UIColor.systemGray
        pageControl.currentPageIndicatorTintColor = UIColor.systemPink
    }
    
    func webLoad(_ url: String) {
        let myUrl = URL(string: "https://" + url)
        let myRequest = URLRequest(url: myUrl!)
        myWeb.load(myRequest)
    }

    @IBAction func btnPageControl(_ sender: UIPageControl) {
        webLoad(siteList[pageControl.currentPage])
    }
    
    func singleSwipe() {
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.respondToSwipe(_:)))
        swipeLeft.direction = UISwipeGestureRecognizer.Direction.left
        self.view.addGestureRecognizer(swipeLeft)
        
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.respondToSwipe(_:)))
        swipeRight.direction = UISwipeGestureRecognizer.Direction.right
        self.view.addGestureRecognizer(swipeRight)
    }
    
    @objc func respondToSwipe(_ gesture: UIGestureRecognizer){
        if let swipeGesture = gesture as? UISwipeGestureRecognizer {
            
            switch swipeGesture.direction {
            case UISwipeGestureRecognizer.Direction.left:
                switch pageControl.currentPage == listCount-1 {
                case true:
                    pageControl.currentPage = 0
                default:
                    pageControl.currentPage += 1
                }
                webLoad(siteList[pageControl.currentPage])
            case UISwipeGestureRecognizer.Direction.right:
                switch pageControl.currentPage == 0 {
                case true:
                    pageControl.currentPage = listCount-1
                default:
                    pageControl.currentPage -= 1
                }
                webLoad(siteList[pageControl.currentPage])
            default:
                break
            }
            
        }
    }
}

extension ViewController: WKNavigationDelegate{
    
    func webView(_ webView: WKWebView, didCommit navigation: WKNavigation!) {
        myIndicator.startAnimating()
        myIndicator.isHidden = false
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        myIndicator.stopAnimating()
        myIndicator.isHidden = true
    }
    
    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
        myIndicator.stopAnimating()
        myIndicator.isHidden = true
    }
    
}
