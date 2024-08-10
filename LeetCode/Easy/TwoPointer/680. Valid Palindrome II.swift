//
//  680. Valid Palindrome II.swift
//  LeetCode
//
//  Created by Bakai Ismaiilov on 10/8/24.
//

/// Given a string s, return true if the s can be palindrome after deleting at most one character from it.
///
/// Example 1:
/// Input: s = "aba"
/// Output: true
///
/// Example 2:
/// Input: s = "abca"
/// Output: true
/// Explanation: You could delete the character 'c'.
///
///
/// Example 3:
/// Input: s = "abc"
/// Output: false
///
/// Constraints:
///
/// 1 <= s.length <= 105
/// s consists of lowercase English letters.
///
/// ** after deleting at most one character **

func validPalindrome(
    _ s: String = "aguokepatgbnvfqmgmlcupuufxoohdfpgjdmysgvhmvffcnqxjjxqncffvmhvgsymdjgpfdhooxfuupuculmgmqfvnbgtapekouga"
) -> Bool {
    
    var left = 0
    var right = s.count - 1
    var moved = false
    
    let s = Array(s)
    
    while left < right {
        if s[left] == s[right] {
            left += 1
            right -= 1
        } else if !moved,
                  (left + 1) <= right,
                  (s[left + 1] == s[right]) {
            left += 1
            moved = true
        } else if !moved,
                  (right - 1 >= left),
                  s[left] == s[right - 1] {
            right -= 1
            moved = true
        } else {
            return false
        }
    }
    
    return true
}
