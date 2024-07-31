//
//  2540. Minimum Common Value.swift
//  LeetCode
//
//  Created by Bakai Ismaiilov on 10/3/24.
//

/// Given two integer arrays nums1 and nums2, sorted in non-decreasing order, return the minimum integer common to both arrays.
/// If  there is no common integer amongst nums1 and nums2, return -1.
///
/// Note that an integer is said to be common to nums1 and nums2 if both arrays have at least one occurrence of that integer.
///
///
///
/// Example 1:
///
/// Input: nums1 = [1,2,3], nums2 = [2,4]
/// Output: 2
/// Explanation: The smallest element common to both arrays is 2, so we return 2.
/// Example 2:
///
/// Input: nums1 = [1,2,3,6], nums2 = [2,3,4,5]
/// Output: 2
/// Explanation: There are two common elements in the array 2 and 3 out of which 2 is the smallest, so 2 is returned.

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
