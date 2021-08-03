//
//  ViewController.swift
//  BottomSheet2
//
//  Created by Hyeji on 2021/08/03.
//

import UIKit
import MaterialComponents.MaterialBottomSheet

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func btnBottom(_ sender: UIButton) {
        
        // 바텀 시트로 쓰일 뷰컨트롤러 생성
        let vc = storyboard?.instantiateViewController(withIdentifier: "BottomSheetViewController") as! BottomSheetViewController
        
        // MDC 바텀 시트로 설정
        let bottomSheet: MDCBottomSheetController = MDCBottomSheetController(contentViewController: vc)
        
        // 보여주기
        present(bottomSheet, animated: true, completion: nil)
    }
}

