//
//  ViewController.swift
//  StackViewScroll
//
//  Created by HYEJI on 2021/10/07.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        
        // 닙파일 가져오기
        let ScrollTableViewNib = UINib(nibName: String(describing: ScrollTableViewCell.self), bundle: nil)
        
        // 가져온 닙파일로 테이블뷰에 셀로 등록
        self.tableView.register(ScrollTableViewNib, forCellReuseIdentifier: "ScrollTableViewCell")
        
    }

    // tableView Cell 할당
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print("여기??")
        let cell = (tableView.dequeueReusableCell(withIdentifier: "ScrollTableViewCell", for: indexPath) as? ScrollTableViewCell)!
        
        return cell
    }

    
    // 섹션 개수
    func numberOfSections(in tableView: UITableView) -> Int {
        print("여기??")
        return 1
    }

    // 섹션 당 들어갈 셀의 개수
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    // 섹션 당 셀의 크기
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let tableHeight = tableView.frame.height
        return tableHeight/10
    }

}

