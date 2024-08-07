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


/// bear it on your mind, `Alphanumeric`

func isPalindrome(
    _ s: String = "0P"
) -> Bool {
    
    let s = s.filter { $0.isLetter }.lowercased()
    
    var left = 0
    var right = s.count - 1
    
    if s.isEmpty {
        return true
    } else if s.count == 1 {
        return false
    }
    
    while left <= right {
        if char(at: left, in: s) == char(at: right, in: s) {
            left += 1
            right -= 1
        } else {
            return false
        }
    }
    return true
}

private func char(
    at index: Int,
    in string: String
) -> Character? {
    guard index >= 0, index < string.count else { return nil}
    let stringIndex = string.index(string.startIndex, offsetBy: index)
    return string[stringIndex]
}
