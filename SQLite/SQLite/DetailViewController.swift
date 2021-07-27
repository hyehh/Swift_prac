//
//  DetailViewController.swift
//  SQLite
//
//  Created by Hyeji on 2021/07/27.
//

import UIKit
import SQLite3

class DetailViewController: UIViewController {

    @IBOutlet weak var tfId: UITextField!
    @IBOutlet weak var tfName: UITextField!
    @IBOutlet weak var tfDept: UITextField!
    @IBOutlet weak var tfPhone: UITextField!
    
    var db: OpaquePointer?
    var list = [Students]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tfId.text = String(list[0].id)
        tfName.text = list[0].name
        tfDept.text = list[0].dept
        tfPhone.text = list[0].phone
        
        tfId.isEnabled = false
        
        // sqlite 연결 잘되어있는지 확인
        let fileURL = try! FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false).appendingPathComponent("StudentsData.sqlite")
        
        if sqlite3_open(fileURL.path, &db) != SQLITE_OK {
            // 열 수 없는 문제가 있다면
            print("Error opening database")
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func receivedData(_ receivedList: Students) {
        list = [receivedList]
    }
    
    @IBAction func btnEdit(_ sender: UIButton) {
        var stmt: OpaquePointer?
        let SQLITE_TRANSIENT = unsafeBitCast(-1, to: sqlite3_destructor_type.self)
        let queryString = "UPDATE students SET sname = ?, sdept = ?, sphone = ? WHERE sid = \(list[0].id)"

        let name = tfName.text?.trimmingCharacters(in: .whitespacesAndNewlines)
        let dept = tfDept.text?.trimmingCharacters(in: .whitespacesAndNewlines)
        let phone = tfPhone.text?.trimmingCharacters(in: .whitespacesAndNewlines)
        
        if sqlite3_prepare(db, queryString, -1, &stmt, nil) != SQLITE_OK {
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("error preparing update: \(errmsg)")
            return
        }
        
        if sqlite3_bind_text(stmt, 1, name, -1, SQLITE_TRANSIENT) != SQLITE_OK {
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("error binding name: \(errmsg)")
            return
        }
        
        if sqlite3_bind_text(stmt, 2, dept, -1, SQLITE_TRANSIENT) != SQLITE_OK {
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("error binding dept: \(errmsg)")
            return
        }
        
        if sqlite3_bind_text(stmt, 3, phone, -1, SQLITE_TRANSIENT) != SQLITE_OK {
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("error binding phone: \(errmsg)")
            return
        }
        
        if sqlite3_step(stmt) != SQLITE_DONE {
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("failure updating student: \(errmsg)")
            return
        }
        
        let resultAlert = UIAlertController(title: "결과", message: "수정되었습니다!", preferredStyle: .alert)
        let resultAction = UIAlertAction(title: "OK", style: .default, handler: {ACTION in
            self.navigationController?.popViewController(animated: true)
        })
        resultAlert.addAction(resultAction)
        present(resultAlert, animated: true, completion: nil)
    }
    
    @IBAction func btnDelete(_ sender: UIButton) {
        var stmt: OpaquePointer?
        let queryString = "DELETE FROM students WHERE sid = \(list[0].id)"
        
        if sqlite3_prepare(db, queryString, -1, &stmt, nil) != SQLITE_OK {
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("error preparing delete: \(errmsg)")
            return
        }
        
        if sqlite3_step(stmt) != SQLITE_DONE {
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("failure deleting student: \(errmsg)")
            return
        }
        
        let resultAlert = UIAlertController(title: "결과", message: "삭제되었습니다!", preferredStyle: .alert)
        let resultAction = UIAlertAction(title: "OK", style: .default, handler: {ACTION in
            self.navigationController?.popViewController(animated: true)
        })
        resultAlert.addAction(resultAction)
        present(resultAlert, animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
