//
//  main.swift
//  0x001
//
//  Created by 조연희 on 3/25/24.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0]
let m = input[1]

var board = Array(repeating: Array(repeating: "0", count: m), count: n)
var num = 1
let cnt = n * m

while num < cnt {
    for i in board.indices {
        let arr = board[i]
        for j in arr.indices {
            let k = i + j
            if (i + j) == (num - 1) {
                board[i][j] = "\(num)"
                num += 1
                break
            }
        }
    }
}

    for i in board.indices {
        let arr = board[i]
        print(arr.joined(separator: " "))
    }
