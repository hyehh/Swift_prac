//
//  BtnViewController.swift
//  NotificationCenter
//
//  Created by HYEJI on 2021/10/13.
//

import UIKit

class BtnViewController: UIViewController {

    @IBOutlet weak var lblText: UILabel!
    var str: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        // Do any additional setup after loading the view.
//        NotificationCenter.default.addObserver(self, selector: #selector(loadList), name: NSNotification.Name(rawValue: "load2"), object: nil)
//
//        print(str)
//        lblText.text = str
        
        // 옵저버 등록
        // 담당자 인적사항 및 업무 추가
//        NotificationCenter.default.addObserver(self, selector: #selector(printSomeThing(_:)), name: .doItSomeThing, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(showLabel), name: NSNotification.Name(rawValue: "PostButton"), object: nil)
    }
    
    @objc func showLabel(){
        // 수행할 업무 적어주기!
        lblText.layer.isHidden = false
    }
    
//    @objc func printSomeThing(_ notification: Notification) {
//            print("do it something")
//        }
//    }
//    @objc func loadList(_ notification : NSNotification)
//    {
//        // 실행되는 부분...
//        let data = notification.object as? String ?? ""
//        str = data
//
//    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
