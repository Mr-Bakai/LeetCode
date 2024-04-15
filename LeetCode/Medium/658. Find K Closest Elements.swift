//
//  658. Find K Closest Elements.swift
//  LeetCode
//
//  Created by Bakai Ismaiilov on 15/4/24.
//

import Foundation

func findClosestElements(
    _ arr: [Int] = [1,2,3,4,5],
    _ k: Int = 4,
    _ x: Int = 3
) -> [Int] {
    
    var left = 0
    var right = arr.count - k
    
    while left < right {
        let mid = left + (right - left)/2
        
        if arr[mid] - x > arr[mid + k] - x {
            left = mid + 1
        } else {
            right = mid
        }
    }
    
    return Array(arr[left..<left + k])
}
