//
//  CategoryDetailViewController.swift
//  Select
//
//  Created by Hyeji on 2021/08/01.
//

import UIKit

var categoryList = ["NEW", "추천", "콜드 브루", "에스프레소", "프라푸치노", "블렌디드", "피지오", "티바나", "브루드 커피", "기타", "병음료"]

class CategoryDetailViewController: UIViewController {


    
    @IBOutlet weak var tvCetagoryDetail: UITableView!
    
    var dataItem: NSArray = NSArray()
    
    override func viewDidLoad() {
        
        
        super.viewDidLoad()

        let categoryDetailModel = CategoryDetailModel()
        categoryDetailModel.delegate = self
        categoryDetailModel.downloadItems()
        
        // Do any additional setup after loading the view.
        tvCetagoryDetail.dataSource = self
        self.tvCetagoryDetail.delegate = self
        
        //self.tvCategoryDetail.separatorStyle = .none
        self.navigationItem.title = categoryList[0]
    }
    

    
    
    override func viewWillAppear(_ animated: Bool) {

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

extension CategoryDetailViewController: CategoryDetailModelProtocol {
    func itemDownloaded(items: NSArray) {
        dataItem = items
        self.tvCetagoryDetail.reloadData()
    }
}


extension CategoryDetailViewController: UITableViewDataSource {

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(dataItem.count)
        return dataItem.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "categoryDetailCell") as! CategoryDetailTableViewCell
        let item: DrinkModel = dataItem[indexPath.row] as! DrinkModel
        
        // cell.ivCategoryDetail.image = UIImage(named: "")
        cell.lblcategoryDetailName.text = "\(item.name!)"
        cell.lblCategoryDetailPrice.text = "\(item.price!)"
        
        return cell
    }
    
    
}
 
extension CategoryDetailViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
}


