//
//  CategoryDetailViewController.swift
//  BottomSheet
//
//  Created by Hyeji on 2021/07/30.
//

import UIKit

class CategoryDetailViewController: UIViewController {

    @IBOutlet weak var tvCategoryDetail: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        tvCategoryDetail.dataSource = self
        tvCategoryDetail.delegate = self
        self.tvCategoryDetail.separatorStyle = .none
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
        cell.lblCategoryDetail.text = "\(indexPath.row)번째 데이터입니다"
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }

}
 
extension CategoryDetailViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
}
