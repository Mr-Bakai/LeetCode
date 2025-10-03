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

/// Returns the index of the first occurrence of `needle` in `haystack`,
/// or -1 if `needle` is not part of `haystack`.
///
/// Time: O(n * m) where n = haystack.count, m = needle.count
/// Space: O(n + m) due to array conversion for O(1) indexing
/// Returns the index of the first occurrence of `needle` in `haystack`,
/// or -1 if `needle` is not found.
/// This is the straightforward nested-loop solution (O(n * m)).

func strStr(
    _ haystack: String = "aaaa",
    _ needle: String = "aaa"
) -> Int {
    
    let H = Array(haystack)
    let N = Array(needle)
    
    if N.isEmpty { return 0 }
    if N.count > H.count { return -1 }
    
    // s a d b u t s a d
    // 0 1 2 3 4 5 6 7 8
    
    // s a d
    // 0 1 2
    
    for i in 0...(H.count - N.count) {
        var j = 0
        
        while j < N.count {
            if H[i + j] != N[j] {
                break
            }
            if j == N.count - 1 {
                return i
            }
            j += 1
        }
    }
    return -1
}
