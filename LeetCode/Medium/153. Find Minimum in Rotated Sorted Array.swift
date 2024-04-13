//
//  153. Find Minimum in Rotated Sorted Array.swift
//  LeetCode
//
//  Created by Bakai Ismaiilov on 13/4/24.
//

import Foundation

func findMin(_ nums: [Int] = [2,3,4,5,1]) -> Int {
    
    var left = 0
    var right = nums.count - 1
    
    while left < right {
        let mid = left + (right - left) / 2
        
        if nums[mid] > nums[nums.count - 1] {
            left = mid + 1
        } else {
            right = mid
        }
    }
    
    return nums[left]
}
