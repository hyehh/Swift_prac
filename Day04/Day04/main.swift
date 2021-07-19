//
//  main.swift
//  Day04
//
//  Created by Hyeji on 2021/07/19.
//

import Foundation

func interSum(a: Int, b: Int) -> Int{
    return a + b
}

var abSum = interSum(a: 6, b: 7)
print(abSum)

// 변수 과다 사용은 지양! (핸드폰이기 때문에 메모리 많이 차지하면 안됨)
print(interSum(a: 3, b: 4))

func greet(person: String) -> String {
    let greeting = "Hello, \(person)!"
    return greeting
}

print(greet(person: "hyehh"))

func sayHelloWorld() -> String{
    return "Hello World!"
}

print(sayHelloWorld())

func buildAddress(_ name: String, 우편번호 zipCode: Int, country: String = "USA") -> String{
    return """
        \(name)
        \(zipCode)
        \(country)
        """
}

print(buildAddress("유비", 우편번호: 123))
print(buildAddress("유비", 우편번호: 123, country: "China"))

func buildAddress2(_ name: String, 우편번호 zipCode: Int, country: String? = "USA") -> String{
    return """
        \(name)
        \(zipCode)
        \(country ?? "")
        """
}

print(buildAddress2("유비", 우편번호: 123))
print(buildAddress2("유비", 우편번호: 123, country: "China"))
print(buildAddress2("유비", 우편번호: 123, country: nil))

// 가변 매개변수 (Argument에 들어가는 변수의 개수가 상황에 따라 달라짐)
func sayHelloFriends(me: String, friend: String...) -> String{
    return "Hello \(friend)! I'm \(me)."
}

print(sayHelloFriends(me: "hyehh", friend: "Grace", "Emily", "Rosa"))
print(sayHelloFriends(me: "hyehh", friend: "Grace"))

// 복수의 값 반환하는 함수 (return 여러 개)
func getCountry() -> (dialCode: Int, isoCode: String, name: String) {
    let country = (dialCode: 82, isoCode: "KR", name: "Korea")
    //     let country = (82, "KR", "Korea")
    return country
}

print(getCountry())
print(getCountry().dialCode)

func getCountry2() -> (Int, String, String) {
    let country = (82, "KR", "Korea")
    return country
}

print(getCountry2())
print(getCountry2().0)

// 시작부터 끝 숫자까지의 합계 구하는 함수
// for 문 이용
func addRange(start: Int, end: Int) -> String {
    
    // 총합 변수 선언
    var sum = 0
    
    for i in start...end{
        sum += i
    }
    
    return "\(start)부터 \(end)까지의 합은 \(sum)입니다."
}

print(addRange(start:1, end:100))

// while 문 이용
func addRange2(start:Int, end: Int) -> String {
    
    // 총합 변수 선언
    var sum = 0
    // 1씩 증가시킬 변수 선언
    var number = start
    
    while number <= end {
        sum += number
        number += 1
    }
    
    return "\(start)부터 \(end)까지의 합은 \(sum)입니다."
    
}

print(addRange2(start:1, end:100))


// Overloading : 함수의 이름은 중복되어도 parameter의 개수로 구분이 가능
// 도형의 면적과 둘레를 구하는 함수
// 원
func shape(_ r: Double) -> String {
    let pi = 3.14
    let area = pi * r * r
    let border = 2 * pi * r
    return "원 : \(area), \(border)"
}

print(shape(3))

// 직사각형
func shape(_ w: Int, _ h: Int) -> String {
    let area = w * h
    let border = 2 * (w + h)
    return "직사각형 : \(area), \(border)"
}

print(shape(3, 4))

// 직각삼각형
func shape(_ a: Int, _ b: Int, _ c: Int) -> String {
    let area = (Double(a) * Double(b)) / 2
    let border = a + b + c
    return "직각 삼각형 : \(area), \(border)"
}

print(shape(3, 4, 5))

struct ValueType {
    var property = 1
}

class ReferenceType {
    var property = 1
}

var firstStructInstance: ValueType = ValueType()
var secondStructInstance = firstStructInstance
firstStructInstance.property = 3

print("first : \(firstStructInstance.property)")
print("second : \(secondStructInstance.property)")

var firstClassInstance: ReferenceType = ReferenceType()
var secondClassInstance = firstClassInstance
firstClassInstance.property = 3

print("first : \(firstClassInstance.property)")
print("second : \(secondClassInstance.property)")

// struct는 값 타입 선언으로 복제와 아무 상관 없으나 class는 복제하게 되면 값이 복제된 것과 동일하게 변함
