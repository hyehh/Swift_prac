//
//  ViewController.swift
//  PickerView2
//
//  Created by Hyeji on 2021/07/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var pickerNumber: UIPickerView!
    @IBOutlet weak var tvResult: UITextView!
    
    let columnCount = 1
    var maxData = 0
    var numberList = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        for i in 2...9{
            numberList.append("\(i)단")
        }
        maxData = numberList.count
        calc(0)
        
        pickerNumber.dataSource = self
        pickerNumber.delegate = self
    }
    
    func calc(_ row: Int){
        lblName.text = numberList[row]
        for i in 1...9{
            tvResult.text.append("\(row+2) X \(i) = \((row+2) * i) \n")
        }
    }

} // ViewController

extension ViewController: UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return columnCount
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return maxData
    }

}

extension ViewController: UIPickerViewDelegate{
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return numberList[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        tvResult.text = ""
        calc(row)
    }
}

