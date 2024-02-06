import Foundation

for _ in 0...2 {
    let input = readLine()!.components(separatedBy: " ").joined().replacingOccurrences(of: "0", with: "")
    
    switch input.count {
    case 0: print("D")
    case 1: print("C")
    case 2: print("B")
    case 3: print("A")
    default: print("E")
    }
}