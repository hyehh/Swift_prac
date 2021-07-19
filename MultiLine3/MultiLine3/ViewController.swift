//
//  ViewController.swift
//  MultiLine3
//
//  Created by Hyeji on 2021/07/19.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfNumber: UITextField!
    @IBOutlet weak var tvResult: UITextView!
    @IBOutlet weak var lblResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lblResult.text = "계산하고 싶은 단을 입력해주세요!"
        tvResult.isEditable = false
    }

    @IBAction func btnClick(_ sender: UIButton) {
        
        // 버튼 클릭시 textview 공백 주기 (다시 버튼 클릭했을 때 이전 결과 보이지 않기 위함)
        tvResult.text = ""
        
        // 옵셔널 바인딩 및 공백 체크
        guard let intNumber = Int(tfNumber.text!) else {
            lblResult.text = "계산하고 싶은 단을 입력해주세요!"
            tfNumber.becomeFirstResponder()
            return }
        
        // for version
//        for i in 1...9{
//            tvResult.text.append("\(intNumber) X \(i) = \(intNumber * i) \n")
//        }
        
        // while version
        var i = 1
        
        while i <= 9 {
            tvResult.text.append("\(intNumber) X \(i) = \(intNumber * i) \n")
            i += 1
        }
        
        lblResult.text = "\(intNumber)단 계산이 완료되었습니다!"
        self.view.endEditing(true)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
}

