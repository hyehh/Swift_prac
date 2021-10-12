//
//  ViewController.swift
//  TimerPicture
//
//  Created by HYEJI on 2021/10/12.
//

import UIKit

var pUrl = ["http://issue3.gmoneytrans.net//Product/1.PNG", "http://issue3.gmoneytrans.net//Product/AirPods Max.png", "http://issue3.gmoneytrans.net//Product/air.png", "http://issue3.gmoneytrans.net//Product/112.png", "http://issue3.gmoneytrans.net//Product/Apple Watch.png", "http://issue3.gmoneytrans.net//Product/1.PNG"]

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // tableView delegate
        tableView.delegate = self
        tableView.dataSource = self
        
        let TableViewNib = UINib(nibName: String(describing: TableViewCell.self), bundle: nil)
        self.tableView.register(TableViewNib, forCellReuseIdentifier: "TableViewCell")
        
        print("자 이제 시작이야")

    }


    // tableView Cell 할당
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = (tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as? TableViewCell)!
//        cell.pBrand.text = sortedArray[indexPath.row]["pBrand"]
//        cell.pName.text = sortedArray[indexPath.row]["pName"]
//        cell.pPrice.text = sortedArray[indexPath.row]["pPrice"]
//        cell.pImg.sd_setImage(with: URL(string: sortedArray[indexPath.row]["pUrl"]!.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!))
        return cell
    }
    
    // 섹션 개수
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    // 섹션 당 들어갈 셀의 개수
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    // 섹션 당 셀의 크기
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {

        let tableHeight = tableView.frame.height
        return tableHeight/2

    }
}

