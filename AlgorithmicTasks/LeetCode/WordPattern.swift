//
//  WordPattern.swift
//  AlgorithmicTasks
//
//  Created by Tianid on 17.08.2020.
//  Copyright © 2020 Tianid. All rights reserved.
//

/*
 Word Pattern
 Given a pattern and a string str, find if str follows the same pattern.

 Here follow means a full match, such that there is a bijection between a letter in pattern and a non-empty word in str.

 Example 1:

 Input: pattern = "abba", str = "dog cat cat dog"
 Output: true
 Example 2:

 Input:pattern = "abba", str = "dog cat cat fish"
 Output: false
 Example 3:

 Input: pattern = "aaaa", str = "dog cat cat dog"
 Output: false
 Example 4:

 Input: pattern = "abba", str = "dog dog dog dog"
 Output: false
 Notes:
 You may assume pattern contains only lowercase letters, and str contains lowercase letters that may be separated by a single space.
 
 https://leetcode.com/problems/word-pattern/
 */

import Foundation

class WordPattern {
    func start() {
        print(wordPattern("abba", "dog cat cat dog"))
        print(wordPattern("abba", "dog cat cat fish"))
        print(wordPattern("aaaa", "dog cat cat dog"))
        print(wordPattern("abba", "dog dog dog dog"))
    }
    
    private func wordPattern(_ pattern: String, _ str: String) -> Bool {
        let words =  str.split(separator: " ")
        let pattertnChars = Array(pattern)
        
        var patternsWords = [String: String]()
        var exceptions = Set<String>()
        
        guard pattern.count == words.count else { return false }
        
        for (i,c) in pattertnChars.enumerated() {
            
            if let uniqueWord = patternsWords[String(c)] {
                
                if uniqueWord != words[i] {
                    return false
                }
                
            } else if !exceptions.contains(String(words[i])) {
                patternsWords[String(c)] = String(words[i])
                exceptions.insert(String(words[i]))
            } else {
                return false
            }
        }
        
        return true
    }
}
