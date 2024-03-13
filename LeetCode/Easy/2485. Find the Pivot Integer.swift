//
//  2485. Find the Pivot Integer.swift
//  LeetCode
//
//  Created by Bakai Ismaiilov on 13/3/24.
//

import Foundation

func pivotInteger(_ n: Int) -> Int {
    var left = 1
    var right = n
    
    let totalSum = n * (n + 1) / 2
    
    while left < right {
        let mid = (left + right) / 2
        
        if mid * mid - totalSum < 0 {
            left = mid + 1
        } else {
            right = mid
        }
    }
    
    if left * left - totalSum == 0 {
        return left
    } else {
        return -1
    }
}
