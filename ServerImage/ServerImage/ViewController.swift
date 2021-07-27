//
//  ViewController.swift
//  ServerImage
//
//  Created by Hyeji on 2021/07/28.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnImage1(_ sender: UIButton) {
        let url = URL(string: "http://192.168.0.5:8080/ios/flower_01.png")!
        let defaultSession = Foundation.URLSession(configuration: URLSessionConfiguration.default)
        let task = defaultSession.dataTask(with: url){(data, response, error) in
            if error != nil {
                print("Failed to download data")
            }else {
                print("Data is downloaded")
                DispatchQueue.main.async {
                    self.imgView.image = UIImage(data: data!)
                    if let image = UIImage(data: data!) {
                        if let data = image.pngData() {
                            let filename = self.goDocumentDirectory().appendingPathComponent("copy.png")
                            try? data.write(to: filename)
                        }
                    }
                }
            }
        }
        task.resume()
    }
    
    func goDocumentDirectory() -> URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0]
    }
    
    @IBAction func btnImage2(_ sender: UIButton) {
        let url = URL(string: "http://192.168.0.5:8080/ios/flower_02.png")
        let data = try? Data(contentsOf: url!)
        imgView.image = UIImage(data: data!)
    }
}

