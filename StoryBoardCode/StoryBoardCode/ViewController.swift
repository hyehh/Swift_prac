//
//  ViewController.swift
//  StoryBoardCode
//
//  Created by HYEJI on 2021/11/29.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setLabel()
        setButton()
    }
    
    func setLabel() {
        let testLabel = UILabel()
        testLabel.text = "UILabel Test 중"
        // AutoLayout 잡아주기 전에 반드시 view에 라벨이 올라가 있어야 제약 줄 수 있음!
        view.addSubview(testLabel)
        let safeArea = view.safeAreaLayoutGuide
        let leadingConstraint = testLabel.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 50)
        let trailingConstraint = testLabel.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor, constant: -50)
        let topConstraint = testLabel.topAnchor.constraint(equalTo: safeArea.topAnchor, constant: 50)
        leadingConstraint.isActive = true
        trailingConstraint.isActive = true
        topConstraint.isActive = true
        // 이거 꼭 false 로 설정해야 내가 설정한 제약 적용 가능
        testLabel.translatesAutoresizingMaskIntoConstraints = false
        // width에 맞게 글씨 크기 줄어들게 만드는 것
        testLabel.adjustsFontSizeToFitWidth = true
        testLabel.textAlignment = .center
    }

    func setButton() {
        let testButton = UIButton()
        testButton.setTitle("Click Here!!", for: .normal)
        testButton.backgroundColor = .purple
        testButton.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(testButton)
        
        let safeArea = view.safeAreaLayoutGuide
        testButton.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: 20).isActive = true
        // trailing 과 bottom 의 경우 마이너스 값을 주어야 화면에 보일 수 있음!
        testButton.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor, constant: -20).isActive = true
        testButton.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor, constant: -20).isActive = true
        
    }
    
    

}

