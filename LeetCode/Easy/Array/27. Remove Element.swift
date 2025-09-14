//
//  27. Remove Element.swift
//  LeetCode
//
//  Created by Bakai Ismaiilov on 14/9/25.
//

//    Input nums = [3,2,2,3], val = 3
//    Output k = 2, possible nums = [2,2,_,_]

func removeElement(
    _ nums: inout [Int],
    _ val: Int
) -> Int {
    
    guard !nums.isEmpty else { return nums.count }
    
    // ORIGINAL
    // [0,  1,  2,  2,  3,  0,  4,  2]
    
    // MODIFIED
    // [0,  1,  3,  0,  4,  2,  2,  2]
    
    var k = 0
    
    for i in nums {
        if val == i {
            k += 1
        }
    }
    
    for i in 0..<nums.count - 1 {
        if nums[i] == val {
            
            var left = i
            
            while nums[left] == nums[i], left < nums.count - 1 {
                left += 1
            }
            
            nums.swapAt(i, left)
        }
    }
    return nums.count - k
}

/// Better solution
func removeElement2(
    _ nums: inout [Int],
    _ val: Int
) -> Int {
    var k = 0
    
    // ORIGINAL
    // [0,  1,  2,  2,  3,  0,  4,  2]

    for i in 0..<nums.count {
        if nums[i] != val {
            nums[k] = nums[i]
            k += 1
        }
    }

    return k
}
