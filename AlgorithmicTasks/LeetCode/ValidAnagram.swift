//
//  ValidAnagram.swift
//  AlgorithmicTasks
//
//  Created by Tianid on 13.08.2020.
//  Copyright © 2020 Tianid. All rights reserved.
//

/*
 Valid Anagram
 Given two strings s and t , write a function to determine if t is an anagram of s.
 
 Example 1:
 
 Input: s = "anagram", t = "nagaram"
 Output: true
 Example 2:
 
 Input: s = "rat", t = "car"
 Output: false
 Note:
 You may assume the string contains only lowercase alphabets.
 
 Follow up:
 What if the inputs contain unicode characters? How would you adapt your solution to such case?
 
 https://leetcode.com/problems/valid-anagram/
 */

import Foundation

class ValidAnagram {
    func start() {
        print(isAnagram("anagram", "nagaram"))
    }
    
    
    private func isAnagram(_ s: String, _ t: String) -> Bool {
        
        guard s.count == t.count else { return false }
    
        var sDict = [Character: Int]()
        var tDict = [Character: Int]()
        
        for c in s {
            if sDict[c] == nil {
                sDict[c] = 1
            } else {
                sDict[c]! += 1
            }
        }
        
        for c in t {
            if tDict[c] == nil {
                tDict[c] = 1
            } else {
                tDict[c]! += 1
            }
        }

        return sDict == tDict
    }
    
    //MARK: - Better performence
    /*
     
     let sCharsFreq = Dictionary(s.map { ($0, 1) }, uniquingKeysWith: +)
     let tCharsFreq = Dictionary(t.map { ($0, 1) }, uniquingKeysWith: +)
     
     return sCharsFreq == tCharsFreq
     
     
     */
    
    
    
}
