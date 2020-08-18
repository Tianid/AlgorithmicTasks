//
//  ReverseWordsInAStringIII.swift
//  AlgorithmicTasks
//
//  Created by Tianid on 11.08.2020.
//  Copyright © 2020 Tianid. All rights reserved.
//

/*
 Reverse Words in a String III
 Given a string, you need to reverse the order of characters in each word within a sentence while still preserving whitespace and initial word order.

 Example 1:

 Input: "Let's take LeetCode contest"
 Output: "s'teL ekat edoCteeL tsetnoc"
 Note: In the string, each word is separated by single space and there will not be any extra space in the string.
 
 https://leetcode.com/problems/reverse-words-in-a-string-iii/
 */

import Foundation


class ReverseWordsInAStringIII {
    func start() {
        print(reverseWords("Let's take LeetCode contest"))
    }
    
    private func reverseWords(_ s: String) -> String {
        let result = s.split(separator: " ").map { reverseWord(Array($0)) }.joined(separator: " ")
        return result
    }

    private func reverseWord(_ s: [Character]) -> String {
        return String(s.reversed())
    }
    
    //MARK: - More optimaized solution
//    func reverseWords(_ s: String) -> String {
//           var last = 0, str = Array(s)
//
//           for i in 0..<str.count {
//               if i + 1 == str.count || (str[i] != " " && str[i + 1] == " ") {
//                   reverse(&str, last, i)
//                   last = i + 2
//               }
//           }
//
//           return String(str)
//       }
//
//       fileprivate func reverse<T>(_ array: inout [T], _ startIdx: Int, _ endIdx: Int) {
//           var (left, right) = (startIdx, endIdx)
//
//           while left < right {
//               (array[left], array[right]) = (array[right], array[left])
//               left += 1
//               right -= 1
//           }
//       }
}
