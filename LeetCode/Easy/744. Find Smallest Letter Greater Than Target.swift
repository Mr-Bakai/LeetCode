//
//  744. Find Smallest Letter Greater Than Target.swift
//  LeetCode
//
//  Created by Bakai Ismaiilov on 2/5/24.
//

/// Example 1:
///
/// Input: letters = ["c","f","j"], target = "a"
/// Output: "c"
/// Explanation: The smallest character that is lexicographically greater than 'a' in letters is 'c'.
/// Example 2:
///
/// Input: letters = ["c","f","j"], target = "c"
/// Output: "f"
/// Explanation: The smallest character that is lexicographically greater than 'c' in letters is 'f'.
/// Example 3:
///
/// Input: letters = ["x","x","y","y"], target = "z"
/// Output: "x"
/// Explanation: There are no characters in letters that is lexicographically greater than 'z' so we return letters[0].

func nextGreatestLetter(
    _ letters: [Character] = ["x","x","y","y"],
    _ target: Character = "z"
) -> Character {
    
    var left = 0
    var right = letters.count - 1
    
    while left < right {
        let middle = (left + right) / 2
        
        if letters[middle] > target {
            right = middle
        } else {
            left = middle + 1
        }
    }
    
    return letters[left] <= target ? letters[0] : letters[left]
}
