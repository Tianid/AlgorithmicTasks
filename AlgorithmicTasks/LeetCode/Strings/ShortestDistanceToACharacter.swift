//
//  ShortestDistanceToACharacter.swift
//  AlgorithmicTasks
//
//  Created by Tianid on 13.08.2020.
//  Copyright © 2020 Tianid. All rights reserved.
//

/*
 Shortest Distance to a Character
 Given a string S and a character C, return an array of integers representing the shortest distance from the character C in the string.

 Example 1:

 Input: S = "loveleetcode", C = 'e'
 Output: [3, 2, 1, 0, 1, 0, 0, 1, 2, 2, 1, 0]
  

 Note:

 S string length is in [1, 10000].
 C is a single character, and guaranteed to be in string S.
 All letters in S and C are lowercase.
 
 https://leetcode.com/problems/shortest-distance-to-a-character/
*/

import Foundation

class ShortestDistanceToACharacter {
    func start() {
        print(shortestToChar("loveleetcode", "e"))
    }
    
    private func shortestToChar(_ S: String, _ C: Character) -> [Int] {
        var res = Array(repeating: 0, count: S.count), cIndex = -10000, sChars = Array(S)
        
        for (i, sChar) in sChars.enumerated() {
            if sChar == C {
                cIndex = i
            }
            
            res[i] = i - cIndex
        }
        
        cIndex = -10000
        
        for i in (0..<sChars.count).reversed() {
            let currentChar = sChars[i]
            
            if currentChar == C {
                cIndex = i
            }
            
            res[i] = min(res[i], abs(cIndex - i))
        }
        return res
    }
}
