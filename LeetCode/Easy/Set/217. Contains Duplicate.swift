//
//  217. Contains Duplicate.swift
//  LeetCode
//
//  Created by Bakai Ismaiilov on 5/5/24.
//

func containsDuplicate(
    _ nums: [Int] = [1,2,3,1]
) -> Bool {
    var set = Set<Int>()
    
    for i in nums {
        if set.contains(i) {
            return true
        } else {
            set.insert(i)
        }
    }
    
    return false
}
