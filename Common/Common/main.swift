//
//  main.swift
//  Common
//
//  Created by HYEJI on 2021/10/26.
//

import Foundation

print("Hello, World!")

// dictionary 선언
var dic = [String:String]()
// dictionary 추가
dic.updateValue("apple", forKey: "A")
dic.updateValue("banana", forKey: "B")
dic["C"] = "car"
// 특정 dictionary 제거 (C와 B 관련 데이터 모두 삭제되고 dic에는 A만 남게 됨)
dic.removeValue(forKey: "C")
dic["B"] = nil

// 특정 문자 포함 여부
var dic2 = [String:String]()
dic2 = ["이름" : "김여름", "이름2": "김신영", "이름3" : "박윤하", "성별" : "남자", "성별2" : "여자", "성별3" : "중성"]
for item in dic2 {
    // 맨 앞에 특정 문자 있는지 확인
    if item.value.hasPrefix("김") {
        print(item.value, "님은 김씨 입니다.")
    }
    // 맨 뒤에 특정 문자 있는지 확인
    if item.value.hasSuffix("자") {
        print(item.value, "입니다.")
    }
    // 특정 문자가 포함되어 있는지 확인
    if item.value.contains("여") {
        print(item.value, "는 '여'가 포함된 글자입니다.")
    }
}

// 특정 문자 기준으로 자르기
var dic3 = ["price": "100.00"]
let price = dic3["price"]!.components(separatedBy: ".")[0]
print(price, "입니다.")

// 옵셔널 바인딩
binding()
func binding() {
    let dic4 = ["name" : "hyehh", "gender" : "W", "hobby" : "walking", "job" : "iOS Developer"]
    if let name = dic4["name"] {
        print(name, "입니다.")
    } else {
        print("이름이 없습니다.")
    }

    guard let name2 = dic4["name"] else {
        print("이름이 없습니다.")
        return
    }

    print(name2, "입니다.")
    
    if let name = dic4["namu"] {
        print(name, "입니다.")
    } else {
        print("좋아하는 나무가 없습니다.")
    }

    guard let name2 = dic4["namu"] else {
        print("좋아하는 나무가 없습니다.")
        return
    }

    print(name2, "입니다.")
}

// 파라미터 개수 모를 경우 파라미터에 ... 사용
print(addNums(nums: 1, 2, 3, 4))
func addNums(nums: Int...) -> Int{
    var sum = 0
    for num in nums {
        sum += num }
    return sum
    
}

// inout
var value = 3
increment(&value)
func increment(_ value: inout Int) {
    value += 1
    print(value)
}

// 정렬
var arr = ["3", "4", "2", "7", "0"]
print(arr)

print(arr.reversed())
print(arr.sorted())
print(arr.sorted(by: >))
