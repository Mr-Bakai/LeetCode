//
//  20. Valid Parentheses.swift
//  LeetCode
//
//  Created by Bakai Ismaiilov on 28/8/24.
//

///
/// Given a string s containing just the
/// characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.
///
/// An input string is valid if:
///
/// Open brackets must be closed by the same type of brackets.
/// Open brackets must be closed in the correct order.
/// Every close bracket has a corresponding open bracket of the same type.
///
///
/// Example 1:
/// Input: s = "()"
/// Output: true
///
/// Example 2:
/// Input: s = "()[]{}"
/// Output: true
///
/// Example 3:
/// Input: s = "(]"
/// Output: false
///
/// Example 4:
/// Input: s = "([])"
/// Output: true
///
///
/// Constraints:
/// 1 <= s.length <= 104
/// s consists of parentheses only '()[]{}'.
///
func isValidParentheses(
    _ s: String = "([])"
) -> Bool {
    
    /// Stack to keep track of opening brackets
    var stack: [Character] = []
    
    /// Dictionary to map closing brackets to their corresponding opening brackets
    let closeToOpen: [Character: Character] = [")": "(", "]": "[", "}": "{"]
    
    for c in s {
        
        /// Check if the character is a closing bracket
        if let openBracket = closeToOpen[c] {
            
            /// Check if the stack is not empty and the top of the
            /// stack matches the corresponding opening bracket
            if !stack.isEmpty && stack.last == openBracket {
                stack.removeLast()
            } else {
                return false
            }
        } else {
            stack.append(c)
        }
    }
    
    return stack.isEmpty
}
