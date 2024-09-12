//
//  17. Letter Combinations of a Phone Number.swift
//  LeetCode
//
//  Created by Bakai Ismaiilov on 6/9/24.
//

/// Given a string containing digits from 2-9 inclusive, return all possible letter
/// combinations that the number could represent. Return the answer in any order.
///
/// A mapping of digits to letters (just like on the telephone buttons) is given below.
/// Note that 1 does not map to any letters.
///
///
/// Example 1:
/// Input: digits = "23"
/// Output: ["ad","ae","af","bd","be","bf","cd","ce","cf"]
///
/// Example 2:
/// Input: digits = ""
/// Output: []
///
/// Example 3:
/// Input: digits = "2"
/// Output: ["a","b","c"]
///
/// Constraints:
///
/// 0 <= digits.length <= 4
/// digits[i] is a digit in the range ['2', '9'].

func letterCombinations(
    _ digits: String = "23"
) -> [String] {
    
    let digits = Array(digits)
    var res: [String] = []
    let digitToChar: [Character : String] =
    [
        "2": "abc",
        "3": "def",
        "4": "ghi",
        "5": "jkl",
        "6": "mno",
        "7": "pqrs",
        "8": "tuv",
        "9": "wxyz"
    ]
    
    func backtrack(
        _ i: Int,
        _ currentString: String
    ) {
        if currentString.count == digits.count {
            res.append(currentString)
            return
        }
        
        if let letters = digitToChar[digits[i]] {
            for letter in letters {
                backtrack(i + 1, currentString + String(letter))
            }
        }
    }
    
    backtrack(0, "")
    return res
}
