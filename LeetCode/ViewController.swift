//
//  ViewController.swift
//  LeetCode
//
//  Created by Sagar Kothari on 07/01/22.
//

import UIKit

class Solution {
	func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
		var hashMap: [Int: Int] = [: ]
		for i in 0..<nums.count {
			let expected = target - nums[i]
			if let index = hashMap[expected] {
				return [index, i]
			} else {
				hashMap[nums[i]] = i
			}
		}
		return [0, 0]
	}
}

class ViewController: UIViewController {
	override func viewDidLoad() {
		super.viewDidLoad()
		print(Solution().twoSum([2,7,11,15], 9))
	}
}
