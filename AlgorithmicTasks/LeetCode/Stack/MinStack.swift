//
//  MinStack.swift
//  AlgorithmicTasks
//
//  Created by Tianid on 20.08.2020.
//  Copyright © 2020 Tianid. All rights reserved.
//

/*
 Min Stack
 Design a stack that supports push, pop, top, and retrieving the minimum element in constant time.

 push(x) -- Push element x onto stack.
 pop() -- Removes the element on top of the stack.
 top() -- Get the top element.
 getMin() -- Retrieve the minimum element in the stack.
  

 Example 1:

 Input
 ["MinStack","push","push","push","getMin","pop","top","getMin"]
 [[],[-2],[0],[-3],[],[],[],[]]

 Output
 [null,null,null,null,-3,null,0,-2]

 Explanation
 MinStack minStack = new MinStack();
 minStack.push(-2);
 minStack.push(0);
 minStack.push(-3);
 minStack.getMin(); // return -3
 minStack.pop();
 minStack.top();    // return 0
 minStack.getMin(); // return -2
  

 Constraints:

 Methods pop, top and getMin operations will always be called on non-empty stacks.

 https://leetcode.com/problems/min-stack/
 */

import Foundation


class MinStack {
    private var values = [Int]()
    private var minValues = [Int]()

    init() {
        
    }
    
    func push(_ x: Int) {
        values.append(x)
        
        if minValues.isEmpty || x <= minValues.last! {
            minValues.append(x)
        }
    }
    
    func pop() {
        guard !values.isEmpty else { return }
        let removed = values.removeLast()
        
        if let last = minValues.last, last == removed {
            minValues.removeLast()
        }
    }
    
    func top() -> Int {
        return values.isEmpty ? -1 : values.last!
    }
    
    func getMin() -> Int {
        return minValues.isEmpty ? -1 : minValues.last!
    }
}


