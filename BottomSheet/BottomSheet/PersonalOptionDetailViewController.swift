//
//  PersonalOptionDetailViewController.swift
//  BottomSheet
//
//  Created by Hyeji on 2021/08/03.
//

import UIKit

class PersonalOptionDetailViewController: UIViewController {

    @IBOutlet weak var lblPersonalName: UILabel!
    @IBOutlet weak var lblOptionName: UILabel!
    @IBOutlet weak var btnPersonalShape: UIButton!
    @IBOutlet weak var lblCustomMessage: UILabel!
    @IBOutlet weak var lblAddTitle: UILabel!
    @IBOutlet weak var lblAddCount: UILabel!
    @IBOutlet weak var btnMinus: UIButton!
    @IBOutlet weak var btnPlus: UIButton!
    @IBOutlet weak var btnAddOption1: UIButton!
    @IBOutlet weak var btnAddOption2: UIButton!
    @IBOutlet weak var lblAddTitle2: UILabel!
    @IBOutlet weak var lblAddCount2: UILabel!
    @IBOutlet weak var btnMinus2: UIButton!
    @IBOutlet weak var btnPlus2: UIButton!
    @IBOutlet weak var lblAddTitle3: UILabel!
    @IBOutlet weak var lblAddCount3: UILabel!
    @IBOutlet weak var btnMinus3: UIButton!
    @IBOutlet weak var btnPlus3: UIButton!
    @IBOutlet weak var btnNo: UIButton!
    @IBOutlet weak var btnSmall: UIButton!
    @IBOutlet weak var btnRegular: UIButton!
    @IBOutlet weak var btnBig: UIButton!
    @IBOutlet weak var btnSmall2: UIButton!
    @IBOutlet weak var btnRegular2: UIButton!
    @IBOutlet weak var btnBig2: UIButton!
    @IBOutlet weak var btnLid: UIButton!
    
