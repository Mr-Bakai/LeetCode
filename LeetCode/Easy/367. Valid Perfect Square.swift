//
//  367. Valid Perfect Square.swift
//  LeetCode
//
//  Created by Bakai Ismaiilov on 2/5/24.
//

import Foundation

func isPerfectSquare(
    _ num: Int = 2
) -> Bool {
    
    var left = 0
    var right = num
    
    while left <= right {
        let mid = left + ((right - left) / 2)
        
        if (mid * mid == num) {
            return true
        } else if (mid * mid > num) {
            right = mid - 1
        } else {
            left = mid + 1
        }
    }
    
    return false
}
