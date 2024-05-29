//
//  main.swift
//  Deque
//
//  Created by 조연희 on 5/17/24.
//

import Foundation

struct Deque {
    var queue: [Int] = []
    
    mutating func push_front(_ x: Int) {
        queue.insert(x, at: 0)
    }
    
    mutating func push_back(_ x: Int) {
        queue.append(x)
    }
    
    mutating func pop_front(_ x: Int) {
        print(queue.isEmpty ? "-1" : queue.removeFirst())
    }
    
    mutating func pop_last(_ x: Int) {
        print(queue.isEmpty ? "-1" : queue.removeLast())
    }
    
    mutating func size() {
        print(queue.count)
    }
    
    mutating func empty() {
        print(queue.isEmpty ? "1" : "0")
    }
    
    mutating func front() {
        print(queue.first ?? "-1")
    }
    
    mutating func back() {
        print(queue.last ?? "-1")
    }
}

let n = Int(readLine()!)!
var queue = Deque()
var num = 0

for _ in 0..<n{
    let input = readLine()!.split(separator: " ").map({ String($0) })
    let words = input[0]
    if input.count > 1 {
        num = Int(input[1])!
    }
    
    switch words {
    case "push_front": queue.push_front(num)
    case "push_back": queue.push_back(num)
    case "pop_front": queue.pop_front(num)
    case "pop_back": queue.pop_last(num)
    case "size": queue.size()
    case "empty": queue.empty()
    case "front": queue.front()
    case "back": queue.back()
    default: break
    }
}
