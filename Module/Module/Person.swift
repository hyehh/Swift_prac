//
//  Person.swift
//  Module
//
//  Created by HYEJI on 2021/10/14.
//

import Foundation

@objc class Person: NSObject {
    
    var state: Bool = false
    
    init(state: Bool) {
        self.state = state
    }
    
    func talk() -> Bool{
        self.state = true
        return state
    }
}
