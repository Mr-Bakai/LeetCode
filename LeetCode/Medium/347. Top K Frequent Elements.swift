//
//  347. Top K Frequent Elements.swift
//  LeetCode
//
//  Created by Bakai Ismaiilov on 12/6/24.
//

import Foundation

/// K is never going to be greater than input array
///
/// Given an integer array nums and an integer k, return the k most frequent elements. You may return the answer in any order.
/// Example 1:
///
/// Input: nums = [1,1,1,2,2,3], k = 2
/// Output: [1,2]
/// Example 2:
///
/// Input: nums = [1], k = 1
/// Output: [1]

func topKFrequent(
    _ nums: [Int] = [1,1,2,2,3],
    _ k: Int = 2
) -> [Int] {
    
    var left = 0
    var right = nums.count - 1
    
    var counter = [Int:Int]()
    
    while left < right {
        counter[nums[left], default: 0] += 1
        left += 1
    }
    
    print("KEYS: \(counter.keys)")
    print("VALUES: \(counter.values)")
    
    print("Sorted one: \(counter.sorted(by: >))")
    
//    var keys = [Int]()
//    for i in counter.keys...k {
//        keys.append(i)
//    }
    
    return []
}

/// [1 ----> 2]
/// [2 ----> 2]
/// [3 ----> 0]
///
