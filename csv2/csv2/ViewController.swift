//
//  ViewController.swift
//  csv2
//
//  Created by 박성훈 on 2021/09/26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btnCell: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        btnCell.layer.cornerRadius = 20
    }

    @IBAction func generateCSVFile(_ sender: UIButton) {
        
        let sFileName = "bangul.csv" // File 이름
        let documentDirectoryPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0] as String
        let documentURL = URL(fileURLWithPath: documentDirectoryPath).appendingPathComponent(sFileName)
        let output = OutputStream.toMemory()
        let csvWriter = CHCSVWriter(outputStream: output, encoding: String.Encoding.utf8.rawValue, delimiter: ",".utf16.first!)
        
        // CSV 파일의 Column 명
        for i in 1...16 {
            csvWriter?.writeField("CH_\(i)")
        }
        csvWriter?.writeField("USER_ID")
        csvWriter?.finishLine()
        
        // bangul.csv에 데이터 추가
        var arrOfEmployeeData = [[String]]()
        arrOfEmployeeData.append(["23", "32", "45", "55", "44", "77", "66", "54", "98", "88", "87", "78", "96", "34", "45", "12", "122"])
        arrOfEmployeeData.append(["11", "12", "65", "31", "33", "24", "33", "25", "87", "54", "35", "23", "12", "14", "15", "57", "123"])
        arrOfEmployeeData.append(["54", "65", "78", "32", "36", "10", "16", "14", "13", "11", "42", "64", "34", "43", "66", "98", "124"])
        
        for(elements) in arrOfEmployeeData.enumerated() {
            csvWriter?.writeField(elements.element[0]) // CH_1
            csvWriter?.writeField(elements.element[1]) // CH_2
            csvWriter?.writeField(elements.element[2]) // CH_3
            csvWriter?.writeField(elements.element[3]) // CH_4
            csvWriter?.writeField(elements.element[4]) // CH_5
            csvWriter?.writeField(elements.element[5]) // CH_6
            csvWriter?.writeField(elements.element[6]) // CH_7
            csvWriter?.writeField(elements.element[7]) // CH_8
            csvWriter?.writeField(elements.element[8]) // CH_9
            csvWriter?.writeField(elements.element[9]) // CH_10
            csvWriter?.writeField(elements.element[10]) // CH_11
            csvWriter?.writeField(elements.element[11]) // CH_12
            csvWriter?.writeField(elements.element[12]) // CH_13
            csvWriter?.writeField(elements.element[13]) // CH_14
            csvWriter?.writeField(elements.element[14]) // CH_15
            csvWriter?.writeField(elements.element[15]) // CH_16
            csvWriter?.writeField(elements.element[16]) // USER_ID
            csvWriter?.finishLine()
        }
        
        csvWriter?.closeStream()
        
        let buffer = (output.property(forKey: .dataWrittenToMemoryStreamKey) as? Data)!
        
        do {
            try buffer.write(to: documentURL)
        } catch {
            
        }
        
    }
    
}

