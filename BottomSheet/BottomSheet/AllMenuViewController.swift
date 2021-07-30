//
//  AllMenuViewController.swift
//  BottomSheet
//
//  Created by Hyeji on 2021/07/30.
//

import UIKit

class AllMenuViewController: UIViewController {

    var categoryList = [("NEW", "NEW"), ("추천", "Recommend"), ("콜드 브루", "Cold Brew"), ("에스프레소", "Espresso"), ("프라푸치노", "Frappuccino"), ("블렌디드", "Blended"), ("피지오", "Starbucks Fizzio"), ("티바나", "Teavana"), ("브루드 커피", "Brewed Coffee"), ("기타", "Others"), ("병음료", "RTD")]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

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

extension AllMenuViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "allMenuCell") as! AllMenuTableViewCell
        cell.ivAllMenu.image = UIImage(named: "lamp_red.png")
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categoryList.count
    }

}
 
extension AllMenuViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
}
