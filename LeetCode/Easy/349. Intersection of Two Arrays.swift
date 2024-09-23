//
//  349. Intersection of Two Arrays.swift
//  LeetCode
//
//  Created by Bakai Ismaiilov on 10/3/24.
//

// MARK: - Build in Set approach
func intersection(
    _ nums1: [Int],
    _ nums2: [Int]
) -> [Int] {
    let set1 = Set(nums1)
    let set2 = Set(nums2)
    
    let intersections = set1.intersection(set2)
    
    return Array(intersections)
}

// MARK: - Two Pointer Approach
func intersectionTwoPointerApproach(
    _ nums1: [Int],
    _ nums2: [Int]
) -> [Int] {
    
    let nums1 = nums1.sorted()
    let nums2 = nums2.sorted()
    
    var result = [Int]()
    
    let n = nums1.count
    let m = nums2.count
    
    var p1 = 0
    var p2 = 0
    var intersectionSet = Set<Int>()
    
    while p1 < n && p2 < m {
        if nums1[p1] == nums2[p2] {
            intersectionSet.insert(nums1[p1])
            p1 += 1
            p2 += 1
        } else if nums1[p1] < nums2[p2] {
            p1 += 1
        } else {
            p2 += 1
        }
    }
    
    for item in intersectionSet {
        result.append(item)
    }
    
    return result
}
