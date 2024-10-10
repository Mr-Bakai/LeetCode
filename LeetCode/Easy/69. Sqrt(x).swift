//
//  69. Sqrt(x).swift
//  LeetCode
//
//  Created by Bakai Ismaiilov on 7/4/24.
//

func mySqrt(_ x: Int) -> Int {
    if x < 2 { return x }
    
    var left = 2
    var right = x/2
    
    while left <= right {
        let pivot = left + (right - left) / 2
        let num = pivot * pivot
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
