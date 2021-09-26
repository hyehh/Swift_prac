//
//  ViewController.swift
//  csv2
//
//  Created by 박성훈 on 2021/09/26.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func generateCSVFile(_ sender: UIButton) {
        
        let sFileName = "test.csv" // File 이름
        let documentDirectoryPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0] as String
        let documentURL = URL(fileURLWithPath: documentDirectoryPath).appendingPathComponent(sFileName)
        let output = OutputStream.toMemory()
        let csvWriter = CHCSVWriter(outputStream: output, encoding: String.Encoding.utf8.rawValue, delimiter: ",".utf16.first!)
        
        // HEADER FOR THE CSV FILE
        csvWriter?.writeField("EMPLOYEE_ID")
        csvWriter?.writeField("EMPLOYEE_NAME")
        csvWriter?.writeField("EMPLOYEE_AGE")
        csvWriter?.writeField("EMPLOYEE_DESIGNATION")
        csvWriter?.finishLine()
        
        // ARRAY TO ADD DATA FOR THE EMPLOYEE
        var arrOfEmployeeData = [[String]]()
        arrOfEmployeeData.append(["122", "John Doe", "22", "Sys Analyst"])
        arrOfEmployeeData.append(["123", "Johnson Doe", "30", "HR"])
        arrOfEmployeeData.append(["124", "Hyeji", "25", "Developer"])
        
        // EMPLOYEE_ID EMPLOYEE_NAME EMPLOYEE_AGE EMPLOYEE_DESIGNATION
        // 123         john doe      22           sys analyst
        
        for(elements) in arrOfEmployeeData.enumerated() {
            csvWriter?.writeField(elements.element[0]) // employee ID
            csvWriter?.writeField(elements.element[1]) // employee name
            csvWriter?.writeField(elements.element[2]) // employee age
            csvWriter?.writeField(elements.element[3]) // employee designation
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

