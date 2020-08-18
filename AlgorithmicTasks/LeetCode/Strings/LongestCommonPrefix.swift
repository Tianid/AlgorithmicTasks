//
//  LongestCommonPrefix.swift
//  AlgorithmicTasks
//
//  Created by Tianid on 14.08.2020.
//  Copyright © 2020 Tianid. All rights reserved.
//

/*
 
 Longest Common Prefix
 Write a function to find the longest common prefix string amongst an array of strings.

 If there is no common prefix, return an empty string "".

 Example 1:

 Input: ["flower","flow","flight"]
 Output: "fl"
 Example 2:

 Input: ["dog","racecar","car"]
 Output: ""
 Explanation: There is no common prefix among the input strings.
 Note:

 All given inputs are in lowercase letters a-z.
 
 https://leetcode.com/problems/longest-common-prefix/
 */

import Foundation

class LongestCommonPrefix {
    func start() {
//        print(longestCommonPrefix(["flower","flow","flight"]))
//        print(longestCommonPrefix(["dog","racecar","car"]))
        print(longestCommonPrefix(["aa","a"]))

    }
    
    private func longestCommonPrefix(_ strs: [String]) -> String {
        var result = ""
        
        guard let first = strs.first else { return result }
        
        for (i,char) in first.enumerated() {
            
            for word in strs.dropFirst() {
                if i >= word.count {
                    return result
                }
                let wordChars = Array(word)
                let curentChar = wordChars[i]
                if char != curentChar {
                    return result
                }
            }
            result.append(char)
        }
        return result
    }
}
