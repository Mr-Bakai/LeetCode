//
//  13. Roman to Integer.swift
//  LeetCode
//
//  Created by Bakai Ismaiilov on 9/9/25.
//

/// Symbol       Value
/// I                  1
/// V                 5
/// X                 10
/// L                  50
/// C                 100
/// D                 500
/// M                 1000
///


/// I can be placed before V (5) and X (10) to make 4 and 9.
/// X can be placed before L (50) and C (100) to make 40 and 90.
/// C can be placed before D (500) and M (1000) to make 400 and 900.

func romanToInt(_ s: String = "MCMXCIV") -> Int {
    
    // IV = 4
    // IX = 9
    // XL = 40
    // XC = 90
    // CD = 400
    // CM = 900
    
    let hashMap: [String:Int] =
    [
        "I"  : 1,
        "V"  : 5,
        "X"  : 10,
        "L"  : 50,
        "C"  : 100,
        "D"  : 500,
        "M"  : 1000,
        
        "IV" : 4,
        "IX" : 9,
        
        "XL" : 40,
        "XC" : 90,
        
        "CD" : 400,
        "CM" : 900
    ]
    
    let strArr = Array(s)
    var sum = 0
    var i = 0
    
    while i < s.count {
        if let num = hashMap[String(strArr[i])] {
            if i + 1 < s.count, let d = hashMap[String(strArr[i]) + String(strArr[i + 1])] {
                sum += d
                i += 2
            } else {
                sum += num
                i += 1
            }
        }
    }
    return sum
}
