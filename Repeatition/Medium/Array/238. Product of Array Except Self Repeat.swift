//
//  ProductOfExceptSelfRepeat.swift
//  LeetCode
//
//  Created by Bakai Ismaiilov on 19/7/24.
//

/// Given an integer array nums, return an array answer such that
/// answer[i] is equal to the product of all the elements of nums except nums[i].
///
/// The product of any prefix or suffix of nums is guaranteed to fit in a 32-bit integer.
///
/// You must write an algorithm that runs in O(n) time and without using the division operation.


/// Example 1:
/// Input: nums = [1,2,3,4]
/// Output: [24,12,8,6]
/// Example 2:
///
/// Input: nums = [-1,1,0,-3,3]
/// Output: [0,0,9,0,0]

func productExceptSelfRepeat(
    _ nums: [Int] = [1,2,3,4]
) -> [Int] {
    
    var output = [Int](
        repeating: 1,
        count: nums.count
    )
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
