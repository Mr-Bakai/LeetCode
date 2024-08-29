//
//  155. Min Stack.swift
//  LeetCode
//
//  Created by Bakai Ismaiilov on 29/8/24.
//

/// Design a stack that supports push, pop, top, and retrieving the minimum element in constant time.
///
/// Implement the MinStack class:
///
/// MinStack() initializes the stack object.
/// void push(int val) pushes the element val onto the stack.
/// void pop() removes the element on the top of the stack.
/// int top() gets the top element of the stack.
/// int getMin() retrieves the minimum element in the stack.
/// You must implement a solution with O(1) time complexity for each function.
///
///
///
/// Example 1:
/// Input
/// ["MinStack","push","push","push","getMin","pop","top","getMin"]
/// [[],[-2],[0],[-3],[],[],[],[]]
///
/// Output
/// [null,null,null,null,-3,null,0,-2]
///
/// Explanation
/// MinStack minStack = new MinStack();
/// minStack.push(-2);
/// minStack.push(0);
/// minStack.push(-3);
/// minStack.getMin(); // return -3
/// minStack.pop();
/// minStack.top();       // return 0
/// minStack.getMin(); // return -2

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
