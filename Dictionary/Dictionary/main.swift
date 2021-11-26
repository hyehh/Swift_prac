//
//  main.swift
//  Dictionary
//
//  Created by HYEJI on 2021/10/02.
//

import Foundation

print("Hello, World!")

var products2 = [["status": "Sale", "ProductId": "VP0004", "price": "100000.00", "Thumbnailurl": "http://Product/1.PNG", "CODE": "0", "ProductName": "Skullcandy headset", "category": "Electronics", "MESSAGE": "Success"], ["status": "Sale", "category": "Electronics", "MESSAGE": "Success", "Thumbnailurl": "http://Product/AirPods Max.png", "price": "590000.00", "ProductName": "AirPods Max", "CODE": "0", "ProductId": "VP0005"], ["ProductId": "VP00010", "status": "Sale", "MESSAGE": "Success", "ProductName": "odd number Test", "category": "silver", "CODE": "0", "Thumbnailurl": "http://Product/D5.png", "price": "10000.00"]]
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


var product = ["MESSAGE": "Success", "ProductDetailImagescount": "4", "Detailimagesurl": "http://Product/air.png|http://Product/112.png|http://Product/Apple Watch.png|http://Product/D1.png", "Status": "Sale", "CODE": "0", "ProductDescriptions": "1\n1\n1\n1\n1\n1\n1\n1\nsa\nfs\nda\nsafd\nfsafas"]

for (key, value) in product {
    if key == "ProductName" {
        pName.append(value)
    } else if key == "price" {
        pPrice.append(value)
    } else if key == "Detailimagesurl" {
        pUrl.append(value)
    }
}

var url = "http://Product/air.png|http://Product/112.png|http://Product/Apple Watch.png|http://Product/D1.png"

print(url.components(separatedBy: "|"))
print(url.split(separator: "|"))

var url2 = url.components(separatedBy: "|")
print(url2[0])
