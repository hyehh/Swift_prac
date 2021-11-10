//
//  main.swift
//  String
//
//  Created by HYEJI on 2021/11/10.
//

import Foundation

print("Hello, World!")

var title: String? = "aaa"

// Force unwrapping, which has the downside of creating a potential crash if the value isn't set.
print("The title is \(title!)")

// Using a `if let` or `guard` statement to safely unwrap the value before using it.
if let unwrappedTitle = title {
    print("The title is \(unwrappedTitle)")
}

// Providing a default value:
print("The title is \(title ?? "")")

// Making use of the `String(describing:)` initialiser, resulting in 'The title is Optional("SwiftLee - A blog about Swift")'
print("The title is \(String(describing: title))")

let name = "hyeji"
let age = 25

print("\(name)\(age)")
print(name + String(age))