    var receivedIndexPath = 0
    var btnCount = 0
    var espressoCount = 0
    var espressoMessage = ""
    var decaffeination = 0
    var halfDecaffeination = 0
    var hazelnutCount = 0
    var vanillaCount = 0
    var caramelCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        initSetting()
    }
    
    func initSetting() {
        lblPersonalName.text = personalList[receivedIndexPath]
        btnPersonalShape.layer.cornerRadius = 20
        btnAddOption1.layer.borderWidth = 1
        btnAddOption1.layer.borderColor = UIColor.systemGray5.cgColor
        btnAddOption1.layer.cornerRadius = 10
        btnAddOption2.layer.borderWidth = 1
        btnAddOption2.layer.borderColor = UIColor.systemGray5.cgColor
        btnAddOption2.layer.cornerRadius = 10
        btnNo.layer.borderWidth = 1
        btnNo.layer.borderColor = UIColor.systemGray5.cgColor
        btnNo.layer.cornerRadius = 10
        btnSmall.layer.borderWidth = 1
        btnSmall.layer.borderColor = UIColor.systemGray5.cgColor
        btnSmall.layer.cornerRadius = 10
        btnRegular.layer.borderWidth = 1
        btnRegular.layer.borderColor = UIColor.systemGray5.cgColor
        btnRegular.layer.cornerRadius = 10
        btnBig.layer.borderWidth = 1
        btnBig.layer.borderColor = UIColor.systemGray5.cgColor
        btnBig.layer.cornerRadius = 10
        btnSmall2.layer.borderWidth = 1
        btnSmall2.layer.borderColor = UIColor.systemGray5.cgColor
        btnSmall2.layer.cornerRadius = 10
        btnRegular2.layer.borderWidth = 1
        btnRegular2.layer.borderColor = UIColor.systemGray5.cgColor
        btnRegular2.layer.cornerRadius = 10
        btnBig2.layer.borderWidth = 1
        btnBig2.layer.borderColor = UIColor.systemGray5.cgColor
        btnBig2.layer.cornerRadius = 10
        btnLid.layer.borderWidth = 1
        btnLid.layer.borderColor = UIColor.systemGray5.cgColor
        btnLid.layer.cornerRadius = 10
        
        if receivedIndexPath == 1 {
            lblCustomMessage.text = "에스프레소를 커스텀으로 즐겨보세요!"
            lblOptionName.text = "추가 옵션"
            
            lblAddTitle.text = "에스프레소 샷"
            btnMinus.isEnabled = false
            
            lblAddTitle2.isHidden = true
            lblAddCount2.isHidden = true
            btnPlus2.isHidden = true
            btnMinus2.isHidden = true
            lblAddTitle3.isHidden = true
            lblAddCount3.isHidden = true
            btnPlus3.isHidden = true
            btnMinus3.isHidden = true
            
            btnNo.isHidden = true
            btnSmall.isHidden = true
            btnRegular.isHidden = true
            btnBig.isHidden = true
            btnSmall2.isHidden = true
            btnRegular2.isHidden = true
            btnBig2.isHidden = true
            btnLid.isHidden = true
        }else if receivedIndexPath == 2 {
            lblCustomMessage.text = "시럽 권장수량 : 톨(3) 그란데(4) 벤티(5)"
            lblOptionName.text = "추가 옵션"

            lblAddTitle.text = "바닐라 시럽"
            lblAddTitle2.text = "헤이즐넛 시럽"
            lblAddTitle3.text = "카라멜 시럽"
            btnMinus.isEnabled = false
            btnMinus2.isEnabled = false
            btnMinus3.isEnabled = false
            btnAddOption1.isHidden = true
            btnAddOption2.isHidden = true

            btnNo.isHidden = true
            btnSmall.isHidden = true
            btnRegular.isHidden = true
            btnBig.isHidden = true
            btnNo.isHidden = true
            btnSmall.isHidden = true
            btnRegular.isHidden = true
            btnBig.isHidden = true
            btnSmall2.isHidden = true
            btnRegular2.isHidden = true
            btnBig2.isHidden = true
            btnLid.isHidden = true
        }else if receivedIndexPath == 3 {
            lblCustomMessage.text = "얼음의 양과 음료의 양은 무관합니다."
            lblOptionName.text = "기본 옵션"
            lblAddTitle.text = "얼음"
            
            lblAddCount.isHidden = true
            btnMinus.isHidden = true
            btnPlus.isHidden = true
            btnAddOption1.isHidden = true
            btnAddOption2.isHidden = true
            lblAddTitle2.isHidden = true
            lblAddCount2.isHidden = true
            btnPlus2.isHidden = true
            btnMinus2.isHidden = true
            lblAddTitle3.isHidden = true
            lblAddCount3.isHidden = true
            btnPlus3.isHidden = true
            btnMinus3.isHidden = true
            btnSmall2.isHidden = true
            btnRegular2.isHidden = true
            btnBig2.isHidden = true
            btnLid.isHidden = true
        }else if receivedIndexPath == 4 {
            lblCustomMessage.text = "휘핑 크림을 커스텀으로 즐겨보세요!"
            lblOptionName.text = "추가 옵션"
            lblAddTitle.text = "일반 휘핑"
            lblAddTitle3.text = "에스프레소 휘핑"
            
            lblAddCount.isHidden = true
            btnMinus.isHidden = true
            btnPlus.isHidden = true
            lblAddTitle2.isHidden = true
            lblAddCount2.isHidden = true
            btnPlus2.isHidden = true
            btnMinus2.isHidden = true
            lblAddCount3.isHidden = true
            btnPlus3.isHidden = true
            btnMinus3.isHidden = true
            btnAddOption1.isHidden = true
            btnAddOption2.isHidden = true
            
            btnBig.isHidden = true
            btnLid.isHidden = true
            
            btnNo.setTitle("적게", for: .normal)
            btnSmall.setTitle("보통", for: .normal)
            btnRegular.setTitle("많이", for: .normal)
        }else if receivedIndexPath == 5 {
            lblCustomMessage.text = "드리즐을 커스텀으로 즐겨보세요!"
            lblOptionName.text = "추가 옵션"
            lblAddTitle.text = "카라멜 드리즐"
            lblAddTitle3.text = "초콜릿 드리즐"

            lblAddCount.isHidden = true
            btnMinus.isHidden = true
            btnPlus.isHidden = true
            lblAddTitle2.isHidden = true
            lblAddCount2.isHidden = true
            btnPlus2.isHidden = true
            btnMinus2.isHidden = true
            lblAddCount3.isHidden = true
            btnPlus3.isHidden = true
            btnMinus3.isHidden = true
            btnAddOption1.isHidden = true
            btnAddOption2.isHidden = true
            
            btnBig.isHidden = true
            btnLid.isHidden = true
            
            btnNo.setTitle("적게", for: .normal)
            btnSmall.setTitle("보통", for: .normal)
            btnRegular.setTitle("많이", for: .normal)
        }else {
            lblCustomMessage.text = "컵&리드 옵션을 선택해 주세요!"
            lblOptionName.text = "기본 옵션"
            lblAddTitle.text = "리드"

            lblAddCount.isHidden = true
            btnMinus.isHidden = true
            btnPlus.isHidden = true
            lblAddTitle2.isHidden = true
            lblAddCount2.isHidden = true
            btnPlus2.isHidden = true
            btnMinus2.isHidden = true
            lblAddTitle3.isHidden = true
            lblAddCount3.isHidden = true
            btnPlus3.isHidden = true
            btnMinus3.isHidden = true
            btnAddOption1.isHidden = true
            btnAddOption2.isHidden = true
            
            btnNo.isHidden = true
            btnSmall.isHidden = true
            btnRegular.isHidden = true
            btnBig.isHidden = true
            btnSmall.isHidden = true
            btnRegular.isHidden = true
            btnBig.isHidden = true
            btnSmall2.isHidden = true
            btnRegular2.isHidden = true
            btnBig2.isHidden = true
        }
    }

    @IBAction func btnLid(_ sender: UIButton) {
        btnCount += 1
        
        if btnCount % 2 == 0 {
            btnLid.layer.borderWidth = 1
            btnLid.layer.borderColor = UIColor.systemGray5.cgColor
        }else {
            btnLid.layer.borderWidth = 1.5
            btnLid.layer.borderColor = UIColor(displayP3Red: 0/255, green: 112/225, blue: 74/255, alpha: 1).cgColor
        }
        
    }
    
    @IBAction func btnAddOption1(_ sender: UIButton) {
        if espressoCount != 0 {
            btnAddOption1.layer.borderWidth = 1.5
            btnAddOption1.layer.borderColor = UIColor(displayP3Red: 0/255, green: 112/225, blue: 74/255, alpha: 1).cgColor
            btnAddOption2.layer.borderWidth = 1
            btnAddOption2.layer.borderColor = UIColor.systemGray5.cgColor
            espressoMessage = "디카페인 \(espressoCount)"
        }else {
            let resultAlert = UIAlertController(title: "에스프레소 샷의 수량을 먼저 변경해주세요!", message: nil, preferredStyle: .alert)
            let onAction = UIAlertAction(title: "OK", style: .default, handler: {ACTION in
                self.navigationController?.popViewController(animated: true)
            })
            resultAlert.addAction(onAction)
            present(resultAlert, animated: true, completion: nil)
        }
    }
    
    @IBAction func btnAddOption2(_ sender: UIButton) {
        if espressoCount != 0 {
            btnAddOption1.layer.borderWidth = 1
            btnAddOption1.layer.borderColor = UIColor.systemGray5.cgColor
            btnAddOption2.layer.borderWidth = 1.5
            btnAddOption2.layer.borderColor = UIColor(displayP3Red: 0/255, green: 112/225, blue: 74/255, alpha: 1).cgColor
            espressoMessage = "1/2 디카페인 \(espressoCount)"
        }else {
            let resultAlert = UIAlertController(title: "에스프레소 샷의 수량을 먼저 변경해주세요!", message: nil, preferredStyle: .alert)
            let onAction = UIAlertAction(title: "OK", style: .default, handler: {ACTION in
                self.navigationController?.popViewController(animated: true)
            })
            resultAlert.addAction(onAction)
            present(resultAlert, animated: true, completion: nil)
        }
    }
    
    @IBAction func btnMinus(_ sender: UIButton) {
        if receivedIndexPath == 1 {
            espressoCount -= 1
            lblAddCount.text = String(espressoCount)
            if espressoCount == 0 {
                btnMinus.isEnabled = false
            }
        }else if receivedIndexPath == 2 {
            vanillaCount -= 1
            lblAddCount.text = String(vanillaCount)
            if vanillaCount == 0 {
                btnMinus.isEnabled = false
            }
        }
    }
    
    @IBAction func btnPlus(_ sender: UIButton) {
        if receivedIndexPath == 1 {
            espressoCount += 1
            lblAddCount.text = String(espressoCount)
            btnMinus.isEnabled = true
        }else if receivedIndexPath == 2 {
            vanillaCount += 1
            lblAddCount.text = String(vanillaCount)
            btnMinus.isEnabled = true
        }
    }
    
    @IBAction func btnMinus2(_ sender: UIButton) {
        hazelnutCount -= 1
        lblAddCount2.text = String(hazelnutCount)
        if hazelnutCount == 0 {
            btnMinus2.isEnabled = false
        }
    }
    
    @IBAction func btnPlus2(_ sender: UIButton) {
        hazelnutCount += 1
        lblAddCount2.text = String(hazelnutCount)
        btnMinus2.isEnabled = true
    }
    
    @IBAction func btnMinus3(_ sender: UIButton) {
        caramelCount -= 1
        lblAddCount3.text = String(caramelCount)
        if caramelCount == 0 {
            btnMinus3.isEnabled = false
        }
    }

    @IBAction func btnPlus3(_ sender: UIButton) {
        caramelCount += 1
        lblAddCount3.text = String(caramelCount)
        btnMinus3.isEnabled = true
    }
    
    @IBAction func btnNo(_ sender: UIButton) {
        
    }
    
    @IBAction func btnSmall(_ sender: UIButton) {
    }
    
    @IBAction func btnRegular(_ sender: UIButton) {
    }
    
    @IBAction func btnBig(_ sender: UIButton) {
    }
    
    
    
    @IBAction func btnPersonal(_ sender: UIButton) {
        if receivedIndexPath == 1 {
            if espressoCount != 0 {
                if espressoMessage == "" {
                    SharePersonal.coffee = "에스프레소 샷 \(espressoCount)"
                }else {
                    SharePersonal.coffee = espressoMessage
                }
            }
        }else if receivedIndexPath == 2 {
            if (vanillaCount != 0) {
                SharePersonal.syrup += "바닐라 시럽 \(vanillaCount)"
            }else if (hazelnutCount != 0) {
                SharePersonal.syrup += "헤이즐넛 시럽 \(hazelnutCount)"
            }else if (caramelCount != 0) {
                SharePersonal.syrup += "카라멜 시럽 \(caramelCount)"
            }
        }else if receivedIndexPath == 3 {
            
        }else if receivedIndexPath == 4 {
            
        }else if receivedIndexPath == 5 {
            
        }else {
            if btnCount % 2 != 0 {
                SharePersonal.lid = "돔 리드로 변경"
            }
        }
        dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
