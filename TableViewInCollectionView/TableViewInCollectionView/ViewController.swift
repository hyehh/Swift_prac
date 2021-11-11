//
//  ViewController.swift
//  TableViewInCollectionView
//
//  Created by HYEJI on 2021/11/10.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var tableList = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u"]
    var numberList = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        
        registerXib()
    }
    
    func registerXib() {
        let tableViewCellNib = UINib(nibName: String(describing: TableViewCell.self), bundle: nil)
        let topTableViewCellNib = UINib(nibName: String(describing: TopTableViewCell.self), bundle: nil)
        
        self.tableView.register(tableViewCellNib, forCellReuseIdentifier: "TableViewCell")
        self.tableView.register(topTableViewCellNib, forCellReuseIdentifier: "TopTableViewCell")
    }
    
    override func viewWillAppear(_ animated: Bool) {
//        let flowLayout = UICollectionViewFlowLayout()
//        flowLayout.sectionInset = .zero
//        flowLayout.minimumInteritemSpacing = 5
//        flowLayout.minimumLineSpacing = 10
//        let halfWidth = collectionView.bounds.size.width / 3
//        if self.view.bounds.size.width <= 375 {
//            flowLayout.itemSize = CGSize(width: halfWidth * 0.8 , height: 80)
//        } else {
//            flowLayout.itemSize = CGSize(width: halfWidth * 0.9 , height: 80)
//        }
//        collectionView.collectionViewLayout = flowLayout
//        print(collectionView.bounds.size.width)
//        print(collectionView.bounds.width)
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        } else {
            return tableList.count
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 70
        } else {
            return UITableView.automaticDimension
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "TopTableViewCell", for: indexPath) as? TopTableViewCell
            return cell!
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as? TableViewCell
            cell?.firstLabel.text = tableList[indexPath.row] + "알파벳 입니다."
            cell?.secondLabel.text = numberList[indexPath.row]
            return cell!
        }
    }

}

