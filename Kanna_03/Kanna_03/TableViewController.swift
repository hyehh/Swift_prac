//
//  TableViewController.swift
//  Kanna_03
//
//  Created by Hyeji on 2021/07/27.
//

import UIKit
import Kanna

class TableViewController: UITableViewController {

    @IBOutlet var tvListView: UITableView!
    
    var rtList = [String]()
    var hpList = [String]()
    var listCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        dataCrawling()
        listCount = rtList.count
    }
    
    func dataCrawling() {
        let mainUrl = "https://www.rottentomatoes.com/top/bestofrt/?year=2019"
        guard let main = URL(string: mainUrl) else {
            print("Error : \(mainUrl) doesn't seem to be a valid URL")
            return }
        
        do {
            let htmlData = try String(contentsOf: main, encoding: .utf8)
            let doc = try HTML(html: htmlData, encoding: .utf8)
            
            // //*[@id="top_movies_main"]/div/table/tr/td/a
            for title in doc.xpath("//*[@id='top_movies_main']/div/table/tr/td/a"){
                rtList.append(title.text!.trimmingCharacters(in: .whitespacesAndNewlines))
                hpList.append(title["href"]!)
            }
        } catch let error {
            print("Error : \(error)")
        }
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return listCount
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)

        // Configure the cell...
        cell.textLabel?.text = "\(indexPath.row+1) : \(rtList[indexPath.row])"

        return cell
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

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "sgDetail" {
            let cell = sender as! UITableViewCell
            let indexPath = self.tvListView.indexPath(for: cell)
            let homePageViewController = segue.destination as! HomePageViewController
            homePageViewController.receivedData("https://www.rottentomatoes.com/\(hpList[indexPath!.row])")
        }

    }
    

}
