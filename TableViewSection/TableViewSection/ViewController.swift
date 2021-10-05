//
//  ViewController.swift
//  TableViewSection
//
//  Created by HYEJI on 2021/10/05.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        
        let FirstNib = UINib(nibName: String(describing: FirstCell.self), bundle: nil)
        let SecondNib = UINib(nibName: String(describing: SecondCell.self), bundle: nil)
        let ThirdNib = UINib(nibName: String(describing: ThirdCell.self), bundle: nil)
        
        self.tableView.register(FirstNib, forCellReuseIdentifier: "FirstCell")
        self.tableView.register(SecondNib, forCellReuseIdentifier: "SecondCell")
        self.tableView.register(ThirdNib, forCellReuseIdentifier: "ThirdCell")
        
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell = (tableView.dequeueReusableCell(withIdentifier: "FirstCell", for: indexPath) as? FirstCell)!
            return cell
        }else if indexPath.section == 1 {
            let cell = (tableView.dequeueReusableCell(withIdentifier: "SecondCell", for: indexPath) as? SecondCell)!
            return cell
        }else {
            let cell = (tableView.dequeueReusableCell(withIdentifier: "ThirdCell", for: indexPath) as? ThirdCell)!
            return cell
        }

    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {

        let tableHeight = tableView.frame.height
        // tableView.rowHeight = UITableViewAuto

        if indexPath.section == 0 {
            return tableHeight/2
        }else if indexPath.section == 1 {
            self.tableView.rowHeight = UITableView.automaticDimension
            return self.tableView.rowHeight
        }else {
            return tableHeight/3
        }
    }

}

