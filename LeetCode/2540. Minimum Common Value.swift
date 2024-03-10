//
//  2540. Minimum Common Value.swift
//  LeetCode
//
//  Created by Bakai Ismaiilov on 10/3/24.
//

import Foundation

// variant 1
func getCommon(
    _ nums1: [Int],
    _ nums2: [Int]
) -> Int {
    
    let numsSet1 = Set(nums1)
    let numsSet2 = Set(nums2)
    
    let intersects = numsSet1.intersection(numsSet2)
    guard !intersects.isEmpty else { return -1 }
    return intersects.min() ?? -1
}

// variant 2
func getCommonVariant2(
    _ nums1: [Int],
    _ nums2: [Int]
) -> Int {
    
    var left = 0
    var right = 0
    
    while left < nums1.count && right < nums2.count {
        if nums1[left] == nums2[right] {
            return nums1[left]
        }
        
        if nums1[left] < nums2[right] {
            left += 1
        } else {
            right += 1
        }
    }
    return -1
}
