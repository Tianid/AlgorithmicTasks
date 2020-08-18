//
//  IsomorphicStrings.swift
//  AlgorithmicTasks
//
//  Created by Tianid on 11.08.2020.
//  Copyright © 2020 Tianid. All rights reserved.
//

/*
 Isomorphic Strings
 Given two strings s and t, determine if they are isomorphic.

 Two strings are isomorphic if the characters in s can be replaced to get t.

 All occurrences of a character must be replaced with another character while preserving the order of characters. No two characters may map to the same character but a character may map to itself.

 Example 1:

 Input: s = "egg", t = "add"
 Output: true
 Example 2:

 Input: s = "foo", t = "bar"
 Output: false
 Example 3:

 Input: s = "paper", t = "title"
 Output: true
 Note:
 You may assume both s and t have the same length.
 https://leetcode.com/problems/isomorphic-strings/
 */

import Foundation

class IsomorphicStrings {
    
    func start() {
        print(isIsomorphic("ab", "ca"))
    }
    
    
    private func isIsomorphic(_ s: String, _ t: String) -> Bool {
        var sdict = [Character: Character]()
        var tdict = [Character: Character]()
        let sArr: [Character] = Array(s)
        let tArr: [Character] = Array(t)

        
        for (i,value) in sArr.enumerated() {
           let tChar = tArr[i]
            
            if sdict[value] == nil && tdict[tChar] == nil {
                sdict[value] = tChar
                tdict[tChar] = value
                continue
            }
            
            if sdict[value] == tArr[i] && tdict[tChar] == value {
                continue
            } else {
                return false
            }
        }
        
        return true
    }
}
