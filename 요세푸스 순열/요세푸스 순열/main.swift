//
//  main.swift
//  요세푸스 순열
//
//  Created by 조연희 on 5/30/24.
//

import Foundation

let input = readLine()!.split(separator: " ").map({ Int(String($0))! })
let k = input[1]
let n = input[0]
var index = k
var res: [Int] = []

var arr = Array(repeating: 0, count: n)

while res.count < n {
    res.append(index)
    arr[index-1] = 1
    index += k
    if index > n {
        index -= n
    }
}

print(res)
