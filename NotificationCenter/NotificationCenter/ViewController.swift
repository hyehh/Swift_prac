//
//  ViewController.swift
//  NotificationCenter
//
//  Created by HYEJI on 2021/10/13.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // 노티피케이션 발송
//        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "load2"), object: "안녕")
        
    }

    @IBAction func btnClick(_ sender: UIButton) {
//        NotificationCenter.default.post(name: NSNotification.Name("TestNotification"), object: nil, userInfo: nil)
        // doItSomeThing에 해당 되는 것들은 처리 바람
        NotificationCenter.default.post(name: .doItSomeThing, object: nil)
    }
    
}

extension Notification.Name {
    static let doItSomeThing = Notification.Name("doItSomeThing")
}
