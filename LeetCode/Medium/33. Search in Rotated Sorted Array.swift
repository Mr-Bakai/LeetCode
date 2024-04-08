//
//  33. Search in Rotated Sorted Array.swift
//  LeetCode
//
//  Created by Bakai Ismaiilov on 7/4/24.
//

import Foundation

func searchInRotaitedSortedArray(
    _ nums: [Int] = [3,1],
    _ target: Int = 3
) -> Int {
    
    var left = 0
    var right = nums.count - 1
    
    while left <= right {
        let mid = (left + right) / 2
        if nums[mid] > nums[nums.count - 1] {
            left = mid + 1
        } else {
            right = mid - 1
        }
    }
    
    func binarySearch(
        _ leftBoundary: Int,
        _ rightBoundary: Int,
        _ target: Int
    ) -> Int {
        var left = leftBoundary
        var right = rightBoundary
        while left <= right {
            let mid = (left + right) / 2
            if nums[mid] == target {
                return mid
            } else if nums[mid] > target {
                right = mid - 1
            } else {
                left = mid + 1
            }
        }
        return -1
    }
    
    let answer = binarySearch(0, left - 1, target)
    if answer != -1 { return answer }
    
    return binarySearch(left, nums.count - 1, target)
}
