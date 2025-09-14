//
//  26. Remove Duplicates from Sorted Array.swift
//  LeetCode
//
//  Created by Bakai Ismaiilov on 11/9/25.
//

// [1,1,2]
// [1, 1, 1, 2, 2, 2, 3, 4, 4, 4]

func removeDuplicates(_ nums: inout [Int]) -> Int {
    var index = 1
    for i in 1..<nums.count {
        if nums[i] != nums[i - 1] {
            nums[index] = nums[i]
            index += 1
        }
    }
    return index
}
