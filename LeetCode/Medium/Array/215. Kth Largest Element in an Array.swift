//
//  215. Kth Largest Element in an Array.swift
//  LeetCode
//
//  Created by Bakai Ismaiilov on 31/8/25.
//

import Foundation

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
    _ nums: [Int] = [3,2,1,5,6,6,4],
    _ k: Int = 3
) -> Int {
    var arrNums = nums                 // make a mutable copy (LeetCode passes arrays by value)
    let arraySize = arrNums.count              // cache length
    let target = arraySize - k           // convert "k-th largest" to 0-based index in ascending order
    
    // Inner recursive function: quickselect on inclusive range [l, r]
    
    func quickSelect(_ left: Int, _ right: Int) -> Int {
        let pivot = arrNums[right]         // choose rightmost element as pivot (same as your Python)
        var p = left                      // 'p' will be the final index of the pivot after partition
        
        // Partition: move elements <= pivot to the left side of the window
        if left < right {                   // skip the loop when the window is size 1
            for i in left..<right {         // iterate over all elements except the pivot at 'right'
                if arrNums[i] <= pivot {   // keep elements <= pivot on the left
                    arrNums.swapAt(p, i)   // place current element at position 'p'
                    p += 1                 // advance the boundary of the <= region
                }
            }
        }
        
        arrNums.swapAt(p, right)           // put pivot into its final position at index 'p'
        
        // Recurse into the half that contains the 'target' index
        if p > target {
            // target index is smaller than p → it must be somewhere in the LEFT block
            return quickSelect(left, p - 1)
            
            // target index is larger than p → it must be somewhere in the RIGHT block
        } else if p < target {
            return quickSelect(p + 1, right)
            
        } else {
            // p == target → the pivot landed exactly where the k-th largest should be
            return arrNums[p]
        }
    }
    
    return quickSelect(0, arraySize - 1) // start with the full array range
}
