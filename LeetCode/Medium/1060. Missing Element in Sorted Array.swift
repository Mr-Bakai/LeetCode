//
//  1060. Missing Element in Sorted Array.swift
//  LeetCode
//
//  Created by Bakai Ismaiilov on 4/4/24.
//

import Foundation

// TODO: TO BE REVISED

/// Given an integer array nums which is sorted in ascending order 
/// and all of its elements are unique and given also an integer k,
/// return the kth missing number starting from the leftmost number of the array.
///
/// Example 1:
///
/// Input: nums = [4,7,9,10], k = 1
/// Output: 5
/// Explanation: The first missing number is 5.
/// Example 2:
///
/// Input: nums = [4,7,9,10], k = 3
/// Output: 8
/// Explanation: The missing numbers are [5,6,8,...], hence the third missing number is 8.
/// Example 3:
///
/// Input: nums = [1,2,4], k = 3
/// Output: 6
/// Explanation: The missing numbers are [3,5,6,7,...], hence the third missing number is 6.
///
func missingElement(
    _ nums: [Int] = [4,7,9,10],
    _ k: Int = 3
) -> Int {
    
    var low = 0
    var high = nums.count - 1
    
    while low < high {
        let mid = high - (high - low) / 2
        if (nums[mid] - nums[0]) - mid < k {
            low = mid
        } else {
            high = mid - 1
        }
    }
    return nums[0] + low + k
}
