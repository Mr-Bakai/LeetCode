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
    
    var i = 0
    var j = 0
    
    while i < nums1.count && j < nums2.count {
        if nums1[i] == nums2[j] {
            return nums1[i]
        }
        
        if nums1[i] < nums2[j] {
            i += 1
        } else {
            j += 1
        }
    }
    return -1
}
