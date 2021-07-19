//
//  ViewController.swift
//  Calculation2
//
//  Created by Hyeji on 2021/07/19.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfFirstNum: UITextField!
    @IBOutlet weak var tfSecondNum: UITextField!
    @IBOutlet weak var tfAdd: UITextField!
    @IBOutlet weak var tfMinus: UITextField!
    @IBOutlet weak var tfMultiple: UITextField!
    @IBOutlet weak var tfQuotient: UITextField!
    @IBOutlet weak var tfRemainder: UITextField!
    @IBOutlet weak var lblResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lblResult.text = "2개의 숫자를 입력해주세요!"
        readOnly()
    }

    @IBAction func btnCalc(_ sender: UIButton) {
        
        let intFirstNum = Int(tfFirstNum.text!) ?? 0
        let intSecondNum = Int(tfSecondNum.text!) ?? 0
        
        calc(intFirstNum, intSecondNum)
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func readOnly(){
        // tfAdd.isUserInteractionEnabled = false
        tfAdd.isEnabled = false
        tfMinus.isEnabled = false
        tfMultiple.isEnabled = false
        tfQuotient.isEnabled = false
        tfRemainder.isEnabled = false
    }
    
    func calc(_ intFirstNum: Int, _ intSecondNum: Int){
        
        tfAdd.text = String(intFirstNum + intSecondNum)
        tfMinus.text = String(intFirstNum - intSecondNum)
        tfMultiple.text = String(intFirstNum * intSecondNum)
        if intSecondNum == 0{
            tfQuotient.text = "계산 불가"
            tfRemainder.text = "계산 불가"
        }else{
            tfQuotient.text = String(intFirstNum / intSecondNum)
            tfRemainder.text = String(intFirstNum % intSecondNum)
        }
        
        lblResult.text = "계산이 완료되었습니다"
        
        self.view.endEditing(true)
    }
}

