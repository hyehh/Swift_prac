//
//  ViewController.swift
//  StoryBoardCodeSnapKit
//
//  Created by HYEJI on 2021/11/29.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    var redView = UIView()
    var orangeView = UIView()
    var yellowView = UIView()
    var greenView = UIView()
    var blueView = UIView()
    var indigoView = UIView()
    var purpleView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.addSubview(redView)
        view.addSubview(orangeView)
        view.addSubview(yellowView)
        view.addSubview(greenView)
        view.addSubview(blueView)
        view.addSubview(indigoView)
        view.addSubview(purpleView)
        
        redView.translatesAutoresizingMaskIntoConstraints = false
        orangeView.translatesAutoresizingMaskIntoConstraints = false
        yellowView.translatesAutoresizingMaskIntoConstraints = false
        greenView.translatesAutoresizingMaskIntoConstraints = false
        blueView.translatesAutoresizingMaskIntoConstraints = false
        indigoView.translatesAutoresizingMaskIntoConstraints = false
        purpleView.translatesAutoresizingMaskIntoConstraints = false

        redView.backgroundColor = .red
        orangeView.backgroundColor = .orange
        yellowView.backgroundColor = .yellow
        greenView.backgroundColor = .green
        blueView.backgroundColor = .blue
        indigoView.backgroundColor = .systemIndigo
        purpleView.backgroundColor = .purple
        
        
        redView.snp.makeConstraints { make in
//            make.top.equalTo(50)
            make.top.equalTo(view.snp.top).offset(50)
            make.size.width.height.equalTo(100)
            make.left.equalTo(view.snp.left)
        }
        
        orangeView.snp.makeConstraints { make in
            make.top.equalTo(redView.snp.bottom)
            make.size.width.height.equalTo(100)
            make.left.equalTo(redView.snp.left)
        }
        
        yellowView.snp.makeConstraints { make in
            make.top.equalTo(orangeView.snp.bottom)
            make.size.width.height.equalTo(100)
            make.left.equalTo(orangeView.snp.left)
        }
        
        greenView.snp.makeConstraints { make in
            make.top.equalTo(yellowView.snp.top)
            make.size.width.height.equalTo(100)
            make.left.equalTo(yellowView.snp.right)
        }
        
        blueView.snp.makeConstraints { make in
            make.top.equalTo(greenView.snp.top)
            make.size.width.height.equalTo(100)
            make.left.equalTo(greenView.snp.right)
        }
        
        indigoView.snp.makeConstraints { make in
            make.top.equalTo(blueView.snp.top)
            make.size.width.height.equalTo(100)
            make.left.equalTo(blueView.snp.right)
        }
        
        purpleView.snp.makeConstraints { make in
            make.center.equalTo(view.snp.center).offset(50)
            make.size.width.height.equalTo(100)
        }
    }
    
    


}

