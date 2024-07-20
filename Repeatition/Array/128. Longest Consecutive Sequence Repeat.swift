//
//  128. Longest Consecutive Sequence Repeat.swift
//  LeetCode
//
//  Created by Bakai Ismaiilov on 19/7/24.
//

import Foundation

/// Given an unsorted array of integers nums,
/// return the length of the longest consecutive elements sequence.
/// You must write an algorithm that runs in O(n) time.
///
/// Example 1:
/// Input: nums = [100,4,200,1,3,2]
/// Output: 4
/// Explanation: The longest consecutive elements sequence is [1, 2, 3, 4]. Therefore its length is 4.
///
/// Example 2:
/// Input: nums = [0,3,7,2,5,8,4,6,0,1]
/// Output: 9
///
/// Constraints:
/// 0 <= nums.length <= 105
/// -109 <= nums[i] <= 109

func longestConsecutiveRepeat(
    _ nums: [Int] = [100, 4, 200, 1, 3, 2]
) -> Int {
    
    let numSet = Set(nums)
    var longest = 1
    
    for i in numSet {
        if !numSet.contains(i-1) {
            var length = 1
            while numSet.contains(i + length) {
                length += 1
            }
            longest = max(longest, length)
        }
    }
    
    return longest
}
