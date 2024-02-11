//
//  main.swift
//  LeetCode
//
//  Created by Bakai Ismaiilov on 2/11/23.
//

import Foundation

print(twoSum([3,2,4], 6))

// [2,7,11,15], target = 9
func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    let target = target
    
    var firstIndex = 0
    var secondIndex = 0
    
    outerLoop: for (index1, item1) in nums.enumerated() {
        for (index2, item2) in nums.enumerated() {
            if  (index1 != index2) && ((item1 + item2) == target) {
                firstIndex = index1
                secondIndex = index2
                
                print(firstIndex)
                print(secondIndex)
                break outerLoop
            }
        }
    }
    return [firstIndex, secondIndex]
}
