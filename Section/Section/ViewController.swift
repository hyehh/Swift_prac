//
//  ViewController.swift
//  Section
//
//  Created by HYEJI on 2021/10/01.
//

// 2021.10.01 Section 분리하기
import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    let ID_DATE_CELL = "DatePickerCell"
    let ID_HOUR_CELL = "HourPickerCell"
    let ID_MIN_CELL = "MinutePickerCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        collectionView.backgroundColor = .systemRed
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        self.collectionView.register(DatePickerCell.self, forCellWithReuseIdentifier: ID_DATE_CELL)
        self.collectionView.register(HourPickerCell.self, forCellWithReuseIdentifier: ID_HOUR_CELL)
        self.collectionView.register(MinutePickerCell.self, forCellWithReuseIdentifier: ID_MIN_CELL)
    }
    
    // 몇 개의 섹션을 사용할 것인지
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        3
    }

    // 각 섹션에 몇 개의 셀이 들어가는지 리턴
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        2
    }
    
    // 셀 지정
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        var cell = UICollectionViewCell()
        
        if indexPath.section == 0 {
            cell = collectionView.dequeueReusableCell(withReuseIdentifier: ID_DATE_CELL, for: indexPath) as! DatePickerCell
        }else if indexPath.section == 1 {
            cell = collectionView.dequeueReusableCell(withReuseIdentifier: ID_HOUR_CELL, for: indexPath) as! HourPickerCell
        }else {
            cell = collectionView.dequeueReusableCell(withReuseIdentifier: ID_MIN_CELL, for: indexPath) as! MinutePickerCell
        }
        
        cell.layer.borderWidth = 1
        cell.layer.borderColor = CGColor(red: 102/255, green: 102/225, blue: 102/225, alpha: 1)
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height/3)
    }
    
}

