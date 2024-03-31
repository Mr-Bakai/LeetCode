//
//  713. Subarray Product Less Than K.swift
//  LeetCode
//
//  Created by Bakai Ismaiilov on 27/3/24.
//

import Foundation

//Input: nums = [10,5,2,6], k = 100
//Output: 8
//Explanation: The 8 subarrays that have product less than 100 are:
//[10], [5], [2], [6], [10, 5], [5, 2], [2, 6], [5, 2, 6]
//Note that [10, 5, 2] is not included as the product of 100 is not strictly less than k.

func numSubarrayProductLessThanK(
    _ nums: [Int] = [10,5,2,6],
    _ k: Int = 100
) -> Int {
    guard k != 0 else { return 0 }
    
    var totalCount = 0
    let m = nums.count + 1
    let logK = log(Double(k))
    var logsPrefixSum = [Double](repeating: 0, count: m)
    
    // [10, 5, 2, 6]
    //   +  ↓
    // [ 0, 0, 0, 0, 0]
    
    
    // [10, 5, 2, 6]
    //      +  ↓
    // [ 0, 0, 0, 0, 0]
    
    
    // [10, 5, 2, 6]
    //         +  ↓
    // [ 0, 0, 0, 0, 0]
    
    
    // [10, 5, 2, 6]
    //            +  ↓
    // [ 0, 0, 0, 0, 0]
    
    
    for i in 0..<nums.count {
        logsPrefixSum[i + 1] = logsPrefixSum[i] + log(Double(nums[i]))
    }
    
    
    // [0.0, 2.302585092994046, 3.9120230054281464, 4.605170185988092, 6.396929655216146]
    
    for currIdx in 0..<m {
        var low = currIdx + 1
        var high = m
        
        while low < high {
            let mid = (high + low)/2
            
            if (logsPrefixSum[mid] < logsPrefixSum[currIdx] + logK - 1e-9) {
                low = mid + 1
            } else {
                high = mid
            }
        }
        
        totalCount += low - currIdx - 1
    }
//    print(logsPrefixSum)
    
    return totalCount
}
