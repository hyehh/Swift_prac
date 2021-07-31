//
//  AllMenuViewController.swift
//  BottomSheet
//
//  Created by Hyeji on 2021/07/30.
//

import UIKit

var categoryList = ["NEW", "추천", "콜드 브루", "에스프레소", "프라푸치노", "블렌디드", "피지오", "티바나", "브루드 커피", "기타", "병음료"]

class AllMenuViewController: UIViewController {

    
    @IBOutlet weak var tvAllMenu: UITableView!
    @IBOutlet weak var lblStore: UILabel!
        
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tvAllMenu.dataSource = self
        tvAllMenu.delegate = self
        self.tvAllMenu.separatorStyle = .none
        
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "sgCategoryDetail" {
            let cell = sender as! AllMenuTableViewCell
            let indexPath = self.tvAllMenu.indexPath(for: cell)
            let categoryDetailViewController = segue.destination as! CategoryDetailViewController
            categoryDetailViewController.indexPath = indexPath!.row
        }
    }
    

}

extension AllMenuViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "allMenuCell") as! AllMenuTableViewCell
        cell.ivAllMenu.image = UIImage(named: "lamp_red.png")
        cell.lblAllMenu.text = categoryList[indexPath.row]
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categoryList.count
    }

}
 
extension AllMenuViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
}
