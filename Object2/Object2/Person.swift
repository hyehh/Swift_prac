//
//  Person.swift
//  Object2
//
//  Created by HYEJI on 2021/10/13.
//

import Foundation

class Person {
    
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func talk(_message: String) {
        print("\(name): \(_message)")
    }
    
}
