//
//  128. Longest Consecutive Sequence.swift
//  LeetCode
//
//  Created by Bakai Ismaiilov on 16/6/24.
//

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

func longestConsecutive(
    _ nums: [Int] = [100, 4, 200, 1, 3, 2]
) -> Int {
    let numSet = Set(nums)
    var longest = 0
    
    for n in nums {
        if !numSet.contains((n - 1)) {
            var length = 0
            while numSet.contains((n + length)) {
                length += 1
            }
            longest = max(length, longest)
        }
    }
    return longest
}
