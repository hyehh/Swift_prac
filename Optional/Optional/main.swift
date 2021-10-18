//
//  main.swift
//  Optional
//
//  Created by HYEJI on 2021/10/17.
//

import Foundation

print("Hello, World!")

var dic = [String: String]()
dic.updateValue("1", forKey: "a")
dic.updateValue("2", forKey: "b")
dic.updateValue("3", forKey: "c")

let convertA = dic["a"]!
let convertB = dic["b"]!
let convertC = dic["c"]!

funcGuard1()

func funcGuard1() {
    guard let bindingA = Int(convertA) else {
        print("Error")
        return
    }

    guard let bindingB = Int(convertB) else {
        print("Error")
        return
    }

    guard let bindingC = Int(convertC) else {
        print("Error")
        return
    }
    print(bindingA)
    print(bindingB)
    print(bindingC)
}
