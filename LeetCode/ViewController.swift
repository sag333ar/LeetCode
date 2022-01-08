//
//  ViewController.swift
//  LeetCode
//
//  Created by Sagar Kothari on 07/01/22.
//

import UIKit

class Solution {
	func longestCommonPrefix(_ strs: [String]) -> String {
		var prefix = ""
		var charIndex = 0
		while charIndex < strs[0].count {
			let firstChar = Array(strs[0])[charIndex]
			for i in 1..<strs.count {
				if charIndex >= strs[i].count {
					return prefix
				}
				let char = Array(strs[i])[charIndex]
				if firstChar != char {
					return prefix
				}
			}
			prefix = "\(prefix)\(firstChar)"
			charIndex += 1
		}
		return prefix
	}
}

class ViewController: UIViewController {
	override func viewDidLoad() {
		super.viewDidLoad()
		print("Longest Common Prefix for [\"flower\",\"flow\",\"flight\"] is - ")
		print((Solution().longestCommonPrefix(["flower","flow","flight"])))
		print("Longest Common Prefix for [\"dog\",\"racecar\",\"car\"] is - ")
		print((Solution().longestCommonPrefix(["dog","racecar","car"])))
	}
}
