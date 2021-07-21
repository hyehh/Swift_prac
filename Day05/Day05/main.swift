//
//  main.swift
//  Day05
//
//  Created by Hyeji on 2021/07/20.
//

import Foundation

// Struct 생성
struct Sample {
    // property : 변수에 대한 데이터 타입 정의
    var sampleProperty: Int = 10 // 가변 property
    let fixedSampleProperty: Int = 100 // 불변 property
    static var typeProperty: Int = 1000 // 타입 property
    
    // 생성자
    init() {
        
    }
    
    // function
    func instanceMethod(){
        print("instance method")
    }
    
    static func typeMethod(){
        print("type method")
    }
}

var sample: Sample = Sample()
var sample2 = Sample()

print(sample.sampleProperty)
sample.sampleProperty = 100
print(sample.sampleProperty)
print(sample2.sampleProperty)
sample.instanceMethod()

print(Sample.typeProperty)
Sample.typeMethod()

// Struct 생성
struct Student {
    // property
    var name: String = "unknown"
    var `class`: String = "Swift"
    
    static func selfIntroduce(){
        print("학생 타입입니다.")
    }
    
    func selfIntroduce(){
        print("저는 \(`class`)반 \(name)입니다.")
        print("저는 \(self.class)반 \(name)입니다.")
    }
}

Student.selfIntroduce()

var student: Student = Student()
student.name = "hyehh"
student.class = "스위프트"
student.selfIntroduce()

let student1: Student = Student()
// student1.class = "스위프트" -> 불가능! let이기 때문!
student1.selfIntroduce()

// Class 생성
class Student2 {
    // property
    var name: String = "unknown"
    var `class`: String = "Swift"
    
    static func selfIntroduce(){
        print("학생 타입입니다.")
    }
    
    func selfIntroduce(){
        print("저는 \(`class`)반 \(name)입니다.")
        print("저는 \(self.class)반 \(name)입니다.")
    }
}

Student2.selfIntroduce()
var student2: Student2 = Student2()
student2.name = "hyehh"
student2.class = "스위프트"
student2.selfIntroduce()

class Shape{
    
    var shape = ""
    var area = 0.0
    var border = 0.0
    
    func input(_ r: Double) {
        let pi = 3.14
        shape = "원"
        area = pi * r * r
        border = 2 * pi * r
        resultPrint()
    }
    
    func input(_ w: Double, _ h: Double){
        shape = "직사각형"
        area = w * h
        border = 2 * (w + h)
        resultPrint()
    }
    
    func input(_ a: Double, _ b: Double, _ c: Double) {
        shape = "직각삼각형"
        area = (a * b) / 2
        border = a + b + c
        resultPrint()
    }
    
    func resultPrint() {
        print("\(shape)의 면적은 \(String(format: "%.2f", (area)))이고 둘레는 \(String(format: "%.2f", (border)))입니다.")
    }
    
    func intInput(_ w: Int, _ h: Int){
        shape = "직사각형"
        var intArea = Int(area)
        var intBorder = Int(border)
        intArea = w * h
        intBorder = 2 * (w + h)
        print("\(shape)의 면적은 \(intArea)이고 둘레는 \(intBorder)입니다.")
    }
}

let sh1: Shape = Shape()
let sh2: Shape = Shape()
let sh3: Shape = Shape()

sh1.input(5) // 원의 면적과 둘레 구하기
sh2.input(5,6) // 직사각형의 면적과 둘레 구하기
sh3.input(5,6,8) // 직각삼각형의 면적과 둘레 구하기
sh2.intInput(5, 6)

// 생성자로 계산하기
class Shape1 {
    
    var area = 0.0
    let pi = 3.14157
    
    init() {
        print("계산 시작")
    }
    
    init(radius: Double) {
        area = pi * radius * radius
        calc()
    }
    
    func input(r: Double) {
        area = pi * r * r
        calc()
    }
    
    func calc(){
        print("원의 면적은 \(String(format: "%.2f", (area)))입니다.")
    }
    
}

let sh4: Shape1 = Shape1()
sh4.input(r: 4)
let sh5: Shape1 = Shape1.init(radius: 4)

class Shape2 {
    
    var shape = ""
    var area = 0.0
    var border = 0.0
    
    init(_ r: Double) {
        let pi = 3.14
        shape = "원"
        area = pi * r * r
        border = 2 * pi * r
        resultPrint()
    }
    
    init(_ w: Double, _ h: Double) {
        shape = "직사각형"
        area = w * h
        border = 2 * (w + h)
        resultPrint()
    }
    
    init(_ a: Double, _ b: Double, _ c: Double) {
        shape = "직각삼각형"
        area = (a * b) / 2
        border = a + b + c
        resultPrint()
    }
    
    func resultPrint(){
        print("\(shape)의 면적은 \(String(format: "%.2f", (area)))이고 둘레는 \(String(format: "%.2f", (border)))입니다.")
    }
}

let sha1: Shape2 = Shape2(5)
let sha2: Shape2 = Shape2(5, 6)
let sha3: Shape2 = Shape2(5, 6, 7)

// Extension
extension Int{
    var isEven: Bool{
        return self % 2 == 0
    }
    
    var isOdd: Bool{
        return self % 2 == 1
    }
}

print(4.isOdd)
print(4.isEven)

// Closure
var sumClosure: (Int, Int) -> Int = {(a: Int, b: Int) -> Int in
    return a + b
}

var sumResult = sumClosure(10, 29)
print(sumResult)
print(sumClosure(13, 29))

// random
print(Int.random(in: 1...10))
print(Int.random(in: 1...10))

func getNum() -> String{
    String(Int.random(in: 1..<10))
}

print(getNum())
print(getNum())
