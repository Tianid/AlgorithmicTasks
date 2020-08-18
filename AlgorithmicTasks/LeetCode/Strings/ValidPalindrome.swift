//
//  ValidPalindrome.swift
//  AlgorithmicTasks
//
//  Created by Tianid on 10.08.2020.
//  Copyright © 2020 Tianid. All rights reserved.
//

/*
 Valid Palindrome
 Given a string, determine if it is a palindrome, considering only alphanumeric characters and ignoring cases.

 Note: For the purpose of this problem, we define empty string as valid palindrome.

 Example 1:

 Input: "A man, a plan, a canal: Panama"
 Output: true
 Example 2:

 Input: "race a car"
 Output: false
  

 Constraints:

 s consists only of printable ASCII characters.
 
 https://leetcode.com/problems/valid-palindrome/
 */

import Foundation

class ValidPalindrome {
    func start() {
        let input = "A man, a plan, a canal: Panama"
        print(isPalindrome(input))
    }
    
    private func isPalindrome(_ s: String) -> Bool {
        let formated = s.lowercased().filter { c in c.isLetter || c.isNumber }
        let reversed = String(formated.reversed())
        
        return formated == reversed ? true : false
    }
}
