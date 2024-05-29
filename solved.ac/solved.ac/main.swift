//
//  main.swift
//  solved.ac
//
//  Created by 조연희 on 5/10/24.
//

import Foundation

let cnt = readLine()!.split(separator: " ").map { Int(String($0))! }.first!
if cnt == 0 { 
    print("0")
} else {
    var arr: [Int] = []
    var limit = Int((Double(cnt) * 0.15).rounded())
    
    for _ in 0..<cnt {
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }.first!
        arr.append(input)
    }
    
    arr.sort()
    let resArr = Array(arr[limit..<(cnt-limit)])
    let total = resArr.reduce(0, { $0 + $1 })
    let res = Int((Double(total) / Double(resArr.count)).rounded())
    print(res)
}
