//
//  AllMenuViewController.swift
//  BottomSheet
//
//  Created by Hyeji on 2021/07/30.
//

import UIKit

var categoryList = ["NEW", "추천", "콜드 브루", "에스프레소", "프라푸치노", "블렌디드", "피지오", "티바나", "브루드 커피", "기타"]
var categoryImageList = [UIImage?]()

class AllMenuViewController: UIViewController {

    
    @IBOutlet weak var tvAllMenu: UITableView!
    @IBOutlet weak var lblStore: UILabel!
        
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tvAllMenu.dataSource = self
        tvAllMenu.delegate = self
        self.tvAllMenu.separatorStyle = .none
        
        serverImageDownloaded()
        navigationController?.navigationBar.barTintColor = .white
        self.navigationController?.navigationBar.shadowImage = UIImage()
    }
    
    func serverImageDownloaded() {
        for i in 0..<categoryList.count {
            let url = URL(string: "http://\(macIp):8080/starbucks/image/category\(i).jpg")
            let data = try? Data(contentsOf: url!)
            categoryImageList.append(UIImage(data: data!))
        }
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
            category = "\(indexPath!.row)"
        }
    }
    

}

extension AllMenuViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "allMenuCell") as! AllMenuTableViewCell
        cell.ivAllMenu.image = categoryImageList[indexPath.row]
        cell.ivAllMenu.layer.cornerRadius = cell.ivAllMenu.frame.height / 2
        cell.ivAllMenu.clipsToBounds = true
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
