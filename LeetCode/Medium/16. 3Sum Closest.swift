//
//  16. 3Sum Closest.swift
//  LeetCode
//
//  Created by Bakai Ismaiilov on 22/3/24.
//

import Foundation

func threeSumClosest(
    _ nums: [Int],
    _ target: Int
) -> Int {
    var differences = Int.max
    let nums = nums.sorted()
    var result = 0
    
    for i in 0..<nums.count {
        result = twoSum(nums, &differences, i, target)
    }
    return result
}

// [-4,-1,1,2]
private func twoSum(
    _ nums: [Int],
    _ difference: inout Int,
    _ i: Int,
    _ target: Int
) -> Int {
    var left = i + 1
    var right = (nums.count - 1)
    
    while left < right {
        let sum = nums[i] + nums[left] + nums[right]
        
        if abs(target - sum) < abs(difference) {
            difference = target - sum
        }
        
        if sum < target {
            left += 1
        } else {
            right -= 1
        }
        
        if difference == 0 {
            break
        }
    }
    
    return target - difference
}
