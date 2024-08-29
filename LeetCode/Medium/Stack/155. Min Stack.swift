//
//  155. Min Stack.swift
//  LeetCode
//
//  Created by Bakai Ismaiilov on 29/8/24.
//

class MinStack {
    private var stack: [Int]
    private var minStack: [Int]
    
    init() {
        stack = []
        minStack = []
    }
    
    func push(_ val: Int) {
        stack.append(val)
        let minVal = minStack.isEmpty ? val : min(val, minStack.last!)
        minStack.append(minVal)
    }
    
    func pop() {
        if !stack.isEmpty {
            stack.removeLast()
            minStack.removeLast()
        }
    }
    
    func top() -> Int {
        return stack.last ?? -1
    }
    
    func getMin() -> Int {
        return minStack.last ?? -1
    }
}
