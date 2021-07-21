//
//  ViewController.swift
//  PageControl3
//
//  Created by Hyeji on 2021/07/22.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var lblSiteName: UILabel!
    @IBOutlet weak var myWeb: WKWebView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var myIndicator: UIActivityIndicatorView!
    
    var siteList = ["www.naver.com", "www.nate.com", "www.google.com", "www.apple.com", "www.tistory.com", "www.cnn.com", "www.bbs.com"]
    var listCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        listCount = siteList.count
        pageControlSetting()
        webLoad(siteList[0])
        myWeb.navigationDelegate = self
    }
    
    func pageControlSetting() {
        pageControl.numberOfPages = listCount
        pageControl.currentPage = 0
        pageControl.pageIndicatorTintColor = UIColor.systemBlue
        pageControl.currentPageIndicatorTintColor = UIColor.systemYellow
    }
    
    func webLoad(_ url: String) {
        lblSiteName.text = url
        
        let myUrl = URL(string: "https://" + url)
        let myRequest = URLRequest(url: myUrl!)
        myWeb.load(myRequest)
    }

    @IBAction func btnPageControl(_ sender: UIPageControl) {
        webLoad(siteList[pageControl.currentPage])
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
