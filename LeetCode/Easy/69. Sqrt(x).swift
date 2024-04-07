//
//  69. Sqrt(x).swift
//  LeetCode
//
//  Created by Bakai Ismaiilov on 7/4/24.
//

import Foundation

func mySqrt(_ x: Int) -> Int {
    if x < 2 { return x }
    
    var left = 2
    var right = x/2
    
    while left <= right {
        var pivot = left + (right - left) / 2
        var num = pivot * pivot
        if num > x {
            right = pivot - 1
        } else if num < x {
            left = pivot + 1
        } else {
            return pivot
        }
    }
    return right
}
