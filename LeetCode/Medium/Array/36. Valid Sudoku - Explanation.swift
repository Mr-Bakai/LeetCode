//
//  36. Valid Sudoku - Explanation.swift
//  LeetCode
//
//  Created by Bakai Ismaiilov on 7/8/25.
//

import Foundation

/// Determine if a 9 x 9 Sudoku board is valid. Only the filled cells need to be validated according to the following rules:
///
/// Each row must contain the digits 1-9 without repetition.
/// Each column must contain the digits 1-9 without repetition.
/// Each of the nine 3 x 3 sub-boxes of the grid must contain the digits 1-9 without repetition.
/// Note:
///
/// A Sudoku board (partially filled) could be valid but is not necessarily solvable.
/// Only the filled cells need to be validated according to the mentioned rules.
///
///Input: board =
///  [["5","3",".",".","7",".",".",".","."]
///  ,["6",".",".","1","9","5",".",".","."]
///  ,[".","9","8",".",".",".",".","6","."]
///  ,["8",".",".",".","6",".",".",".","3"]
///  ,["4",".",".","8",".","3",".",".","1"]
///  ,["7",".",".",".","2",".",".",".","6"]
///  ,[".","6",".",".",".",".","2","8","."]
///  ,[".",".",".","4","1","9",".",".","5"]
///  ,[".",".",".",".","8",".",".","7","9"]]
///  Output: true
///  Example 2:
///
///  Input: board =
///  [["8","3",".",".","7",".",".",".","."]
///  ,["6",".",".","1","9","5",".",".","."]
///  ,[".","9","8",".",".",".",".","6","."]
///  ,["8",".",".",".","6",".",".",".","3"]
///  ,["4",".",".","8",".","3",".",".","1"]
///  ,["7",".",".",".","2",".",".",".","6"]
///  ,[".","6",".",".",".",".","2","8","."]
///  ,[".",".",".","4","1","9",".",".","5"]
///  ,[".",".",".",".","8",".",".","7","9"]]
///  Output: false
///  Explanation: Same as Example 1, except with the 5 in the top left corner being modified to 8.
///  Since there are two 8's in the top left 3x3 sub-box, it is invalid.
///
func isValidSudoku(_ board: [[Character]]) -> Bool {
    var cols = [Int: Set<Character>]()
    var rows = [Int: Set<Character>]()
    var squares = [String: Set<Character>]()
    
    for r in 0..<9 {
        for c in 0..<9 {
            if board[r][c] == "." { continue }
            
            let squareKey = "\(r / 3),\(c / 3)"
            
            if rows[r]?.contains(board[r][c]) == true ||
                cols[c]?.contains(board[r][c]) == true ||
                squares[squareKey]?.contains(board[r][c]) == true {
                return false
            }
            
            rows[r, default: []].insert(board[r][c])
            cols[c, default: []].insert(board[r][c])
            squares[squareKey, default: []].insert(board[r][c])
        }
    }
    
    return true
}
