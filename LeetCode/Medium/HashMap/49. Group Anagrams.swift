//
//  49. Group Anagrams.swift
//  LeetCode
//
//  Created by Bakai Ismaiilov on 7/5/24.
//

import Foundation

// Example 1:
//
// Input: strs = ["eat","tea","tan","ate","nat","bat"]
// Output: [["bat"],["nat","tan"],["ate","eat","tea"]]

func groupAnagrams(
    _ strs: [String] = ["eat","tea","tan","ate","nat","bat"]
) -> [[String]] {
    
    var left = 0
    var leftPlus = left + 1
    var right = strs.count
    
    var res = [""]
    
    while left < right {
        var tempArr = [""]
        
        if determineAnagram(strs[left], strs[leftPlus]) {
            tempArr.append(strs[leftPlus])
        }
        
        leftPlus += 1
        
        print("left: \(left), leftPlus: \(leftPlus), right: \(right)")
        
        if leftPlus == right - 1 {
            left += 1
            leftPlus = left
            
            if tempArr.count > 0 {
                tempArr.append(strs[left])
            }
            
            res.append(contentsOf: tempArr)
        }
    }
    
    return [[""]]
}

private func determineAnagram(
    _ s: String,
    _ t: String
) -> Bool {
    
    var dictS = [Character:Int]()
    var dictT = [Character:Int]()
    
    for i in s {
        dictS[i, default: 0] += 1
    }
    
    for i in t {
        dictT[i, default: 0] += 1
    }
    
    return dictS == dictT
}
