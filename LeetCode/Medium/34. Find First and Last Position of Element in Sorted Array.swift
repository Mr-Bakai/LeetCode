//
//  34. Find First and Last Position of Element in Sorted Array.swift
//  LeetCode
//
//  Created by Bakai Ismaiilov on 2/4/24.
//

import Foundation

func searchRange(
    _ nums: [Int] = [2, 7, 7, 7, 8, 10],
    _ target: Int = 7
) -> [Int] {
    
    let lowerBound = findBound(nums, target, true)
    
    if (lowerBound == -1) { return [-1, -1]}
    
    let upperBound = findBound(nums, target, false)
    
    return [lowerBound, upperBound]
}

private func findBound(
    _ nums: [Int],
    _ target: Int,
    _ isFirst: Bool
) -> Int {
    
    var low = 0
    var high = nums.count - 1
    
    while low <= high {
        let mid = (low + high) / 2
        
        if nums[mid] == target {
            if isFirst {
                
                /// Note that `nums[mid] == target` is passed previously
                /// if  `mid - 1` is smaller than `target` then `mid` is the `first` occurance
                /// so we return `mid`
                if mid == low || nums[mid - 1] < target {
                    return mid
                }
                
                /// Note that `nums[mid] == target` is passed previously
                /// if above condition is not met,
                /// we cut the right half of the array, in order to search from left half of the array
                high = mid - 1
            } else {
                
                /// Note that `nums[mid] == target` is passed previously
                /// if  `mid + 1` is greater than `target` then `mid` is the `last` occurance
                /// so we return `mid`
                if mid == high || nums[mid + 1] > target {
                    return mid
                }
                
                /// Note that `nums[mid] == target` is passed previously
                /// if above condition is not met,
                /// we cut the left half of the array, in order to search from right half of the array
                low = mid + 1
            }
        } else if nums[mid] > target {
            high = mid - 1
        } else {
            low = mid + 1
        }
    }
    return -1
}
