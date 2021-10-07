//
//  ViewController.swift
//  TableViewBtnDataChange
//
//  Created by HYEJI on 2021/10/07.
//

import UIKit

var data: [String] = []
let dataA = ["a", "b"]
let dataB = ["d", "e", "f"]

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.delegate = self
        tableView.dataSource = self
        data = []
        data += dataA
        data += dataB
        
        // 닙파일 가져오기
        let BtnTableViewNib = UINib(nibName: String(describing: BtnTableViewCell.self), bundle: nil)
        let ContentTableViewNib = UINib(nibName: String(describing: ContentTableViewCell.self), bundle: nil)
        
        // 가져온 닙파일로 테이블뷰에 셀로 등록
        self.tableView.register(BtnTableViewNib, forCellReuseIdentifier: "BtnTableViewCell")
        self.tableView.register(ContentTableViewNib, forCellReuseIdentifier: "ContentTableViewCell")
        
        tableView.reloadData()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tableView.delegate = self
        tableView.dataSource = self
        data = []
        data += dataA
        data += dataB
        
        // 닙파일 가져오기
        let BtnTableViewNib = UINib(nibName: String(describing: BtnTableViewCell.self), bundle: nil)
        let ContentTableViewNib = UINib(nibName: String(describing: ContentTableViewCell.self), bundle: nil)
        
        // 가져온 닙파일로 테이블뷰에 셀로 등록
        self.tableView.register(BtnTableViewNib, forCellReuseIdentifier: "BtnTableViewCell")
        self.tableView.register(ContentTableViewNib, forCellReuseIdentifier: "ContentTableViewCell")
        
        print("여기??")
        tableView.beginUpdates()
        tableView.endUpdates()
        tableView.reloadData()
        
    }
    
    // tableView Cell 할당
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print("여기??")
        if indexPath.section == 0 {
            let cell = (tableView.dequeueReusableCell(withIdentifier: "BtnTableViewCell", for: indexPath) as? BtnTableViewCell)!
            cell.btnA.addTarget(self, action: #selector(btnConfirmPressed(_:)), for: .touchUpInside)
            cell.btnB.addTarget(self, action: #selector(btnConfirmPressed(_:)), for: .touchUpInside)
            cell.btnC.addTarget(self, action: #selector(btnConfirmPressed(_:)), for: .touchUpInside)
            return cell
        }else {
            let cell = (tableView.dequeueReusableCell(withIdentifier: "ContentTableViewCell", for: indexPath) as? ContentTableViewCell)!
            print(data, "VCVC")
            cell.lblText.text = data[indexPath.row]
            return cell
        }
    }
                 
    // 버튼을 눌렀을 때 처리
    @objc func btnConfirmPressed(_ button: UIButton) {
        data = dataA
        tableView.reloadData()
    }
    
    // 섹션 개수
    func numberOfSections(in tableView: UITableView) -> Int {
        print("여기??")
        return 2
    }

    // 섹션 당 들어갈 셀의 개수
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("여기??")
        switch section {
        case 0:
            return 1
        default:
            return data.count
        }
    }
    
    // 섹션 당 셀의 크기
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        print("여기??")
        let tableHeight = tableView.frame.height

        if indexPath.section == 0 {
            return tableHeight/10
        }else {
            self.tableView.rowHeight = UITableView.automaticDimension
            return self.tableView.rowHeight
        }
    }

}

