//
//  ViewController.swift
//  ScrollView5
//
//  Created by HYEJI on 2021/10/06.
//

import UIKit

class ViewController: UIViewController {

    let scrollView : UIScrollView = {
            let scrollView = UIScrollView()
            scrollView.alwaysBounceVertical = true
            scrollView.translatesAutoresizingMaskIntoConstraints = false
            return scrollView
        }()
        
        let stackView : UIStackView = {
            let stackView = UIStackView()
            stackView.axis = .vertical
            stackView.distribution = .fill
            stackView.alignment = .fill
            stackView.translatesAutoresizingMaskIntoConstraints = false
            return stackView
        }()
        
        let textField : UITextView = {
           
            let textfield = UITextView()
            textfield.backgroundColor = .brown
            textfield.text = "Hello world"
            textfield.isScrollEnabled = false
            textfield.translatesAutoresizingMaskIntoConstraints = false
            return textfield
            
        }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
                configureScrollView()
                configureStackView()
                

                configureTextField()
         
                let kittenImageView1 = UIImageView(image: UIImage(named: "Icon"))
                kittenImageView1.translatesAutoresizingMaskIntoConstraints = false
        //        kittenImageView1.widthAnchor.constraint(equalTo: scrollView.widthAnchor).isActive = true
                kittenImageView1.heightAnchor.constraint(equalToConstant: 200).isActive = true
                self.stackView.addArrangedSubview(kittenImageView1)
                // Do any additional setup after loading the view.
    }

    private func configureScrollView(){
           view.addSubview(scrollView)
           
           
           NSLayoutConstraint.activate([
               scrollView.topAnchor.constraint(equalTo: view.topAnchor),
               scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
               scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
               scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
           ])
           
       }
       private func configureStackView(){
           scrollView.addSubview(stackView)
           
           NSLayoutConstraint.activate([
               stackView.topAnchor.constraint(equalTo: scrollView.topAnchor),
               stackView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
               stackView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
               stackView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
               stackView.widthAnchor.constraint(equalTo: scrollView.widthAnchor)
           ])
       }
       
       private func configureTextField(){
           stackView.addArrangedSubview(textField)
           
       }

}

//func addContentScrollView() {
//    
////        let imageNames = ["flower_01", "flower_02", "flower_03", "flower_04", "flower_05", "flower_06"]
////        let width = contentView.bounds.width
////        let height = contentView.bounds.height
////
////        scrollView.contentSize = CGSize(width: Int(width) * imageNames.count, height: Int(height))
////
////        var x: CGFloat = 0
////        for i in 0..<imageNames.count {
////            // let frame = CGRect(x: x, y: 0, width: width, height: height)
////            imgView.image = images[i]
////            scrollView.addSubview(imgView)
////            x += width
////        }
//    
////        for i in 0 ..< Int(imageList.count) {
////            DispatchQueue.main.async() { () -> Void in
////                let imageview = UIImageView(frame: CGRect(x: 0, y: 0, width: cell.pScrollView.bounds.width, height: cell.pScrollView.bounds.height))
////                if imageList[0] == "box_banner_03" { // placeholder 느낌 (이미지가 없는 경우)
////                    imageview.image = UIImage(named: imageList[0])
////                } else {
////                    imageview.sd_setImage(with: URL(string: imageList[i].addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!), completed: nil)
////                }
////
////                imageview.contentMode = .scaleToFill
////                imageview.autoresizingMask = [.flexibleWidth, .flexibleHeight]
////                let scrView : UIScrollView = UIScrollView(frame: CGRect(x: cell.pScrollView.bounds.width * CGFloat(i), y: 0, width: cell.pScrollView.bounds.width, height: cell.pScrollView.bounds.height))
////                scrView.isScrollEnabled = true
////                scrView.delegate = self
////                scrView.bounces = false
////                scrView.addSubview(imageview)
////
////                cell.pScrollView.addSubview(scrView)
////                scrView.contentSize = CGSize(width: cell.pScrollView.bounds.width, height: cell.pScrollView.bounds.height)
////            }
////        }
////        DispatchQueue.main.async() { () -> Void in
////            cell.pageControl.numberOfPages = Int(imageList.count)
////            if Int(imageList.count) == 1 {
////                cell.pageControl.isHidden = true
////            }
////            cell.pScrollView.contentSize = CGSize(width: cell.pScrollView.bounds.width * CGFloat(Int(imageList.count)), height: cell.pScrollView.bounds.height)
////        }
//    
//    for i in 0..<pUrl.count {
//        let imageView = UIImageView()
//        let xPos = self.contentView.frame.width * CGFloat(i)
//        imageView.frame = CGRect(x: xPos, y: 0, width: scrollView.bounds.width, height: scrollView.bounds.height)
//        imageView.sd_setImage(with: URL(string: pUrl[i].addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!))
//        scrollView.addSubview(imageView)
//        scrollView.contentSize.width = imageView.frame.width * CGFloat(i + 1)
//        // scrollView.contentSize.width = CGSize(width: contentView.frame.width * CGFloat(slides.count), height: contentView.frame.height)
//        imageView.contentMode = .scaleToFill
//        imageView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
//    }
//    
////        for (index, images) in images.enumerated() {
////            let image = UIImage(named: images)
////            let imageView = UIImageView(image: image)
////            imageView.frame = UIScreen.main.bounds
////            imageView.frame.origin.x = UIScreen.main.bounds.width * CGFloat(index)
////            scrollView.addSubview(imageView)
////        }
//    }
//
//func scrollViewDidScroll(_ scrollView: UIScrollView) {
//       let value = scrollView.contentOffset.x/scrollView.frame.size.width
//       setPageControlSelectedPage(currentPage: Int(round(value)))
//    
////        let width = contentView.bounds.width
////        let page = Int(scrollView.contentOffset.x / width)
////        pageControl.currentPage = page
//    
//   }
