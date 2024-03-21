//
//  167. Two Sum II - Input Array Is Sorted.swift
//  LeetCode
//
//  Created by Bakai Ismaiilov on 21/3/24.
//

import Foundation

func twoSum2(
    _ numbers: [Int],
    _ target: Int
) -> [Int] {
    var left = 0
    var right = numbers.count - 1
    
    while left < numbers.count && right < numbers.count {
        if (numbers[left] + numbers[right]) == target {
            left += 1
            right += 1
            return [left, right]
        }
        
        if (numbers[left] + numbers[right]) < target {
            left += 1
        } else {
            right -= 1
        }
    }
    return [-1, -1]
}
