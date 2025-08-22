//
//  347. Top K Frequent Elements.swift
//  LeetCode
//
//  Created by Bakai Ismaiilov on 12/6/24.
//

/// K is never going to be greater than input array
///
/// Given an integer array nums and an integer k, return the k most frequent elements. You may return the answer in any order.
/// Example 1:
///
/// Input: nums = [1,1,1,2,2,3], k = 2
/// Output: [1,2]
/// Example 2:
///
/// Input: nums = [1], k = 1
/// Output: [1]

func topKFrequent(
    _ nums: [Int] = [1, 1, 1, 2, 2, 3],
    _ k: Int = 2
) -> [Int] {
    
    topKFrequentBucketSort()
    
    if nums.count == 1 { return nums }
    var left = 0
    let right = nums.count
    
    var counter = [Int:Int]()
    
    while left < right {
        counter[nums[left], default: 0] += 1
        left += 1
    }
    
    return counter.sorted { a, b in
        return a.value > b.value
    }
    .prefix(k)
    .map{$0.key}
}

@discardableResult
func topKFrequentBucketSort(
    _ nums: [Int] = [1, 1, 1, 2, 2, 3],
    _ k: Int = 2
) -> [Int] {
    
    /// You can’t go straight from nums to freq because:
    /// You don’t know in advance how many times a number appears
    /// You need that frequency count first
    var count = [Int: Int]()
    
    /// We have a bucket array
    /// Because multiple numbers can have the same frequency.
    /// for instance 1,1,1 and 2,2,2 have the same frequency (3)
    /// so both stored at the same index [3] = [1,2]
    var freq = [[Int]](repeating: [], count: nums.count + 1)
    
    for num in nums {
        count[num, default: 0] += 1
    }
    
    for (num, cnt) in count {
        freq[cnt].append(num)
    }
    
    var res = [Int]()
    for i in stride(from: freq.count - 1, through: 1, by: -1) {
        for num in freq[i] {
            res.append(num)
            if res.count == k {
                return res
            }
        }
    }
    
    return res
}
