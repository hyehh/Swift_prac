//
//  DetailViewController.swift
//  Table2
//
//  Created by Hyeji on 2021/07/23.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var lblContent: UILabel!
    
    var image = ""
    var content = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        imgView.image = UIImage(named: image)
        lblContent.text = content
    }
    
    func receivedData(_ receivedImage: String, _ receivedContent: String) {
        image = receivedImage
        content = receivedContent
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
