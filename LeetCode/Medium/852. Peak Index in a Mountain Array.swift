//
//  852. Peak Index in a Mountain Array.swift
//  LeetCode
//
//  Created by Bakai Ismaiilov on 3/4/24.
//

import Foundation

func peakIndexInMountainArray(
    _ arr: [Int] = [0, 1, 2, 3, 4, 3, 2, 1, 0]
) -> Int {
    
    var low = 0
    var high = arr.count - 1
    
    // [0, 1, 2, 3, 4, 3, 2, 1, 0]
    // low       mid            high
     
    while low < high {
        let mid = (low + high) / 2
        
        if arr[mid] < arr[mid + 1] {
            low = mid + 1
        } else {
            high = mid
        }
    }
    
    return low
}
