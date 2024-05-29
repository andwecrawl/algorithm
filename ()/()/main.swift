//
//  main.swift
//  ()
//
//  Created by 조연희 on 5/10/24.
//

import Foundation

let n = Int(readLine()!)!
for _ in 0..<n {
    let input = readLine()!.map { String($0) }
    
    var stack: [String] = []
    for letter in input {
        let lett = String(letter)
        if stack.count != 0 && stack.last! + lett == "()" {
            stack.removeLast()
            continue
        } else {
            stack.append(lett)
        }
    }
    if stack.count == 0 { print("YES")} else { print("NO") }
}
