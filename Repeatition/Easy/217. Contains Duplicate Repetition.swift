//
//  containsDuplicate Repetition.swift
//  LeetCode
//
//  Created by Bakai Ismaiilov on 11/6/25.
//

import Foundation

/// Companies
/// Given an integer array nums, return true if any value appears at least twice in the array, and return false if every element is distinct.
///
///
///
/// Example 1:
/// Input: nums = [1,2,3,1]
/// Output: true
/// Explanation:
/// The element 1 occurs at the indices 0 and 3.
///
/// Example 2:
/// Input: nums = [1,2,3,4]
/// Output: false
///
/// Explanation:
/// All elements are distinct.
///
/// Example 3:
/// Input: nums = [1,1,1,3,3,4,3,2,4,2]
/// Output: true
///
///
///
/// Constraints:
///
/// 1 <= nums.length <= 105
/// -109 <= nums[i] <= 109

func containsDuplicateRepetition(
    _ nums: [Int] = [1,1,1,3,3,4,3,2,4,2]
) -> Bool {
    var hashSet = Set<Int>()
    
    print("containsDuplicateRepetition2() \(containsDuplicateRepetition2())")
    
    for i in nums {
        if hashSet.contains(i) {
            return true
        }
        hashSet.insert(i)
    }
    return false
}

func containsDuplicateRepetition2(
    _ nums: [Int] = [1,2,3,4]
) -> Bool {
    let sorted = nums.sorted()
    var left = 0
    var right = 1
    
    while right <= sorted.count - 1 {
        if sorted[left] == sorted[right] {
            return true
        }
        left += 1
        right += 1
    }
    return false
}
