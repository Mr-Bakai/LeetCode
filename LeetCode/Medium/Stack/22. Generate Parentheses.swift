//
//  22. Generate Parentheses.swift
//  LeetCode
//
//  Created by Bakai Ismaiilov on 31/8/24.
//

/// Given n pairs of parentheses, write a function
/// to generate all combinations of well-formed parentheses.
///
/// Example 1:
/// Input: n = 3
/// Output: ["((()))","(()())","(())()","()(())","()()()"]
///
///
/// Example 2:
/// Input: n = 1
/// Output: ["()"]
///
/// Constraints:
///
/// 1 <= n <= 8

func generateParenthesis(
    _ n: Int = 3
) -> [String] {
    
    var res = [String]()
    var stack = [String]()
    
    func backtrack(
        _ openN: Int,
        _ closedN: Int
    ) {
        if openN == closedN, openN == n {
            res.append(stack.joined())
            return
        }
        
        if openN < n {
            print("openN: \(openN), n: \(n)")
            stack.append("(")
            print("stack: \(stack)")
            backtrack(openN + 1, closedN)
            stack.removeLast()
            print("stack: \(stack)")
        }
        if closedN < openN {
            print("closedN: \(closedN), openN: \(openN)")
            stack.append(")")
            print("stack: \(stack)")
            backtrack(openN, closedN + 1)
            stack.removeLast()
            print("stack: \(stack)")
        }
    }
    
    backtrack(0, 0)
    return res
}
