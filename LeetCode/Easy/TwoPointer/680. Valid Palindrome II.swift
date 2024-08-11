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
    
    let characters = Array(s)
    var left = 0
    var right = characters.count - 1
    
    while left < right {
        if characters[left] != characters[right] {
            return isPalindrome(characters, left + 1, right)
            || isPalindrome(characters, left, right - 1)
        }
        left += 1
        right -= 1
    }
    return true
}

private func isPalindrome(
    _ characters: [Character],
    _ left: Int,
    _ right: Int
) -> Bool {
    var left = left
    var right = right
    while left < right {
        if characters[left] != characters[right] { return false }
        left += 1
        right -= 1
    }
    return true
}
