//
//  SecondViewController.swift
//  Protocol
//
//  Created by HYEJI on 2021/11/26.
//

import UIKit

protocol SecondViewControllerDelegate {
    func sendData(_ secondData : String)
}

class SecondViewController: UIViewController {

    var delegate : SecondViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func secondButton(_ sender: UIButton) {
        delegate?.sendData("이거 데이터 넘겨주는거지롱ㅎㅅㅎ")
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
