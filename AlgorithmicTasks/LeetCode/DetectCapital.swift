//
//  DetectCapital.swift
//  AlgorithmicTasks
//
//  Created by Tianid on 10.08.2020.
//  Copyright © 2020 Tianid. All rights reserved.
//

/*
 Detect Capital
 Given a word, you need to judge whether the usage of capitals in it is right or not.
 
 We define the usage of capitals in a word to be right when one of the following cases holds:
 
 All letters in this word are capitals, like "USA".
 All letters in this word are not capitals, like "leetcode".
 Only the first letter in this word is capital, like "Google".
 Otherwise, we define that this word doesn't use capitals in a right way.
 
 
 Example 1:
 
 Input: "USA"
 Output: True
 
 
 Example 2:
 
 Input: "FlaG"
 Output: False
 
 
 Note: The input will be a non-empty word consisting of uppercase and lowercase latin letters.
 
 https://leetcode.com/problems/detect-capital/
 */

import Foundation

class DetectCapital {
    func start() {
        print(detectCapitalUse("ggg"))
    }
    
    private func detectCapitalUse(_ word: String) -> Bool {
        
        if word.count == 1 {
            return true
        }
        
        if isAllLettersAreUppercase(word) {
            return true
        }
        
        if isAllLettersAreLowercase(word) {
            return true
        }
        
        if isFirstLetterAreUppercase(word) {
            return true
        }
        
        return false
    }
    
    private func isAllLettersAreUppercase(_ word: String) -> Bool{
        let new = word.filter { c in c.isUppercase }
        return new.count == word.count ? true : false
    }
    
    private func isFirstLetterAreUppercase(_ word: String) -> Bool{
        let count = word.filter { c in c.isUppercase }.count
        return word.first!.isUppercase && count == 1 ? true : false
    }
    
    private func isAllLettersAreLowercase(_ word: String) -> Bool{
        let new = word.filter { c in c.isLowercase }
        return new.count == word.count ? true : false
    }
    
}



//MARK: - Other solution (it is better)


class Solution {
    func detectCapitalUse(_ word: String) -> Bool {
        var capitalNum = 0, isFirstUpperCased = false
        
        for char in word {
            if char.isUpperCased() {
                capitalNum += 1
            }
        }
        
        if let firstChar = word.first {
            isFirstUpperCased = firstChar.isUpperCased()
        }
        
        return capitalNum == 0 || (capitalNum == 1 && isFirstUpperCased) || capitalNum == word.count
    }
    
}

fileprivate extension Character {
    func isUpperCased() -> Bool {
        return String(self).uppercased() == String(self)
    }
}
