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
    var dict = [[Int]: [String]]()

    let aAsciiValue = Character("a").asciiValue!
    
    for word in strs {
        
        var asciiCount = [Int](repeating: 0, count: 26)
        
        print("word: \(word)")
        
        for char in word.utf8 {
            print("char ascii \(): \(char)")
            
            print("\(char) - \(aAsciiValue) +1: = \(Int(char - aAsciiValue))")
            
            
            asciiCount[Int(char - aAsciiValue)] += 1
            
            print("asciiCount: \(asciiCount)")
        }

        dict[asciiCount, default: []].append(word)
    }
    return Array(dict.values)
}
