//
//  28. Find the Index of the First Occurrence in a String.swift
//  LeetCode
//
//  Created by Bakai Ismaiilov on 15/9/25.
//

/// Given two strings needle and haystack,
/// return the index of the first occurrence of needle in haystack,
/// or -1 if needle is not part of haystack.
///
// Example 1:
// Input: haystack = "sadbutsad", needle = "sad"
// Output: 0
// Explanation: "sad" occurs at index 0 and 6.
// The first occurrence is at index 0, so we return 0.
///
// Example 2:
// Input: haystack = "leetcode", needle = "leeto"
// Output: -1
//
// Explanation: "leeto" did not occur in "leetcode", so we return -1.
///
func strStr(
    _ haystack: String = "ycacandoit",
    _ needle: String = "can"
) -> Int {
    
    let arrHaystack = Array(haystack)
    let arrNeedle = Array(needle)
    
    // s a d b u t s a d
    // 0 1 2 3 4 5 6 7 8
    
    // s a d
    // 0 1 2
    
    // l e e t c o d e
    // 0 1 2 3 4 5 6 7
    
    // l e e t o
    // 0 1 2 3 4
    
    
    // y o u c a n d o i t
    // 0 1 2 3 4 5 6 7 8 9
    
    // c a n
    // 0 1 2
    
    // y c a c a n d o i t
    // 0 1 2 3 4 5 6 7 8 9
    
    // c a n
    // 0 1 2
    
    var pointer = 0
    
    for i in 0..<arrHaystack.count {
        
    }
    return pointer
}
