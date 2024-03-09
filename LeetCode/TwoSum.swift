//
//  TwoSum.swift
//  LeetCode
//
//  Created by Bakai Ismaiilov on 9/3/24.
//

import Foundation

// [2,7,11,15], target = 9
func twoSum(
    _ nums: [Int],
    _ target: Int
) -> [Int] {
    let target = target
    
    var firstIndex = 0
    var secondIndex = 0
    
outerLoop: for (index1, item1) in nums.enumerated() {
    for (index2, item2) in nums.enumerated() {
        if  (index1 != index2) && ((item1 + item2) == target) {
            firstIndex = index1
            secondIndex = index2
            
            //                print(firstIndex)
            //                print(secondIndex)
            break outerLoop
        }
    }
}
    return [firstIndex, secondIndex]
}

// Input: nums = [2,7,11,15], target = 9
// Output: [0,1]
// Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].


/// So, if we fix one of the numbers, say `x`,
/// we have to scan the entire array to find the next number `y which is value - x where value is the input parameter.`
/// Can we change our array somehow so that this search becomes faster?

// [1,2,5], target = 6

func twoSumSecond(
    _ nums: [Int],
    _ target: Int
) -> [Int] {
    
    var dict = [Int: Int]()
    
    for (index, value) in nums.enumerated() { // 0:1, 1:2, 2:5
        if let addent = dict[value] { // 1 == nil, 2 == nil, 5 == true
            return [addent, index]
        } else {
            dict[target - value] = index // 6-1 = 5 -> 5:0, 6-2 = 4 -> 4:1
        }
    }
    return []
}

// dic[5] -> 0
// dic[4] -> 1
