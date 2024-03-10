//
//  704. Binary Search.swift
//  LeetCode
//
//  Created by Bakai Ismaiilov on 10/3/24.
//

import Foundation

func search(
    _ nums: [Int],
    _ target: Int
) -> Int {
    var low = 0
    var high = (nums.count - 1)
    
    while low <= high {
        var mid = (high+low)/2
        var guess = nums[mid]
        
        if guess == target {
            return mid
        } else if (guess > target) {
            high = mid - 1
        } else {
            low = mid + 1
        }
    }
    return -1
}
