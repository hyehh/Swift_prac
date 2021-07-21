//
//  ViewController.swift
//  AlertActionSheet
//
//  Created by Hyeji on 2021/07/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnAlert(_ sender: UIButton) {
        let alertController = UIAlertController(title: "Title", message: "Message", preferredStyle: .alert)
        let defaultAlertAction = UIAlertAction(title: "Action Default", style: .default, handler: {ACTION in
            print("Action Default Click")
        })
        let destructiveAlertAction = UIAlertAction(title: "Action Destructive", style: .destructive, handler: {ACTION in
            print("Action Destructive Click")
        })
        let cancelAlertAction = UIAlertAction(title: "Action Cancel", style: .cancel, handler: {ACTION in
            print("Action Cancel Click")
        })
        
        alertController.addAction(defaultAlertAction)
        alertController.addAction(destructiveAlertAction)
        alertController.addAction(cancelAlertAction)
        
        present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func btnActionSheet(_ sender: UIButton) {
        let actionSheetController = UIAlertController(title: "Title", message: "Message", preferredStyle: .actionSheet)
        let defaultActionSheet = UIAlertAction(title: "Action Default", style: .default, handler: {ACTION in
            print("Action Default Click")
        })
        let destructiveActionSheet = UIAlertAction(title: "Action Destructive", style: .destructive, handler: {ACTION in
            print("Action Destructive Click")
        })
        let cancelActionSheet = UIAlertAction(title: "Action Cancel", style: .cancel, handler: {ACTION in
            print("Action Cancel Click")
        })
        
        actionSheetController.addAction(defaultActionSheet)
        actionSheetController.addAction(destructiveActionSheet)
        actionSheetController.addAction(cancelActionSheet)
        
        present(actionSheetController, animated: true, completion: nil)
    }
}

