//
//  16. 3Sum Closest.swift
//  LeetCode
//
//  Created by Bakai Ismaiilov on 22/3/24.
//

/// Given an integer array nums of length n and an integer target,
/// find three integers in nums such that the sum is closest to target.
///
/// Return the sum of the three integers.
///
/// You may assume that each input would have exactly one solution.
///
/// Example 1:
///
/// Input: nums = [-1,2,1,-4], target = 1
/// Output: 2
/// Explanation: The sum that is closest to the target is 2. (-1 + 2 + 1 = 2).
///
/// Example 2:
///
/// Input: nums = [0,0,0], target = 1
/// Output: 0
/// Explanation: The sum that is closest to the target is 0. (0 + 0 + 0 = 0).
///
///
/// Constraints:
///
/// * 3 <= nums.length <= 500
/// * -1000 <= nums[i] <= 1000
/// * -104 <= target <= 104


func threeSumClosest(
    _ nums: [Int],
    _ target: Int
) -> Int {
    var differences = Int.max
    let nums = nums.sorted()
    var result = 0
    
    for i in 0..<nums.count {
        result = twoSum(nums, &differences, i, target)
    }
    return result
}

// [-4,-1,1,2]
private func twoSum(
    _ nums: [Int],
    _ difference: inout Int,
    _ i: Int,
    _ target: Int
) -> Int {
    var left = i + 1
    var right = (nums.count - 1)
    
    while left < right {
        let sum = nums[i] + nums[left] + nums[right]
        
        if abs(target - sum) < abs(difference) {
            difference = target - sum
        }
        
        if sum < target {
            left += 1
        } else {
            right -= 1
        }
        
        if difference == 0 {
            break
        }
    }
    
    return target - difference
}
