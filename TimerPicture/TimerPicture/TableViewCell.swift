//
//  TableViewCell.swift
//  TimerPicture
//
//  Created by HYEJI on 2021/10/12.
//

import UIKit
import SDWebImage

class TableViewCell: UITableViewCell, UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var pageControl: UIPageControl!
    
    var currentTime: String = ""
    var i=Int()


    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Initialization code
        initPageControlSetting()
        addContentScrollView()
        scrollView.delegate = self
        
        Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(imageChange), userInfo: nil, repeats: true)


    }
    
    
    
    // PageControl 세팅
    func initPageControlSetting() {
        pageControl.numberOfPages = pUrl.count
        pageControl.currentPage = 0
        pageControl.pageIndicatorTintColor = UIColor(red: 236/225, green: 236/225, blue: 236/225, alpha: 1)
        pageControl.currentPageIndicatorTintColor = UIColor(red: 9/225, green: 191/225, blue: 191/225, alpha: 1)
    }
    
    
    
    // imageView 추가
    func addContentScrollView() {

        for i in 0..<pUrl.count {
            let imageView = UIImageView()

            let xPos = self.contentView.frame.width * CGFloat(i)
            imageView.frame = CGRect(x: xPos, y: 0, width: scrollView.bounds.width, height: scrollView.bounds.height)
            imageView.sd_setImage(with: URL(string: pUrl[i].addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!))
            scrollView.addSubview(imageView)
            scrollView.contentSize.width = imageView.frame.width * CGFloat(i + 1)
            imageView.contentMode = .scaleToFill
            imageView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        }
        
        scrollView.showsHorizontalScrollIndicator = false
        pageControl.isEnabled = false
        
        
        
        
        
    }

    @objc func imageChange(){
        print("여기?")
        imageView!.sd_setImage(with: URL(string: pUrl[i].addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!))
        if i<pUrl.count-1{
            i+=1
            print("저기?")

        }
        else{
            i=0
            print("여ㅇ기?")

        }
    }
    
    // scrollView Delegate
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let value = scrollView.contentOffset.x/scrollView.frame.size.width
        setPageControlSelectedPage(currentPage: Int(round(value)))
        
    }
    
    func setPageControlSelectedPage(currentPage:Int) {
        pageControl.currentPage = currentPage

    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
        
    }
    
}
