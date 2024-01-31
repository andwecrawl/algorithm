//
//  main.swift
//  BOJ 9012
//
//  Created by yeoni on 1/31/24.
//

import Foundation

let input = readLine()!.map { Int(String($0)) }

var textInput: [String] = []
for _ in 0..<input {
    let text = readLine()!.map { String($0) }
    textInput.append(text)
}

for text in textInput {
    if text.last == "(" || text.count % 2 == 1 { print("NO")}
    
    var stack = text.map { $0 }
    
}
