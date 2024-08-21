//
//  242. Valid Anagram.swift
//  LeetCode
//
//  Created by Bakai Ismaiilov on 7/5/24.
//

func isAnagram(
    _ s: String = "aacc",
    _ t: String = "ccac"
) -> Bool {
    guard s.count == t.count else { return false }
    
    var dictS = [Character:Int]()
    var dictT = [Character:Int]()
    
    for i in s {
        dictS[i, default: 0] += 1
    }
    
    for i in t {
        dictT[i, default: 0] += 1
    }
    
    return dictS == dictT
}
