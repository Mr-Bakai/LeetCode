//
//  49. Group Anagrams.swift
//  LeetCode
//
//  Created by Bakai Ismaiilov on 7/5/24.
//

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
        for char in word.utf8 {
            asciiCount[Int(char - aAsciiValue)] += 1
        }
        
        dict[asciiCount, default: []].append(word)
    }
    return Array(dict.values)
}
