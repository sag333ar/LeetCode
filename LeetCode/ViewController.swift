//
//  ViewController.swift
//  LeetCode
//
//  Created by Sagar Kothari on 07/01/22.
//

import UIKit

class Solution {
	func isValid(_ s: String) -> Bool {
		let bracketsMap: [Character: Character] = ["}": "{", ")": "(", "]": "["]
		let openingBrackets = bracketsMap.values.compactMap { $0 }
		let problem = Array(s)
		var stack: [Character] = []
		if !openingBrackets.contains(problem[0]) {
			print("String starts with closing bracket.")
			return false
		}
		for i in 0..<problem.count {
			if openingBrackets.contains(problem[i]) {
				stack.append(problem[i])
			} else {
				if let last = stack.last, let openingForCurrent = bracketsMap[problem[i]] {
					if openingForCurrent == last {
						_ = stack.popLast()
					} else {
						return false
					}
				} else {
					return false
				}
			}
		}
		return stack.isEmpty
	}
}

class ViewController: UIViewController {
	override func viewDidLoad() {
		super.viewDidLoad()
		let boolV = Solution().isValid("[])")
		print("Is valid Solution? - \(boolV ? "YES" : "NO")")
	}
}
