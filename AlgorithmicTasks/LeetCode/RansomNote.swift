//
//  RansomNote.swift
//  AlgorithmicTasks
//
//  Created by Tianid on 14.08.2020.
//  Copyright © 2020 Tianid. All rights reserved.
//

/*
 Ransom Note
 Given an arbitrary ransom note string and another string containing letters from all the magazines, write a function that will return true if the ransom note can be constructed from the magazines ; otherwise, it will return false.

 Each letter in the magazine string can only be used once in your ransom note.
 
 Example 1:

 Input: ransomNote = "a", magazine = "b"
 Output: false
 Example 2:

 Input: ransomNote = "aa", magazine = "ab"
 Output: false
 Example 3:

 Input: ransomNote = "aa", magazine = "aab"
 Output: true
  

 Constraints:

 You may assume that both strings contain only lowercase letters.
 
 https://leetcode.com/problems/ransom-note/
 */

import Foundation

class RansomNote {
    func start() {
        print(canConstruct("aa","ab"))
    }
    
    private func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        var magazineFreq = Dictionary(magazine.map { ($0, 1) }, uniquingKeysWith: +)
        
        for c in ransomNote {
            if magazineFreq[c] != nil {
                magazineFreq[c]! -= 1
                if magazineFreq[c]! < 0 {
                    return false
                }
            } else {
                return false
            }
        }
        
        return true
    }
}
