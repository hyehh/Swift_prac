//
//  FirstViewController.swift
//  Protocol
//
//  Created by HYEJI on 2021/11/26.
//

import UIKit

class FirstViewController: UIViewController, SecondViewControllerDelegate {

    @IBOutlet weak var firstLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func sendData(_ secondData: String) {
        firstLabel.text = secondData
    }
    
    @IBAction func firstButton(_ sender: UIButton) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController
        vc!.delegate = self
        navigationController?.pushViewController(vc!, animated: true)
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
