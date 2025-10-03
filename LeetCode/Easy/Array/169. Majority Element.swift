//
//  169. Majority Element.swift
//  LeetCode
//
//  Created by Bakai Ismaiilov on 3/10/25.
//

/// Given an array nums of size n, return the majority element.
/// The majority element is the element that appears more than ⌊n / 2⌋ times.
/// You may assume that the majority element always exists in the array.
///
/// Example 1:
/// Input: nums = [3,2,3]
/// Output: 3
///
/// Example 2:
/// Input: nums = [2,2,1,1,1,2,2]
/// Output: 2
///
/// Constraints:
/// n == nums.length
/// 1 <= n <= 5 * 104
/// -109 <= nums[i] <= 109

func majorityElement(
    _ nums: [Int] = [3,2,3]
) -> Int {
    
    let halfCount = nums.count / 2
    var count = [Int: Int]()
    
    for num in nums {
        count[num, default: 0] += 1
    }
    
    for (key, val) in count {
        if val > halfCount {
            return key
        }
    }
    
    return -1
}
