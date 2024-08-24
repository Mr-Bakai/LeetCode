//
//  15. 3Sum Repeat.swift
//  LeetCode
//
//  Created by Bakai Ismaiilov on 21/8/24.
//

/// Given an integer array nums, return all the triplets [nums[i], nums[j], nums[k]] 
/// such that 
/// i != j,
/// i != k, and
/// j != k, and 
/// nums[i] + nums[j] + nums[k] == 0.

/// Notice that the solution set must not contain duplicate triplets.
///
///
/// Example 1:
/// Input: nums = [-1,0,1,2,-1,-4]
/// Output: [[-1,-1,2],[-1,0,1]]
///
/// Explanation:
/// nums[0] + nums[1] + nums[2] = (-1) + 0 + 1 = 0.
/// nums[1] + nums[2] + nums[4] = 0 + 1 + (-1) = 0.
/// nums[0] + nums[3] + nums[4] = (-1) + 2 + (-1) = 0.
/// The distinct triplets are [-1,0,1] and [-1,-1,2].
/// Notice that the order of the output and the order of the triplets does not matter.
///
///
/// Example 2:
/// Input: nums = [0,1,1]
/// Output: []
/// Explanation: The only possible triplet does not sum up to 0.
///
///
/// Example 3:
/// Input: nums = [0,0,0]
/// Output: [[0,0,0]]
/// Explanation: The only possible triplet sums up to 0.
///
///
/// Constraints:
/// 3 <= nums.length <= 3000
/// -105 <= nums[i] <= 105

func threeSumRepeat(
    _ nums: [Int] = [-1,0,1,2,-1,-4]
) -> [[Int]] {
    
    // [-1,0,1,2,-1,-4]
    
    // [-1,-1,2], [-1,0,1]
    var result = [[Int]]()
    
    for i in 0..<nums.count {
        searchTwoSum(
            i,
            nums,
            &result
        )
    }
    return result
}

private func searchTwoSum(
    _ i: Int,
    _ nums: [Int],
    _ result: inout [[Int]]
) {
    var left = i + 1
    var right = nums.count - 1
    
    while left < right {
        let threeSum = nums[i] + nums[left] + nums[right]
        
        if threeSum == 0 {
            result.append(contentsOf: [[nums[i], nums[left], nums[right]]])
        }
        
        right -= 1
        
        if left == right {
            right = nums.count - 1
            left += 1
        } else if left == nums.count - 1 {
            return
        }
    }
}
