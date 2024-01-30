//
//  main.swift
//  PS
//
//  Created by yeoni on 1/30/24.
//

import Foundation

let input = readLine()!.components(separatedBy: " ").map { Int(String($0))! }

var arr: [[Int]] = []

for _ in 0..<input[1] {
    let sequence = readLine()!.components(separatedBy: " ").map { Int(String($0))! }
    arr.append(sequence)
}

var result: [Int] = []
for i in 1...input[0] {
    result.append(i)
}

for element in arr {
    let firstIndex = element[0] - 1
    let lastIndex = element[1] - 1
    
    let sequence = result[firstIndex...lastIndex]
    result.replaceSubrange(firstIndex...lastIndex, with: sequence.reversed())
}

let res: String = result.map{ String($0) }.joined(separator: " ")
print(res)
