//
//  374. Guess Number Higher or Lower.swift
//  LeetCode
//
//  Created by Bakai Ismaiilov on 7/4/24.
//

import Foundation

func guessNumber(_ n: Int) -> Int {
    if guess(n) == 0 { return n }
    var left = 0
    var right = n
    
    while left < right {
        let mid = (left + right) / 2
        
        if guess(mid) == 0 {
            return mid
        } else if guess(mid) == -1 {
            right = mid - 1
        } else {
            left = mid + 1
        }
    }
    return left
}

// mock function which is implemented in LeetCode
private func guess(_ guess: Int) -> Int {
    return -1
}
