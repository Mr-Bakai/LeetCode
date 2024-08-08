//
//  125. Valid Palindrome.swift
//  LeetCode
//
//  Created by Bakai Ismaiilov on 7/8/24.
//

/// A phrase is a palindrome if, after converting all uppercase letters into lowercase letters and 
/// removing all non-alphanumeric characters, it reads the same forward and backward.
/// Alphanumeric characters include letters and numbers.
///
/// Given a string s, return true if it is a palindrome, or false otherwise.
///
/// Example 1:
///
/// Input: s = "A man, a plan, a canal: Panama"
/// Output: true
/// Explanation: "amanaplanacanalpanama" is a palindrome.
/// Example 2:
///
/// Input: s = "race a car"
/// Output: false
/// Explanation: "raceacar" is not a palindrome.
/// Example 3:
///
/// Input: s = " "
/// Output: true
/// Explanation: s is an empty string "" after removing non-alphanumeric characters.
/// Since an empty string reads the same forward and backward, it is a palindrome.
///
///
/// Constraints:
///
/// 1 <= s.length <= 2 * 105
/// s consists only of printable ASCII characters.

func isPalindrome(
    _ s: String = "A man, a plan, a canal: Pana ma"
) -> Bool {
    let s = s.filter { $0.isLetter || $0.isNumber }.lowercased()
    return s == String(s.reversed())
}

func isPalindromeBestOption(
    _ s: String = "A man, a plan, a canal: Panama"
) -> Bool {
    var l = 0
    var r = s.count - 1
    let chars = Array(s)
    
    while l < r {
        while l < r && !alphaNum(chars[l]) {
            l += 1
        }
        while r > l && !alphaNum(chars[r]) {
            r -= 1
        }
        if chars[l].lowercased() != chars[r].lowercased() {
            return false
        }
        l += 1
        r -= 1
    }
    return true
}

func alphaNum(
    _ c: Character
) -> Bool {
    (c >= "A" && c <= "Z") ||
    (c >= "a" && c <= "z") ||
    (c >= "0" && c <= "9")
}
