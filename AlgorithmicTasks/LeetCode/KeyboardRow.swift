//
//  KeyboardRow.swift
//  AlgorithmicTasks
//
//  Created by Tianid on 10.08.2020.
//  Copyright © 2020 Tianid. All rights reserved.
//

/*
 Keyboard Row
 Given a List of words, return the words that can be typed using letters of alphabet on only one row's of American keyboard like the image below.
 
 Example:
 Input: ["Hello", "Alaska", "Dad", "Peace"]
 Output: ["Alaska", "Dad"]
 
 Note:

 You may use one character in the keyboard more than once.
 You may assume the input string will only contain letters of alphabet.
 
 https://leetcode.com/problems/keyboard-row/
 
 */

import Foundation

class KeyboardRow {
    func start() {
        let input = ["Hello", "Alaska", "Dad", "Peace"]
        print(findWords(words: input))
    }
    
    private func findWords(words: [String]) -> [String] {
        let firstLVL = "qwertyuiop"
        let secondLVL = "asdfghjkl"
        let thirdLVL = "zxcvbnm"


        let result = words.filter { word in
            firstLVL.contains(word.lowercased()) || secondLVL.contains(word.lowercased()) || thirdLVL.contains(word.lowercased())
        }
        return result

    }
}

extension String {
    func contains(_ word: String) -> Bool {
        return word.filter { c in !self.contains(c) }.count == 0
    }
}
