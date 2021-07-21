//
//  ViewController.swift
//  PickerView
//
//  Created by Hyeji on 2021/07/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imagePicker: UIPickerView!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var imgScene: UIImageView!
    
    var imgNameList: Array<String> = []
    var imgList: Array<UIImage?> = []
    var maxImg = 0
    let columnCount = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // 이미지 이름 배열
        for i in 1...10{
            imgNameList.append("w\(i).jpg")
        }
        maxImg = imgNameList.count
        
        // 이미지 파일 배열
        for i in 0..<maxImg{
            let image = UIImage(named: imgNameList[i])
            imgList.append(image)
        }
        
        lblName.text = imgNameList[0]
        imgScene.image = imgList[0]
        
        imagePicker.dataSource = self
        imagePicker.delegate = self
        
    }

} // ViewController

extension ViewController: UIPickerViewDataSource{
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return columnCount
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return maxImg
    }
    
}

extension ViewController: UIPickerViewDelegate{
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return imgNameList[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        lblName.text = imgNameList[row]
        imgScene.image = imgList[row]
    }
}

