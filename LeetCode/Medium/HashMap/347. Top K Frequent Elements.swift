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
    _ nums: [Int] = [1,2],
    _ k: Int = 2
) -> [Int] {
    if nums.count == 1 { return nums }
    var left = 0
    var right = nums.count
    
    var counter = [Int:Int]()
    
    while left < right {
        counter[nums[left], default: 0] += 1
        left += 1
    }
    
    return counter.sorted { a, b in
        return a.value > b.value
    }
    .prefix(k)
    .map{$0.key}
}
