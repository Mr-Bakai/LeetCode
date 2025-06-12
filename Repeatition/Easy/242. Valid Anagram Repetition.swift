//
//  242. Valid Anagram Repetition.swift
//  LeetCode
//
//  Created by Bakai Ismaiilov on 12/6/25.
//

import Foundation

/// Given two strings s and t, return true if t is an anagram of s, and false otherwise.
///
/// Example 1:
/// Input: s = "anagram", t = "nagaram"
/// Output: true
///
/// Example 2:
/// Input: s = "rat", t = "car"
/// Output: false
///
///
/// Constraints:
/// 1 <= s.length, t.length <= 5 * 104
/// s and t consist of lowercase English letters.
///
func isAnagramRep(
    _ s: String = "aacc",
    _ t: String = "ccac"
) -> Bool {
    guard s.count == t.count else { return false }
    
    var dictS = [Character : Int]()
    var dictT = [Character : Int]()
    
    for i in s {
        dictS[i, default: 0] += 1
    }
    
    for i in t {
        dictT[i, default: 0] += 1
    }
    
    return dictS == dictT
}
