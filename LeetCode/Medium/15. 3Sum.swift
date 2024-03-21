//
//  15. 3Sum.swift
//  LeetCode
//
//  Created by Bakai Ismaiilov on 21/3/24.
//

import Foundation

/// Input: nums = [-1,0,1,2,-1,-4]
/// Output: [[-1,-1,2],[-1,0,1]]
/// Explanation:
/// nums[0] + nums[1] + nums[2] = (-1) + 0 + 1 = 0.
/// nums[1] + nums[2] + nums[4] = 0 + 1 + (-1) = 0.
/// nums[0] + nums[3] + nums[4] = (-1) + 2 + (-1) = 0.
/// The distinct triplets are [-1,0,1] and [-1,-1,2].
/// Notice that the order of the output and the order of the triplets does not matter.

func threeSum(_ nums: [Int]) -> [[Int]] {
    
    var i = 0
    var j = 0
    var k = 0
    
    var first = 0
    var second = 0
    var third = 0
    
    while i < nums.count && j < nums.count && k < nums.count {
        first = nums[i]
    }
    
    return [[1]]
}
