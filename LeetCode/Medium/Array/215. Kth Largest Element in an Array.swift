//
//  215. Kth Largest Element in an Array.swift
//  LeetCode
//
//  Created by Bakai Ismaiilov on 31/8/25.
//

/*
 Here’s the core understanding you need—without restating the task, giving a solution, or hinting at one:
 
 •    “k-th largest” (with duplicates): If you listed the numbers from largest to smallest including repeats,
 the answer is simply the value sitting in position k of that list.
 
 Example: [6,5,5,4,3,3,2,2,1] → 1st largest = 6, 2nd = 5, 3rd = 5, 4th = 4.
 •    Not “k-th distinct”: You do not collapse equal numbers. [5,5,4,…] counts both 5s separately.
 •    Output is a value, not an index: You return the number itself (e.g., 4), not where it appears in the array.
 •    Correctness property (definition check): A number x is the k-th largest iff
 
 • at least k elements are ≥ x, and
 • fewer than k elements are > x.
 (This is a property of the answer, useful for validating it.)
 •    Edge/clarity notes:
 • k = 1 → the maximum.
 • k = n → the minimum (since 1 ≤ k ≤ n).
 • Negative values are allowed.
 • All-equal array returns that same value for any valid k.
 • “Without sorting” means: You don’t need the full order of all elements to know which value occupies position k in a descending view.
 */

func findKthLargest(
    _ nums: [Int] = [3, 2, 1, 5, 6, 6, 4],
    _ k: Int = 3
) -> Int {
    var mutNums = nums
    let arraySize = nums.count
    let target = arraySize - k
    
    func quickSelect(
        _ left: Int,
        _ right: Int
    ) -> Int {
        let pivot = mutNums[right]
        var pointer = left
        
        if left < right {
            for i in left..<right {
                if mutNums[i] <= pivot {
                    mutNums.swapAt(pointer, i)
                    pointer += 1
                }
            }
        }
        
        mutNums.swapAt(pointer, right)
        
        if pointer > target {
            //target index is smaller than p → it
            //must be somewhere in the LEFT block
            return quickSelect(left, pointer - 1)
            
            //target index is larger than p → it
            //must be somewhere in the RIGHT block
        } else if pointer < target {
            return quickSelect(pointer + 1, right)
            
        } else {
            return mutNums[pointer]
        }
    }
    
    return quickSelect(0, arraySize - 1)
}
