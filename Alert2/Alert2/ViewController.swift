//
//  ViewController.swift
//  Alert2
//
//  Created by Hyeji on 2021/07/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblCurrentTime: UILabel!
    @IBOutlet weak var lblPickerTime: UILabel!
    
    let interval = 1.0
    let timeSelector: Selector = #selector(ViewController.updateTime)
    var currentTime = ""
    var pickerTime = ""
    var isClick = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector, userInfo: nil, repeats: true)
        lblPickerTime.text = "알람 시간을 설정해주세요!"
    }

    @IBAction func datePicker(_ sender: UIDatePicker) {
        let pickerDate = sender
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "ko")
        formatter.dateFormat = "yyyy-MM-dd EEE a hh:mm"
        pickerTime = formatter.string(from: pickerDate.date)
        lblPickerTime.text = "현재시간 : \(pickerTime)"
        isClick = true
    }
    
    @objc func updateTime(){
        let date = NSDate()
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "ko")
        formatter.dateFormat = "yyyy-MM-dd EEE a hh:mm:ss"
        lblCurrentTime.text = "현재시간 : \(formatter.string(from: date as Date))"
        
        let formatter2 = DateFormatter()
        formatter2.locale = Locale(identifier: "ko")
        formatter2.dateFormat = "yyyy-MM-dd EEE a hh:mm"
        currentTime = formatter2.string(from: date as Date)
        
        if (currentTime == pickerTime) && isClick {
            isClick = false
            
            let alertController = UIAlertController(title: "알림", message: "설정된 시간입니다!", preferredStyle: .alert)
            let alertAction = UIAlertAction(title: "알림 끄기", style: .default, handler: {ACTION in
                // isClick = false
            })
            
            alertController.view.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
            alertController.view.layer.cornerRadius = 20
            alertController.addAction(alertAction)
            present(alertController, animated: true, completion: nil)
        }
    }
}

