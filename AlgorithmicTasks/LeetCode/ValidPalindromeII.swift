//
//  ValidPalindrome II.swift
//  AlgorithmicTasks
//
//  Created by Tianid on 10.08.2020.
//  Copyright © 2020 Tianid. All rights reserved.
//
/*
 Valid Palindrome II
 Given a non-empty string s, you may delete at most one character. Judge whether you can make it a palindrome.

 Example 1:

 Input: "aba"
 Output: True
 Example 2:

 Input: "abca"
 Output: True
 Explanation: You could delete the character 'c'.
 Note:

 The string will only contain lowercase characters a-z. The maximum length of the string is 50000.
https://leetcode.com/problems/valid-palindrome-ii/
 
 */
import Foundation

class ValidPalindromeII {
    func start() {
        print(validPalindrome("abca"))
    }
    
    func validPalindrome(_ s: String) -> Bool {
          return isPalindrome(s, skipLeft: false) || isPalindrome(s, skipLeft: true)
    }
    
    private func isPalindrome(_ s: String, skipLeft: Bool) -> Bool {
        let array = Array(s)
        var i = 0
        var j = array.count - 1
        var skipped = false
        
        while i < j {
            if array[i] == array[j] {
                i += 1
                j -= 1
            } else if skipped {
                return false
            } else if skipLeft {
                skipped = true
                i += 1
            } else {
                skipped = true
                j -= 1
            }
        }
        return true
    }
}
