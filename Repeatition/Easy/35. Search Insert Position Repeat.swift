//
//  35. Search Insert Position Repeat.swift
//  LeetCode
//
//  Created by Bakai Ismaiilov on 3/8/24.
//


/// Given a sorted array of distinct integers and a target value, return the index if the target is found. 
/// If not, return the index where it would be if it were inserted in order.
///
/// You must write an algorithm with O(log n) runtime complexity.
///
/// Example 1:
/// Input: nums = [1,3,5,6], target = 5
/// Output: 2
///
/// Example 2:
/// Input: nums = [1,3,5,6], target = 2
/// Output: 1
///
/// Example 3:
/// Input: nums = [1,3,5,6], target = 7
/// Output: 4
///
///
func searchInsertRepeat(
    _ nums: [Int] = [1,3,5,6],
    _ target: Int = 0
) -> Int {
    
    var left = 0
    var right = nums.count - 1
    
    while left <= right {
        let mid = left + ((right - left) / 2)
        
        if nums[mid] == target {
            return mid
        } else if nums[mid] < target {
            left = mid + 1
        } else {
            right = mid - 1
        }
    }
    
    return left
}
