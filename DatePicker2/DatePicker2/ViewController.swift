//
//  ViewController.swift
//  DatePicker2
//
//  Created by Hyeji on 2021/07/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblCurrentTime: UILabel!
    @IBOutlet weak var lblPickerTime: UILabel!
    
    let interval = 1.0 // 1초
    let timeSelector: Selector = #selector(ViewController.updateTime)
    
    var currentTime: String = ""
    var pickerTIme: String = ""
    var timeBool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector, userInfo: nil, repeats: true)
        
        lblPickerTime.text = "알람이 울릴 시간을 선택하세요!"
    }

    @IBAction func changePicker(_ sender: UIDatePicker) {
        let picekerDate = sender
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "ko")
        formatter.dateFormat = "yyyy-MM-dd EEE a hh:mm"
        lblPickerTime.text = "선택시간 : \(formatter.string(from: picekerDate.date))"
        pickerTIme = formatter.string(from: picekerDate.date)
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
        
        if currentTime == pickerTIme{
            
            let seco: Int = Int(formatter.string(from: date as Date).suffix(2)) ?? 0
            switch seco % 2{
            case 0:
                view.backgroundColor = UIColor.red
            default:
                view.backgroundColor = UIColor.blue
            }
            
//            switch timeBool {
//            case true:
//                view.backgroundColor = UIColor.red
//            default:
//                view.backgroundColor = UIColor.blue
//            }
//            timeBool = !timeBool
            
        }else{
            view.backgroundColor = UIColor.white
        }
        
    }
    
}

