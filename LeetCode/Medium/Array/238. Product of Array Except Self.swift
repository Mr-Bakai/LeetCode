//
//  238. Product of Array Except Self.swift
//  LeetCode
//
//  Created by Bakai Ismaiilov on 14/6/24.
//

/// Given an integer array nums, return an array answer such that answer[i] is equal to the product of all the elements of nums except nums[i].
///
/// The product of any prefix or suffix of nums is guaranteed to fit in a 32-bit integer.
///
/// You must write an algorithm that runs in O(n) time and without using the division operation.
///
///
///
/// Example 1:
///
/// Input: nums = [1,2,3,4]
/// Output: [24,12,8,6]
/// Example 2:
///
/// Input: nums = [-1,1,0,-3,3]
/// Output: [0,0,9,0,0]
///
///
/// Constraints:
///
/// 2 <= nums.length <= 105
/// -30 <= nums[i] <= 30
/// The product of any prefix or suffix of nums is guaranteed to fit in a 32-bit integer.


// Input: nums = [1,2,3,4]
// Output: [24,12,8,6]

// MARK: - Bruit force
func productExceptSelf1(
    nums: [Int] = [1,2,3,4]
) -> [Int] {
    
    var result = [Int]()
    var prefixes = [Int]()
    
    for i in 0..<nums.count {
        if prefixes.isEmpty {
            prefixes.append(nums[i])
        } else if i - 1 >= 0 {
            prefixes.append(prefixes[i-1] * nums[i])
        }
    }
    
    let left = 0
    var right = nums.count - 1
    var postfixes = [Int](repeating: 0, count: nums.count)
    
    while left <= right {
        if right == nums.count - 1 {
            postfixes[right] += nums[right]
        } else if right >= 0 {
            postfixes[right] += (postfixes[right+1] * nums[right])
        }
        right = right - 1
    }
    
    for i in 0..<nums.count {
        if i > 0 && i+1 <= postfixes.count-1 {
            result.append(prefixes[i-1] * postfixes[i+1])
        } else if i+1 <= postfixes.count-1 {
            result.append(postfixes[i+1])
        } else {
            result.append(prefixes[i-1])
        }
    }
    
    return result
}

// MARK: - Second best
func productExceptSelf2(
    _ nums: [Int] = [1,2,3,4]
) -> [Int] {
    
    var output = [Int]()
    var prefix = 1
    
    for i in 0..<nums.count {
        if i == 0 {
            output.append(prefix)
        } else if i-1 >= 0 {
            output.append(prefix * nums[i-1])
            prefix *= nums[i-1]
        }
    }
    
    let left = 0
    var right = nums.count - 1
    var postFix = 1
    
    while left <= right {
        if right == nums.count - 1 {
            postFix *= nums[right]
        } else if right-1 >= 0 {
            output[right] = output[right] * postFix
            postFix = nums[right] * postFix
        } else {
            output[right] = output[right] * postFix
        }
        right = right - 1
    }
    
    return output
}

// MARK: - Optimal solution with follow up
func productExceptSelf(
    _ nums: [Int] = [1,2,3,4]
) -> [Int] {
    
    var output = [Int](repeating: 1, count: nums.count)
    var prefix = 1
    
    for i in 0..<nums.count {
        output[i] = prefix
        prefix *= nums[i]
    }
    
    var postfix = 1
    for i in (0..<nums.count).reversed() {
        output[i] *= postfix
        postfix *= nums[i]
    }
    
    return output
}
