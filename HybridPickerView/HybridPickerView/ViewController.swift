//
//  ViewController.swift
//  HybridPickerView
//
//  Created by Hyeji on 2021/07/21.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var sitePicker: UIPickerView!
    @IBOutlet weak var myWeb: WKWebView!
    @IBOutlet weak var myIndicator: UIActivityIndicatorView!
    
    var siteList = ["www.naver.com", "www.nate.com", "www.google.com", "www.apple.com", "www.tistory.com", "www.cnn.com", "www.bbs.com"]
    var siteCount = 0
    var columnCount = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        siteCount = siteList.count
        webLoad(siteList[0])
        myWeb.navigationDelegate = self
        sitePicker.dataSource = self
        sitePicker.delegate = self
    }
    
    func webLoad(_ url : String) {
        let myUrl = URL(string: "https://" + url)
        let myRequest = URLRequest(url: myUrl!)
        myWeb.load(myRequest)
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

extension ViewController: UIPickerViewDataSource{
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return columnCount
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return siteCount
    }

}

extension ViewController: UIPickerViewDelegate{
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return siteList[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        webLoad(siteList[row])
    }
    
}
