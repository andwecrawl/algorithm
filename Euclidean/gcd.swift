import Foundation

	let a = 1024
	let b = 928
	var num = 0
	
	func findGcd(_ a: Int, _ b: Int) -> (Int) {
		if (b == 0) {
			return a
		}
		else {
			return findGcd(b, a%b)
		}
	}
	num = findGcd(a, b)
	print(num)
