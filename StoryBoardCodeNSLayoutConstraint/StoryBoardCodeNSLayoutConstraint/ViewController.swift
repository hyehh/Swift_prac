//
//  ViewController.swift
//  StoryBoardCodeNSLayoutConstraint
//
//  Created by HYEJI on 2021/11/29.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        setSlider()
    }
    
    func setSlider() {
        let testSlider = UISlider()
        testSlider.translatesAutoresizingMaskIntoConstraints = false
        testSlider.maximumValue = 10
        testSlider.minimumValue = 0
        testSlider.value = 5
        
        view.addSubview(testSlider)
        
        let safeArea = view.safeAreaLayoutGuide
        
        // item : 이 제약을 사용할 주체
        // attribute : item의 속성 중 어디를 기준으로 할 것인지
        // relatedBy : 같다 / 보다 크다 / 보다 작다
        // toItem : 어디 기준으로 제약 걸 것인지
        // attribut : toItem의 속성 중 어디를 기준으로 할 것인지
        // multiplier : 기본 1로 사용
        // constant : 얼마나 떨어질 것인지
        let leading = NSLayoutConstraint(item: testSlider, attribute: .leading, relatedBy: .equal, toItem: safeArea, attribute: .leading, multiplier: 1, constant: 50)
        let trailing = NSLayoutConstraint(item: testSlider, attribute: .trailing, relatedBy: .equal, toItem: safeArea, attribute: .trailing, multiplier: 1, constant: -50)
        let top = NSLayoutConstraint(item: testSlider, attribute: .top, relatedBy: .equal, toItem: safeArea, attribute: .top, multiplier: 1, constant: 100)
        
        NSLayoutConstraint.activate([leading, trailing, top])
    }


}

