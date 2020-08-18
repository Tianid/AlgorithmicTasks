//
//  ReverseWordsInAString.swift
//  AlgorithmicTasks
//
//  Created by Tianid on 11.08.2020.
//  Copyright © 2020 Tianid. All rights reserved.
//

/*
 Reverse Words in a String
 Given an input string, reverse the string word by word.

  

 Example 1:

 Input: "the sky is blue"
 Output: "blue is sky the"
 Example 2:

 Input: "  hello world!  "
 Output: "world! hello"
 Explanation: Your reversed string should not contain leading or trailing spaces.
 Example 3:

 Input: "a good   example"
 Output: "example good a"
 Explanation: You need to reduce multiple spaces between two words to a single space in the reversed string.
  

 Note:

 A word is defined as a sequence of non-space characters.
 Input string may contain leading or trailing spaces. However, your reversed string should not contain leading or trailing spaces.
 You need to reduce multiple spaces between two words to a single space in the reversed string.
  

 Follow up:

 For C programmers, try to solve it in-place in O(1) extra space.
 https://leetcode.com/problems/reverse-words-in-a-string/
 */

import Foundation

class ReverseWordsInAString {
    func start() {
        print(reverseWords("the sky is blue"))
    }
    
    private func reverseWords(_ s: String) -> String {
        let result = s.split(whereSeparator: { $0 == " "}).reversed().joined(separator: " ")
        return result
    }
}
