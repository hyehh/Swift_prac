//
//  main.swift
//  UserDefaults
//
//  Created by HYEJI on 2021/10/14.
//

import Foundation

print("Hello, World!")

UserDefaults.standard.set(true, forKey: "updateState")
// UserDefaults.standard.removeObject(forKey: "updateState")
var needUpdate = false
needUpdate = UserDefaults.standard.bool(forKey: "updateState")
print(needUpdate)
for (key, value) in UserDefaults.standard.dictionaryRepresentation() {
  print("\(key) = \(value) \n")
}
