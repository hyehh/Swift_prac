//
//  main.swift
//  SubString
//
//  Created by Hyeji on 2021/08/04.
//

import Foundation

let str = "헤이즐넛 시럽 1, 바닐라 시럽 1, 일반 휘핑 적게, 돔 리드로 변경, "
let firstIndex = str.index(str.startIndex, offsetBy: 0)
let index = str.index(str.startIndex, offsetBy: str.count-2)
print(str[firstIndex..<index])

