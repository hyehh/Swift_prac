//
//  ViewController.swift
//  Alert3
//
//  Created by Hyeji on 2021/07/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblFirstNum: UILabel!
    @IBOutlet weak var lblSecondNum: UILabel!
    @IBOutlet weak var tfInput: UITextField!
    
    var firstNum = 0
    var secondNum = 0
    var result = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        roop()
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    // 랜덤 숫자 부여
    func random() -> Int{
        return Int.random(in: 1...9)
    }
    
    // 구구단 정답 계산
    func answer(_ first: Int, _ second: Int) -> Int{
        return first * second
    }
    
    // 구구단 정답 비교
    func comparison(_ inputNum: Int, _ result: Int){
        switch inputNum == result {
        case true:
            let alertPassController = UIAlertController(title: "결과", message: "정답입니다!", preferredStyle: .alert)
            let passAction = UIAlertAction(title: "다음 문제 풀기", style: .default, handler: {ACTION in
                self.tfInput.text = ""
                self.roop()
                self.tfInput.becomeFirstResponder()
            })
            
            alertPassController.addAction(passAction)
            present(alertPassController, animated: true, completion: nil)
        default:
            let alertFailController = UIAlertController(title: "결과", message: "오답입니다!", preferredStyle: .alert)
            let failAction = UIAlertAction(title: "다시 풀기", style: .default, handler: {ACTION in
                self.tfInput.text = ""
                self.tfInput.becomeFirstResponder()
            })
            
            alertFailController.addAction(failAction)
            present(alertFailController, animated: true, completion: nil)
        }
    }
    
    // 무한 반복될 함수
    func roop() {
        firstNum = random()
        secondNum = random()
        result = answer(firstNum, secondNum)

        lblFirstNum.text = String(firstNum)
        lblSecondNum.text = String(secondNum)
    }
    
    @IBAction func btnOK(_ sender: UIButton) {
        self.view.endEditing(true)
        let inputNum = Int(tfInput.text!) ?? 0
        comparison(inputNum, result)
        
        
    }
    
}

