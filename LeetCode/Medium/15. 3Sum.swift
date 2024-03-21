//
//  15. 3Sum.swift
//  LeetCode
//
//  Created by Bakai Ismaiilov on 21/3/24.
//

import Foundation

/// Input: nums = [-1,0,1,2,-1,-4]
/// Output: [[-1,-1,2],[-1,0,1]]
/// Explanation:
/// nums[0] + nums[1] + nums[2] = (-1) + 0 + 1 = 0.
/// nums[1] + nums[2] + nums[4] = 0 + 1 + (-1) = 0.
/// nums[0] + nums[3] + nums[4] = (-1) + 2 + (-1) = 0.
/// The distinct triplets are [-1,0,1] and [-1,-1,2].
/// Notice that the order of the output and the order of the triplets does not matter.

/// sorted nums: [-4, -1, -1, 0, 1, 2]

func threeSum(_ nums: [Int]) -> [[Int]] {
    var res = [[Int]]()
    var nums = nums.sorted()
    
    for i in 0..<nums.count {
        if nums[i] > 0 {
            break
        }
        if i == 0 || nums[i - 1] != nums[i] {
            twoSumII(nums, i, &res)
        }
    }
    
    return res
}

private func twoSumII(
    _ nums: [Int],
    _ i: Int,
    _ res: inout [[Int]]
) {
    var lo = i + 1
    var hi = nums.count - 1
    
    while lo < hi {
        let sum = nums[i] + nums[lo] + nums[hi]
        if sum < 0 {
            lo += 1
        } else if sum > 0 {
            hi -= 1
        } else {
            res.append([nums[i], nums[lo], nums[hi]])
            lo += 1
            hi -= 1
            while lo < hi && nums[lo] == nums[lo - 1] {
                lo += 1
            }
        }
    }
}
