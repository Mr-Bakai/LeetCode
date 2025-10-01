//
//  136. Single Number.swift
//  LeetCode
//
//  Created by Bakai Ismaiilov on 1/10/25.
//

///
/// Given a non-empty array of integers nums, every element appears twice except for one. Find that single one.
/// You must implement a solution with a linear runtime complexity and use only constant extra space.
///
/// Example 1:
/// Input: nums = [2,2,1]
/// Output: 1
///
/// Example 2:
/// Input: nums = [4,1,2,1,2]
/// Output: 4
///
/// Example 3:
/// Input: nums = [1]
/// Output: 1
///
/// Constraints:
/// 1 <= nums.length <= 3 * 104
/// -3 * 104 <= nums[i] <= 3 * 104
/// Each element in the array appears twice except for one element which appears only once.

/// Returns the single number that does not have a duplicate.
/// - Parameter nums: Array where every value appears exactly twice, except one value that appears once.
/// - Returns: The unique (single) value.
///
/// Time: O(n) — we scan the array once.
/// Space: O(1) — we only keep a running accumulator regardless of input size.

func singleNumber(_ nums: [Int] = [2, 2, 1]) -> Int {
    var acc = 0
    for x in nums {
        acc ^= x
    }
    return acc
}
