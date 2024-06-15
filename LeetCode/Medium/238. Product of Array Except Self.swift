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

func productExceptSelf(
    _ nums: [Int] = [1,2,3,4]
) -> [Int] {
    
    var result = [Int]()
    
    var prefixes = [Int]()
    
    
    // [1,2,3,4]
    for i in 0..<nums.count {
        if prefixes.isEmpty {
            prefixes.append(nums[i])
        } else if i - 1 >= 0 {
            prefixes.append(prefixes[i-1] * nums[i])
        }
    }
    print("prefixes: \(prefixes)")
    
    
    var left = 0
    var right = nums.count - 1
    var postfixes = [Int](repeating: 1, count: nums.count)
    
    while left < right {
        if right == nums.count - 1 {
            postfixes.insert(nums[right], at: right)
        } else if right >= 0 {
            postfixes.insert(postfixes[right+1] * nums[right], at: right)
        }
        right = right - 1
    }
    
    print("postfixes: \(postfixes)")
    return result
}

/// What is the problem here ?
/// The problem is that, if you asign `productSum` to `0` then after multiplication it gets 0
/// But if you asign `productSum` to `1` then when you get `0` at Array you will have `1`
/// cos it does not enter the condition and it will return default value of `productSum`
