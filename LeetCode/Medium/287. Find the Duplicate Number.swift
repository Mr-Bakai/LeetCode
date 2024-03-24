//
//  287. Find the Duplicate Number.swift
//  LeetCode
//
//  Created by Bakai Ismaiilov on 24/3/24.
//

import Foundation

// pigeonhole principle
func findDuplicate(
    _ nums: [Int]
) -> Int {
    var nums = nums.sorted()
    
    for i in 1..<nums.count {
        if nums[i] == nums[i-1] {
            return nums[i]
        }
    }
    return -1
}
