//
//  26. Remove Duplicates from Sorted Array.swift
//  LeetCode
//
//  Created by Bakai Ismaiilov on 11/9/25.
//

import Foundation

// [1,1,2]

func removeDuplicates(
    _ nums: inout [Int]
) -> Int {
    
    // TODO: You have to return just an Int k, how many unique elements in an array
    
    for i in 0..<nums.count - 1 {
        var left = i + 1
        
        if nums[i] == nums[left] {
            
            while left < nums.count - 1 {
                if nums[left] < nums[left + 1] {
                    nums.swapAt(left, left + 1)
                }
                left += 1
            }
        }
    }
    
    return -1
}
