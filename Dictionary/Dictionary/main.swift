//
//  main.swift
//  Dictionary
//
//  Created by HYEJI on 2021/10/02.
//

import Foundation

print("Hello, World!")

var products2 = []
var pName = [String]()
var pPrice = [String]()
var pUrl = [String]()

// Dictionary 선언하기
var myDictionary = [String:String]()

// Dictionary 에 데이터 할당하기
myDictionary["SJD 293"] = "Red Ferrari"
myDictionary["USD 111"] = "Silver Porsche"

let myCar = myDictionary["SJD 293"]

// replace
myDictionary["SJD 293"] = "Black Lambo"

// remove
// myDictionary["SJD 293"] = nil

for (key, value) in myDictionary {
    print("\(key) is a \(value)")
}

//for (key, value) in products2 {
//    print("\(key) is a \(value)")
//}

//print(products2[0])
//print(products2.count)

for i in 0..<products2.count {
//    print(products2[i])
    for (key, value) in products2[i] {
        if key == "ProductName" {
            pName.append(value)
        } else if key == "price" {
            pPrice.append(value)
        } else if key == "Thumbnailurl" {
            pUrl.append(value)
        }
    }
        
}

print(pName)
print(pPrice)
print(pUrl)
