//
//  main.swift
//  Sorted2
//
//  Created by HYEJI on 2021/10/06.
//

import Foundation

print("Hello, World!")

var products = [["pName": "카페 아메리카노", "pPrice": "4000", "pBrand": "스타벅스", "pUrl": "http://", "pCoffee": "1"], ["pName": "에스프레소 콘 파나", "pPrice": "3500", "pBrand": "스타벅스", "pUrl": "http://", "pCoffee": "1"], ["pName": "카라멜 마키아또", "pPrice": "10000", "pBrand": "스타벅스", "pUrl": "http://", "pCoffee": "1"], ["pName": "수박 스무디", "pPrice": "4000", "pBrand": "스무디킹", "pUrl": "http://", "pCoffee": "0"], ["pName": "애플 키위 케일", "pPrice": "3500", "pBrand": "스무디킹", "pUrl": "http://", "pCoffee": "0"], ["pName": "식후땡 망고", "pPrice": "1500", "pBrand": "고망고", "pUrl": "http://", "pCoffee": "0"], ["pName": "디카페인 콜드브루", "pPrice": "5500", "pBrand": "메가커피", "pUrl": "http://", "pCoffee": "1"], ["pName": "초당 옥수수 스무디", "pPrice": "5000", "pBrand": "맘모스 커피", "pUrl": "http://", "pCoffee": "0"], ["pName": "민트 초코칩 할리치노", "pPrice": "5900", "pBrand": "할리스", "pUrl": "http://", "pCoffee": "0"], ["pName": "자몽 허니 블랙티", "pPrice": "5300", "pBrand": "스타벅스", "pUrl": "http://", "pCoffee": "0"], ["pName": "원조커피", "pPrice": "3500", "pBrand": "빽다방", "pUrl": "http://", "pCoffee": "1"]]
var pName = [String]()
var pPrice = [String]()
var pUrl = [String]()
var pCoffee = [Int]()


for i in 0..<products.count {
    for (key, value) in products[i] {
        if key == "pCoffee" {
            if value == "0" {
                print(products[i], "안녕")
                // pCoffee += products.remove(at: i)
                pCoffee.append(i)
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

print(pCoffee)


// 그리고 이제 pCoffee 에는 내가 구해야 할 index 값이 들어있어!
// 나는 이제 pCoffee에 있는 index 값만 products 에서 추출할꺼야!

for i in 0..<products.count {
    if pCoffee.count != 0 {
        print(pCoffee, "시작")
        if i == pCoffee[0] {
            pCoffee.remove(at: 0)
        }else {
            pCoffee.remove(at: 0)
        }
        print(pCoffee, "끝")
    }
//    for (key, value) in products[i] {
//        if key == "pCoffee" {
//            if value == "0" {
//                print(products[i], "안녕")
//                // pCoffee += products.remove(at: i)
//                pCoffee.append(i)
//            }
//
//        }
//    }
    
}
