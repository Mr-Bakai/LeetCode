//
//  503. Next Greater Element II.swift
//  LeetCode
//
//  Created by Bakai Ismaiilov on 21/9/24.
//

/*
 
 Given a circular integer array nums (i.e., the next element of
 nums[nums.length - 1] is nums[0]),
 return the next greater number for every element in nums.
 
 The next greater number of a number x is the first greater number
 to its traversing-order next in the array, which means you could
 search circularly to find its next greater number.
 If it doesn't exist, return -1 for this number.
 
 
 Example 1:
 Input: nums = [1,2,1]
 Output: [2,-1,2]
 
 Explanation: The first 1's next greater number is 2;
 The number 2 can't find next greater number.
 The second 1's next greater number needs to search circularly,
 which is also 2.
 
 Example 2:
 Input: nums = [1,2,3,4,3]
 Output: [2,3,4,-1,4]
 
 
 Constraints:
 1 <= nums.length <= 104
 -109 <= nums[i] <= 109
 
 */

func nextGreaterElements(
    _ nums: [Int] = [1,2,3,4,3]
) -> [Int] {
    
    var stack = [Int]()
    var res = Array(
        repeating: -1,
        count: nums.count
    )
    
    /// Loop twice to simulate the circular nature of the array
    for _ in 0..<2 {
        for (i, e) in nums.enumerated() {
            
            /// While stack is not empty and current element is
            /// greater than the element at the top of the stack
            while !stack.isEmpty && e > nums[stack.last!] {
                
                /// Update the result array with the next greater element
                res[stack.removeLast()] = e
            }
            
            /// Push the index of the current element onto the stack
            stack.append(i)
        }
    }
    
    return res
}
