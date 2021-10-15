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
        // 버튼을 클릭하면 이벤트가 발생되기 때문에 이벤트를 발생시키는 시점에 해당 코드 작성
        // object : 이벤트를 발생시킬 때 특정 객체를 같이 넘길 수 있음! (만약 같이 넘기는 객체가 없다면 nil 로 작성하여도 무방)
        // 아아 액션이 수행되었으니 각 담당자들은 업무 수행 바람~ 이라고 명령
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "PostButton"), object: nil)
    }
    
}
