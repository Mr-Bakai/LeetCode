//
//  50. Pow(x, n).swift
//  LeetCode
//
//  Created by Bakai Ismaiilov on 18/4/24.
//

import Foundation

/// Example 1:
///
/// Input: x = 2.00000, n = 10
/// Output: 1024.00000

func myPow(
    _ x: Double,
    _ n: Int
) -> Double {
    return binaryExp(x, n)
}

/// https://cp-algorithms.com/algebra/binary-exp.html
/// binary exponention explanation
func binaryExp(
    _ x: Double,
    _ n: Int
) -> Double {
    
    if n == 0 { return 1 }
    
    // Handle case where n < 0.
    var tempN = n
    var tempX = x
    if n < 0 {
        tempN = -n
        tempX = 1.0 / x
    }
    
    // Perform Binary Exponentiation.
    var result = 1.0
    
    while tempN != 0 {
        // If 'tempN' is odd we multiply result with 'tempX' and reduce 'tempN' by '1'.
        if tempN % 2 == 1 {
            result *= tempX
            tempN -= 1
        }
        // We square 'tempX' and reduce 'tempN' by half, x^n => (x^2)^(n/2).
        tempX *= tempX
        tempN /= 2
    }
    return result
}
