//
//  702. Search in a Sorted Array of Unknown Size.swift
//  LeetCode
//
//  Created by Bakai Ismaiilov on 17/4/24.
//

import Foundation

func searchInSortedArray(
    _ reader: ArrayReader,
    _ target: Int
) -> Int {
    if reader.get(0) == target {
        return 0
    }
    
    var left = 0
    var right = 1
    
    while reader.get(right) < target {
        print(right)
        left = right
        right <<= 1
    }
    
    while left <= right {
        let mid = left + ((right - left) >> 1)
        let guess = reader.get(mid)
        
        if guess == target {
            return mid
        }
        if guess > target {
            right = mid - 1
        } else {
            left = mid + 1
        }
    }
    
    return -1
}

public class ArrayReader {
    func get(_ index: Int) -> Int {
        return 0
    }
}
