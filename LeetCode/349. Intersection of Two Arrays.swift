//
//  349. Intersection of Two Arrays.swift
//  LeetCode
//
//  Created by Bakai Ismaiilov on 10/3/24.
//

import Foundation

func intersection(
    _ nums1: [Int],
    _ nums2: [Int]
) -> [Int] {
    let set1 = Set(nums1)
    let set2 = Set(nums2)
    
    let intersections = set1.intersection(set2)
    
    return Array(intersections)
}
