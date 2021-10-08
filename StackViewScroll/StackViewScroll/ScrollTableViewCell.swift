//
//  ScrollTableViewCell.swift
//  StackViewScroll
//
//  Created by HYEJI on 2021/10/07.
//

import UIKit

class ScrollTableViewCell: UITableViewCell, UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    // @IBOutlet weak var view: UIView!
    @IBOutlet weak var btnLast: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        addContentScrollView()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    // imageView 추가
    func addContentScrollView() {
        
         // scrollView.addSubview(view)
        scrollView.addSubview(btnLast)
        // min - l max - t
        scrollView.contentSize.width = btnLast.frame.maxX

        print(btnLast.frame.maxX + CGFloat(100), "ddd")

//        for i in 0..<4 {
//            scrollView.contentSize.width = btnLast.frame.width * CGFloat(1+i)
////            scrollView.contentSize.width = CGSize(width: 1000, height: 200)
//            // scrollView.addSubview(view)
//            // self.scrollView.contentSize = CGSize(width: self.btnLast.frame.width*CGFloat(1+i), height: self.btnLast.frame.height)
//        }
        
        
        
        
//        for i in 0..<5 {
//            let button = UIButton()
//            let xPos = self.contentView.frame.width * CGFloat(i)
//            button.frame = CGRect(x: xPos, y: 0, width: scrollView.bounds.width/10, height: scrollView.bounds.height/10)
//            button.setTitle("All", for: .normal)
//            button.layer.backgroundColor = CGColor(red: 103/225, green: 103/225, blue: 103/225, alpha: 1)
//            scrollView.addSubview(button)
//            scrollView.contentSize.width = button.frame.width * CGFloat(i + 1)
//        }
        
    }
    
    // user가 컨텐트를 스크롤하면 실행되는 메소드
    // scrollView Delegate
    func scrollViewDidScroll(_ scrollView: UIScrollView) {

        
    }
    
}
