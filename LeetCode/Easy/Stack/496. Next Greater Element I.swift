//
//  496. Next Greater Element I.swift
//  LeetCode
//
//  Created by Bakai Ismaiilov on 15/9/24.
//

/*
 The next greater element of some element x in an array is the first greater element that is to the right of x in the same array.

 You are given two distinct 0-indexed integer arrays nums1 and nums2, where nums1 is a subset of nums2.

 For each 0 <= i < nums1.length, find the index j such that nums1[i] == nums2[j] and determine the next greater element of nums2[j] in nums2. If there is no next greater element, then the answer for this query is -1.

 Return an array ans of length nums1.length such that ans[i] is the next greater element as described above.

  

 Example 1:
 Input: nums1 = [4,1,2], nums2 = [1,3,4,2]
 Output: [-1,3,-1]
 
 Explanation:
 The next greater element for each value of nums1 is as follows:
 - 4 is underlined in nums2 = [1,3,4,2]. 
 There is no next greater element, so the answer is -1.
 - 1 is underlined in nums2 = [1,3,4,2].
 The next greater element is 3.
 - 2 is underlined in nums2 = [1,3,4,2]. 
 There is no next greater element, so the answer is -1.
 
 
 Example 2:
 Input: nums1 = [2,4], nums2 = [1,2,3,4]
 Output: [3,-1]
 Explanation: 
 The next greater element for each value of nums1 is as follows:
 - 2 is underlined in nums2 = [1,2,3,4]. 
 The next greater element is 3.
 
 - 4 is underlined in nums2 = [1,2,3,4].
 There is no next greater element, so the answer is -1.
  

 Constraints:

 1 <= nums1.length <= nums2.length <= 1000
 0 <= nums1[i], nums2[i] <= 104
 All integers in nums1 and nums2 are unique.
 All the integers of nums1 also appear in nums2.
  
 Follow up: Could you find an O(nums1.length + nums2.length) solution?
 */

func nextGreaterElement(
    _ nums1: [Int] = [4,1,2],
    _ nums2: [Int] = [1,2,3,4]
) -> [Int] {
    
    var result = [Int](
        repeating: -1,
        count: nums1.count
    )
    
    for i in 0..<nums1.count {
        if let item = nums2.firstIndex(of: nums1[i]) {
            let match = nums2[item]
            var left = item
            let right = nums2.count - 1
            
            while left <= right {
                if match < nums2[left] {
                    result[i] = nums2[left]
                    left = right
                }
                left += 1
            }
        }
    }
    return result
}

/// 2 option with hashMap
func nextGreaterElement2(
    _ nums1: [Int],
    _ nums2: [Int]
) -> [Int] {
    
    // Create a dictionary to map elements of nums1 to their indices
    var nums1Indices = [Int: Int]()
    for (index, num) in nums1.enumerated() {
        nums1Indices[num] = index
    }
    
    // Initialize the result array with -1
    var result = Array(
        repeating: -1,
        count: nums1.count
    )
    
    // Iterate over each element in nums2
    for i in 0..<nums2.count {
        
        // If nums2[i] is not in nums1Indices, continue
        guard let idx = nums1Indices[nums2[i]] else {
            continue
        }
        
        // Iterate from the next element to the end of nums2
        for j in (i + 1)..<nums2.count {
            if nums2[j] > nums2[i] {
                // Set the result for the respective index to nums2[j]
                result[idx] = nums2[j]
                break
            }
        }
    }
    
    return result
}
