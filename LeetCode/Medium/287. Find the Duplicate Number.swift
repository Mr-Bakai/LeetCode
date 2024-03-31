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
    let nums = nums.sorted()
    
    for i in 1..<nums.count {
        if nums[i] == nums[i-1] {
            return nums[i]
        }
    }
    return -1
}

// [1,3,4,2,2]
func findDuplicateBinarySearch(
    _ nums: [Int]
) -> Int {
    var left = 1
    var right = nums.count - 1
    var duplicate = 0
    
    while left < right {
        let mid = (left + right) / 2
        var count = 0
        
        for i in 0..<nums.count {
            if i <= mid {
                count += 1
            }
        }
        
        if count > mid {
            duplicate = mid
            right = mid - 1
        } else {
            left = mid + 1
        }
    }
    return duplicate
}
