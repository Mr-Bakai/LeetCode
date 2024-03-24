//
//  259. 3Sum Smaller.swift
//  LeetCode
//
//  Created by Bakai Ismaiilov on 22/3/24.
//

import Foundation

func threeSumSmaller(
    _ nums: [Int],
    _ target: Int
) -> Int {
    let nums = nums.sorted()
    var sum = 0
    for i in 0..<(nums.count - 2) {
        sum += twoSumSmaller(nums, i + 1, target - nums[i])
    }
    return sum
}

//  [-2,0,1,3]
private func twoSumSmaller(
    _ nums: [Int],
    _ startIndex: Int,
    _ target: Int
) -> Int {
    
    var sum = 0
    var left = startIndex
    var right = nums.count - 1
    while left < right {
        if nums[left] + nums[right] < target {
            sum += right - left
            left += 1
        } else {
            right -= 1
        }
    }
    return sum
}
