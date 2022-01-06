//
//  ViewController.swift
//  LeetCode
//
//  Created by Sagar Kothari on 07/01/22.
//

import UIKit

class Solution {
	func isPalindrome(_ x: Int) -> Bool {
		if x < 0 { return false }
		if x < 10 { return true }
		var div = 1
		while x >= div * 10 {
			div *= 10
		}
		var x = x
		while x > 0 {
			let left = x / div
			let right = x % 10
			if left != right {
				return false
			}
			x = x % div
			x = x / 10
			div = div / 100
		}
		return true
	}
}

class ViewController: UIViewController {
	override func viewDidLoad() {
		super.viewDidLoad()
		print("Is 0 palindrome? - \(Solution().isPalindrome(0) ? "True" : "False") ")
		print("Is 123 palindrome? - \(Solution().isPalindrome(123) ? "True" : "False") ")
		print("Is 1221 palindrome? - \(Solution().isPalindrome(1221) ? "True" : "False") ")
		print("Is -121 palindrome? - \(Solution().isPalindrome(-121) ? "True" : "False") ")
	}
}
