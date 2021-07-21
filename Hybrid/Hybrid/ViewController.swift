//
//  ViewController.swift
//  Hybrid
//
//  Created by Hyeji on 2021/07/21.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var myWeb: WKWebView!
    @IBOutlet weak var myIndicator: UIActivityIndicatorView!
    @IBOutlet weak var tfInputSite: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        webLoad("https://www.naver.com")
        myWeb.navigationDelegate = self
    }

    func webLoad(_ url: String) {
        let myUrl = URL(string: url)
        let myRequest = URLRequest(url: myUrl!)
        myWeb.load(myRequest)
    }

    @IBAction func btnGo(_ sender: UIButton) {
        let input = tfInputSite.text!
        webLoad(checkUrl(input))

        tfInputSite.text = "" // 빈 값으로 만들어줌
        self.view.endEditing(true)
    }
    
    func checkUrl(_ input: String) -> String {
        var resultUrl = input
        let url1 = resultUrl.hasPrefix("http://")
        let url2 = resultUrl.hasPrefix("https://")
        if !url1{
            if !url2{
                resultUrl = "https://" + resultUrl
            }
        }
        
        return resultUrl
    }
    
    @IBAction func btnSite1(_ sender: UIButton) {
        webLoad("https://www.google.com")
    }
    
    
    @IBAction func btnSite2(_ sender: UIButton) {
        webLoad("https://www.daum.net")
    }
    
    @IBAction func btnHtml(_ sender: UIButton) {
        let htmlString = """
            <html>
                <head>
                    <meta charset="utf-8">
                    <meta name="viewport" content="width=device-width, initial-scale=1.0">
                </head>
                <body>
                    <h1>HTML String</h1>
                    <p>String 변수를 이용한 웹페이지</p>
                    <p><a href = "http://jtbc.joins.com">JDBC</a>로 이동<p>
                </body>
            </html>
            """
        myWeb.loadHTMLString(htmlString, baseURL: nil)
    }
    
    @IBAction func btnFile(_ sender: UIButton) {
        let filePath = Bundle.main.path(forResource: "htmlView", ofType: "html")
        let myUrl = URL(fileURLWithPath: filePath!)
        let myRequest = URLRequest(url: myUrl)
        myWeb.load(myRequest)
    }
    
    @IBAction func btnStop(_ sender: UIBarButtonItem) {
        myWeb.stopLoading()
    }
    
    @IBAction func btnRefresh(_ sender: UIBarButtonItem) {
        myWeb.reload()
    }
    
    @IBAction func btnRewind(_ sender: UIBarButtonItem) {
        myWeb.goBack()
    }
    
    @IBAction func btnFastForward(_ sender: UIBarButtonItem) {
        myWeb.goForward()
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
