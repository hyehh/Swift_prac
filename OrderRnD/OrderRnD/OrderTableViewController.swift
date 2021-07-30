//
//  OrderTableViewController.swift
//  OrderRnD
//
//  Created by Hyeji on 2021/07/29.
//

import UIKit

class OrderTableViewController: UITableViewController {

    @IBOutlet var tvList: UITableView!
    
    var list = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
//        navigationController?.navigationBar.prefersLargeTitles = true
//
//        navigationItem.largeTitleDisplayMode = .never

        tvList.rowHeight = 90
    }

    // MARK: - Table view data source

//    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//        if(section == 0) {
//
//            let view = UIView() // The width will be the same as the cell, and the height should be set in tableView:heightForRowAtIndexPath:
//            let label = UILabel()
//            let button   = UIButton(type: UIButton.ButtonType.system)
//
//            label.text="My Details"
//            //button.setTitle("Test Title", forState: .Normal)
//            // button.addTarget(self, action: Selector("visibleRow:"), forControlEvents:.TouchUpInside)
//
//            view.addSubview(label)
//            view.addSubview(button)
//
//            label.translatesAutoresizingMaskIntoConstraints = false
//            button.translatesAutoresizingMaskIntoConstraints = false
//
//            let views = ["label": label, "button": button, "view": view]
//
//            let horizontallayoutContraints = NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[label]-60-[button]-10-|", options: .alignAllCenterY, metrics: nil, views: views)
//            view.addConstraints(horizontallayoutContraints)
//
//            let verticalLayoutContraint = NSLayoutConstraint(item: label, attribute: .centerY, relatedBy: .equal, toItem: view, attribute: .centerY, multiplier: 1, constant: 0)
//            view.addConstraint(verticalLayoutContraint)
//
//            return view
//        }
//
//        return nil
//    }
    
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return list.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell2 = tableView.dequeueReusableCell(withIdentifier: "orderCategoryCell", for: indexPath) as! OrderCategoryTableViewCell

        // Configure the cell...
        cell2.imgView?.image = UIImage(named: "review.jpg")
        cell2.lblText.text = list[indexPath.row]

        return cell2
        
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
