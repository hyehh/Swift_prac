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
        self.tvCategoryDetail.dataSource = self
        self.tvCategoryDetail.delegate = self
        self.tvCategoryDetail.separatorStyle = .none
        self.navigationItem.title = categoryList[indexPath]
        self.navigationController?.navigationBar.tintColor = UIColor(displayP3Red: 0/255, green: 112/225, blue: 74/255, alpha: 1)
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let categoryDetailModel = CategoryDetailModel()
        categoryDetailModel.delegate = self
        categoryDetailModel.downloadItems()
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "sgDrinkDetail" {
            let cell = sender as! CategoryDetailTableViewCell
            let indexPath = self.tvCategoryDetail.indexPath(for: cell)
            
            let item: DrinkModel = dataItem[indexPath!.row] as! DrinkModel
            
            let drinkDetailViewController = segue.destination as! DrinkDetailViewController
            drinkDetailViewController.receivedCd = item.cd!
        }
    }
    

}

extension CategoryDetailViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "categoryDetailCell") as! CategoryDetailTableViewCell
        let item: DrinkModel = dataItem[indexPath.row] as! DrinkModel
        
        cell.lblCategoryDetailName.text = item.name!
        cell.lblCategoryDetailPrice.text = DecimalWon(value: item.price!)
        
        let url = URL(string: "\(item.img!)")
        let data = try? Data(contentsOf: url!)
        cell.ivCategoryDetail.layer.cornerRadius = cell.ivCategoryDetail.frame.height / 2
        cell.ivCategoryDetail.clipsToBounds = true
        cell.ivCategoryDetail.image = UIImage(data: data!)
        
        return cell
    }
    
    func DecimalWon(value: Int) -> String{
            let numberFormatter = NumberFormatter()
            numberFormatter.numberStyle = .decimal
            let result = numberFormatter.string(from: NSNumber(value: value))! + " ???"
            
            return result
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

extension CategoryDetailViewController : CategoryDetailModelProtocol {
    func itemDownloaded(items: NSArray) {
        dataItem = items
        self.tvCategoryDetail.reloadData()
    }
}
