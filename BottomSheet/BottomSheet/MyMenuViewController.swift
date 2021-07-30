//
//  MyMenuViewController.swift
//  BottomSheet
//
//  Created by Hyeji on 2021/07/30.
//

import UIKit
var list = ["1", "2", "3", "4", "1", "1", "1", "1", "1", "1", "1", "1", "1"]


class MyMenuViewController: UIViewController {

    @IBOutlet weak var myMenuTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

        myMenuTableView.dataSource = self
        myMenuTableView.delegate = self
        
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

extension MyMenuViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myMenuCell") as! MyMenuTableViewCell
        cell.lblText.text = "\(indexPath.row)번째 데이터입니다"
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }

}
 
extension MyMenuViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
}
