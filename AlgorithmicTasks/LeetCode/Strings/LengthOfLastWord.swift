//
//  LengthOfLastWord.swift
//  AlgorithmicTasks
//
//  Created by Tianid on 12.08.2020.
//  Copyright © 2020 Tianid. All rights reserved.
//

/*
 Length of Last Word
 Given a string s consists of upper/lower-case alphabets and empty space characters ' ', return the length of last word (last word means the last appearing word if we loop from left to right) in the string.

 If the last word does not exist, return 0.

 Note: A word is defined as a maximal substring consisting of non-space characters only.

 Example:

 Input: "Hello World"
 Output: 5
 
 https://leetcode.com/problems/length-of-last-word/
 */

import Foundation

class LengthOfLastWord {
    func start() {
        print(lengthOfLastWord("       "))
    }
    
    private func lengthOfLastWord(_ s: String) -> Int {
        var result: Int? = 0
        guard s.count > 0 else { return result! }
        if let res = s.split(separator: " ").last?.count {
            result = res
        }
        
        return result!
    }
}
