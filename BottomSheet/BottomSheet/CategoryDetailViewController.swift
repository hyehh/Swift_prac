//
//  CategoryDetailViewController.swift
//  BottomSheet
//
//  Created by Hyeji on 2021/07/30.
//

import UIKit

class CategoryDetailViewController: UIViewController {

    @IBOutlet weak var tvCategoryDetail: UITableView!
    
    var dataItem: NSArray = NSArray()
    
    var indexPath = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tvCategoryDetail.dataSource = self
        tvCategoryDetail.delegate = self
        self.tvCategoryDetail.separatorStyle = .none
        self.navigationItem.title = categoryList[indexPath]
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let categoryDetailModel = CategoryDetailModel()
        categoryDetailModel.delegate = self
        categoryDetailModel.downloadItems()
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

extension CategoryDetailViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "categoryDetailCell") as! CategoryDetailTableViewCell
        let item: DrinkModel = dataItem[indexPath.row] as! DrinkModel
        
        // cell.ivCategoryDetail.image = UIImage(named: "")
        cell.lblCategoryDetailName.text = "\(item.name!)"
        cell.lblCategoryDetailPrice.text = "\(item.price!)"
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataItem.count
    }

}
 
extension CategoryDetailViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
}

extension CategoryDetailViewController: CategoryDetailModelProtocol {
    func itemDownloaded(items: NSArray) {
        dataItem = items
        self.tvCategoryDetail.reloadData()
    }
}
