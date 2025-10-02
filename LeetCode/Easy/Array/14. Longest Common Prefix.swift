//
//  14. Longest Common Prefix.swift
//  LeetCode
//
//  Created by Bakai Ismaiilov on 11/9/25.
//

/// Write a function to find the longest common prefix string amongst an array of strings.
/// If there is no common prefix, return an empty string "".
///
///
///
/// Example 1:
///
/// Input: strs = ["flower","flow","flight"]
/// Output: "fl"
/// Example 2:
///
/// Input: strs = ["dog","racecar","car"]
/// Output: ""
/// Explanation: There is no common prefix among the input strings.
///
func longestCommonPrefix(
    _ strs: [String] = [
        "flower",
        "flow",
        "flight"
    ]
) -> String {
    guard !strs.isEmpty else { return "" }
    
    // Convert each word to [Character] for O(1) integer indexing
    // words == [
    //   ["f","l","o","w","e","r"],
    //   ["f","l","o","w"],
    //   ["f","l","i","g","h","t"]
    // ]
    let words: [[Character]] = strs.map(Array.init)
    
    // f l o w e r
    // 0 1 2 3 4 5
    let base = words[0]
    
    // Walk each position i of the base
    for i in 0..<base.count {
        let ch = base[i]
        
        for word in words.dropFirst() {
            if i == word.count || word[i] != ch {
                return String(base[0..<i])
            }
        }
    }
    
    return String(base)
}
