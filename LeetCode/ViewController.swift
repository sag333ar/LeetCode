//
//  ViewController.swift
//  LeetCode
//
//  Created by Sagar Kothari on 07/01/22.
//

import UIKit

class Solution {
	let roman: [Character: Int] = [
		"I": 1,
		"V": 5,
		"X": 10,
		"L": 50,
		"C": 100,
		"D": 500,
		"M": 1000
	]

	func romanToInt(_ s: String) -> Int {
		var result = 0
		let chars = Array(s)
		for i in 0..<chars.count {
			if let charValue = roman[chars[i]] {
				if i >= s.count - 1 {
					result += charValue
				} else if let nextCharValue = roman[chars[i + 1]] {
					if charValue < nextCharValue {
						result -= charValue
					} else {
						result += charValue
					}
				}
			}
		}
		return result
	}
}

class ViewController: UIViewController {
	override func viewDidLoad() {
		super.viewDidLoad()
		print("III = \(Solution().romanToInt("III"))")
		print("LVIII = \(Solution().romanToInt("LVIII"))")
		print("MCMXCIV = \(Solution().romanToInt("MCMXCIV"))")
	}
}
