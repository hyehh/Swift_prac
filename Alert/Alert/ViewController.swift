//
//  ViewController.swift
//  Alert
//
//  Created by Hyeji on 2021/07/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lampImage: UIImageView!
    
    var imgOn: UIImage?
    var imgOff: UIImage?
    var imgRemove: UIImage?
    var isOn = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imgOn = UIImage(named: "lamp_on")
        imgOff = UIImage(named: "lamp_off")
        imgRemove = UIImage(named: "lamp_remove")
        
        lampImage.image = imgOn
        isOn = true
    }

    @IBAction func btnOn(_ sender: UIButton) {
        switch isOn {
        case true:
            impossibelOn()
        default:
            lampImage.image = imgOn
            isOn = true
        }
    }
    
    @IBAction func btnOff(_ sender: UIButton) {
        
        let alertOff = UIAlertController(title: "렘프 끄기", message: "램프를 끄시겠습니까?", preferredStyle: .alert)
        let yesAction = UIAlertAction(title: "네", style: .default, handler: {ACTION in
            switch self.isOn {
            case true:
                self.lampImage.image = self.imgOff
                self.isOn = false
            default:
                self.impoosibleOff()
            }
        })
        let noAction = UIAlertAction(title: "아니오", style: .default, handler: nil)
        
        alertOff.addAction(yesAction)
        alertOff.addAction(noAction)
        
        present(alertOff, animated: true, completion: nil)
    }
    
    @IBAction func btnRemove(_ sender: UIButton) {
        let alertRemove = UIAlertController(title: "램프 제거", message: "램프를 제거할까요?", preferredStyle: .alert)
        let onAction = UIAlertAction(title: "아니오, 끕니다!", style: .default, handler: {ACTION in
            switch self.isOn{
            case true:
                self.lampImage.image = self.imgOff
                self.isOn = false
            default:
                self.impoosibleOff()
            }

        })
        let offAction = UIAlertAction(title: "아니오, 켭니다!", style: .default, handler: {ACTION in
            switch self.isOn{
            case true:
                self.impossibelOn()
            default:
                self.lampImage.image = self.imgOn
                self.isOn = true
            }
        })
        let removeAction = UIAlertAction(title: "네, 제거합니다!", style: .default, handler: {ACTION in
            self.lampImage.image = self.imgRemove
            self.isOn = false
        })
        
        alertRemove.addAction(onAction)
        alertRemove.addAction(offAction)
        alertRemove.addAction(removeAction)
        
        present(alertRemove, animated: true, completion: nil)
    }
    
    func impossibelOn(){
        let alertOn = UIAlertController(title: "경고", message: "현재 ON 상태 입니다!", preferredStyle: .alert)
        let onAction = UIAlertAction(title: "네, 알겠습니다", style: .default, handler: nil)
        
        alertOn.addAction(onAction)
        
        present(alertOn, animated: true, completion: nil)
    }
    
    func impoosibleOff(){
        let alertOffImpossible = UIAlertController(title: "경고", message: "현재 Off 상태 입니다!", preferredStyle: .alert)
        let offImpossibleAction = UIAlertAction(title: "네, 알겠습니다", style: .default, handler: nil)
        
        alertOffImpossible.addAction(offImpossibleAction)
        present(alertOffImpossible, animated: true, completion: nil)
    }
}

