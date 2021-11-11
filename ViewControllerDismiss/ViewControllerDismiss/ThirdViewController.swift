//
//  ThirdViewController.swift
//  ViewControllerDismiss
//
//  Created by HYEJI on 2021/11/10.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var btnFinal: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func btnFinal(_ sender: UIButton) {
        navigationController?.viewControllers.removeAll(where: { (vc) -> Bool in
            // 내가 없애고 싶은 View의 목록 적어주기 (대신 현재 VC 즉, 마지막 VC 는 제외 -> 밑에서 따로 처리 예정)
            if vc.isKind(of: SecondViewController.self) {
//            if vc.isKind(of: SecondViewController.self) ||
//                vc.isKind(of: FirstViewController.self) {
                return true
            } else {
                return false
            }
        })
        // 마지막 ViewController 는 popViewController 로 설정하면서 animation 효과 주기!
        navigationController?.popViewController(animated: true)
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
