//
//  ViewController.swift
//  Sorted
//
//  Created by HYEJI on 2021/10/06.
//

import UIKit

var products = [["pName": "카페 아메리카노", "pPrice": "4000", "pBrand": "스타벅스", "pUrl": "http://", "pCoffee": "1"], ["pName": "에스프레소 콘 파나", "pPrice": "3500", "pBrand": "스타벅스", "pUrl": "http://", "pCoffee": "1"], ["pName": "카라멜 마키아또", "pPrice": "10000", "pBrand": "스타벅스", "pUrl": "http://", "pCoffee": "1"], ["pName": "수박 스무디", "pPrice": "4000", "pBrand": "스무디킹", "pUrl": "http://", "pCoffee": "0"], ["pName": "애플 키위 케일", "pPrice": "3500", "pBrand": "스무디킹", "pUrl": "http://", "pCoffee": "0"], ["pName": "식후땡 망고", "pPrice": "1500", "pBrand": "고망고", "pUrl": "http://", "pCoffee": "0"], ["pName": "디카페인 콜드브루", "pPrice": "5500", "pBrand": "메가커피", "pUrl": "http://", "pCoffee": "1"], ["pName": "초당 옥수수 스무디", "pPrice": "5000", "pBrand": "맘모스 커피", "pUrl": "http://", "pCoffee": "0"], ["pName": "민트 초코칩 할리치노", "pPrice": "5900", "pBrand": "할리스", "pUrl": "http://", "pCoffee": "0"], ["pName": "자몽 허니 블랙티", "pPrice": "5300", "pBrand": "스타벅스", "pUrl": "http://", "pCoffee": "0"], ["pName": "원조커피", "pPrice": "3500", "pBrand": "빽다방", "pUrl": "http://", "pCoffee": "1"]]
var pName = [String]()
var pPrice = [String]()
var pUrl = [String]()
var pCoffee = [String]()

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        /*
         내가 하고 싶은 것
         - 나는 if문 돌려서 pCoffee 값이 0인 것만 새로 Dictionary 담고 싶어!
         - 아니면 제일 하고 싶은 건 if문 돌려서 pCoffee 값이 0인 것만 데이터를 쓰고 싶어 (새로 Dictionary 만들지 않고 말이야!)
         - 그리고 나는 전체 버튼을 클릭할 때 이름 순서나 가격 순서로 정렬을 해주고 싶어
         - 물론 다른 버튼을 클릭했을 때 아이템 보여지는 것들도 마찬가지야
         */
        filterList()
        print("나야 나")
    }

    func filterList() { // should probably be called sort and not filter
//        proudcts.sorted() { $0.fruitName > $1.fruitName } // sort the fruit by name
//        proudcts.reloadData(); // notify the table view the data has changed
        // products = products.sorted(by: {$0.age < $1.age})
        for i in 0..<products.count {
            for (key, value) in products[i] {
                if key == "pCoffee" {
                    if value == "0" {
                        print(products[i], "안녕")
                    }
                    
//                    let sortedOne = products.sorted { (first, second) -> Bool in
//                        return first.pName.value > second.pName.value
//                    }
//
//                    let sortedTwo = products.sorted {
//                        return $0.value > $1.value
//                    }
//
//
//                    let order = products.pName.sorted(by: <)
//
//                    print(order)
                }
            }
        }
    }

}

