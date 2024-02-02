//
//  main.swift
//  boj 1157
//
//  Created by yeoni on 2/2/24.
//

import Foundation

let input = readLine()!.uppercased()

var dic: [Character: Int] = [:]

for letter in input {
    if let value = dic[letter] {
        dic[letter] = value + 1
    } else {
        dic[letter] = 0
    }
}

let maxValueDic = dic.filter { $0.value == dic.values.max()! }

maxValueDic.count > 1 ? print("?") : print(maxValueDic.keys.first!)
