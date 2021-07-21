//
//  main.swift
//  Day02
//
//  Created by Hyeji on 2021/07/19.
//

import Foundation

var str1: String // nil 값 불가능
str1 = "Apple"
str1 = "Google"
// str1 = nil

print(str1)

var str2: String?
str2 = "Apple"
str2 = "Google"
str2 = nil

print(str2 as Any)

var str3: String?
str3 = "123"
var int3 = Int(str3!)!
print(int3 + 3)

var str4: String
str4 = "123"
var int4 = Int(str4)!
print(int4 + 2)

// Tuple에서의 비교 연산 (처음에서 비교가 되면 두 번째 변수는 비교하지 않고 처음 비교 값으로 출력함)
// 문자 비교는 a<z 라고 생각!
print((1, "zebra") < (2, "apple"))
print((1, "zebra") < (1, "apple"))

// 삼항 조건 연산자
let gender = 0
var result = gender > 0 ? "male" : "female"
print(result)

let contentHeight = 40
let hasHeader = false

// 조건 ? true일 경우 : false일 경우
let rowHeight = contentHeight + (hasHeader ? 10 : -20)
print(rowHeight)

// 범위 연산자
// 닫힌 범위 연산자
for i in 1...10{
    print(i)
}

var sum: Int = 0
for i in 1...10{
    sum += i
}
print("1~10의 합계는 \(sum) 입니다.")

// 구구단 5단 출력
for i in 1...9{
    print("5 X \(i) = \(5*i)")
}

// 반닫힌 범위 연산자
for i in 1..<10{
    print("5 X \(i) = \(5*i)")
}

let names = ["Anna", "Alex", "Brian", "Jack", "Grace", "Kevin"]
print(names.count)

for i in 0..<names.count{
    print("Person \(i+1) is called \(names[i])")
}

// Optional
var constantNum: Int? = 100
constantNum = 22
print(constantNum!)
var constantNum2: Int! = 100
constantNum2 = 20
print(constantNum2 + 20)
