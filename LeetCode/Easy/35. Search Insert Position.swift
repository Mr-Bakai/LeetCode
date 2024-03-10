//
//  35. Search Insert Position.swift
//  LeetCode
//
//  Created by Bakai Ismaiilov on 10/3/24.
//

func searchInsert(
    _ nums: [Int],
    _ target: Int
) -> Int {
    
    var low = 0
    var high = (nums.count - 1)
    
    while low <= high {
        let mid = (high+low) / 2
        let guess = nums[mid]
        
        if guess == target {
            return mid
        } else if (guess > target) {
            high = mid - 1
        } else {
            low = mid + 1
        }
    }
    
    return low
}


//                             👇target
// [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18]
//  👆🏻low           👆🏻guess                   👆🏻high

