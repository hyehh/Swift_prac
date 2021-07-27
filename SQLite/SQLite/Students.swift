//
//  Students.swift
//  SQLite
//
//  Created by Hyeji on 2021/07/27.
//

import Foundation

class Students {
    // property
    var id: Int
    var name: String?
    var dept: String?
    var phone: String?
    
    // constructor
    init(id: Int, name: String?, dept: String?, phone: String?) {
        self.id = id
        self.name = name
        self.dept = dept
        self.phone = phone
    }
}
