//
//  ValidParentheses.swift
//  AlgorithmicTasks
//
//  Created by Tianid on 20.08.2020.
//  Copyright © 2020 Tianid. All rights reserved.
//

/*
 Valid Parentheses
 Given a string containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

 An input string is valid if:

 Open brackets must be closed by the same type of brackets.
 Open brackets must be closed in the correct order.
 Note that an empty string is also considered valid.

 Example 1:

 Input: "()"
 Output: true
 Example 2:

 Input: "()[]{}"
 Output: true
 Example 3:

 Input: "(]"
 Output: false
 Example 4:

 Input: "([)]"
 Output: false
 Example 5:

 Input: "{[]}"
 Output: true
 
 https://leetcode.com/problems/valid-parentheses/
 */

import Foundation

class ValidParentheses {
    func start() {
        print(isValid("{[]}"))

        print(isValid("([)]"))
    }
    
    private func isValid(_ s: String) -> Bool {
        var stack = [Character]()
        
        for c in s {
            if c == "(" || c == "[" || c == "{" {
                stack.append(c)
            } else if c == ")" {
                guard !stack.isEmpty , stack.removeLast() == "(" else { return false }
                
            } else if c == "]" {
                guard !stack.isEmpty , stack.removeLast() == "[" else { return false }

            } else if c == "}" {
                guard !stack.isEmpty , stack.removeLast() == "{" else { return false }

            }
        }
        
        return stack.isEmpty
    }
}
