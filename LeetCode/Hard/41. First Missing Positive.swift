//
//  41. First Missing Positive.swift
//  LeetCode
//
//  Created by Bakai Ismaiilov on 26/3/24.
//

import Foundation

// Input: nums = [3,4,-1,1]
// Output: 2
// Explanation: 1 is in the array but 2 is missing.

// [1,2,3,4,5,6,7,8,9]

// [0,1,2,3,4,5,6,7,8]

func firstMissingPositive(
    _ nums: [Int]
) -> Int {
    
    var dict: [Int:Int] = [:]
    
    var smallest = nums[0]
    
    // 7,8,9,11,12
    
    for i in 0..<nums.count {
        
        dict[nums[i]] = i
        
        if nums[i] < smallest {
            smallest = nums[i]
        }
    }
    
    print(dict)
    return smallest
}
