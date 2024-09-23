//
//  278. First Bad Version.swift
//  LeetCode
//
//  Created by Bakai Ismaiilov on 2/4/24.
//

// Input: n = 5, bad = 4
// Output: 4
// Explanation:
// call isBadVersion(3) -> false
// call isBadVersion(5) -> true
// call isBadVersion(4) -> true
// Then 4 is the first bad version.

// [1, 2, 3, 4, 5]
func firstBadVersion(_ n: Int) -> Int {
    guard n != 1 else { return n }
    var low = 1
    var high = n
    
    while low < high {
        let mid = (high + low) / 2
        if isBadVersion(mid) {
            high = mid
        } else {
            low = mid + 1
        }
    }
    return low
}

private func isBadVersion(_ target: Int) -> Bool {
    if target == 4 || target == 5 {
        return true
    } else {
        return false
    }
}
