//
//  ReverseVowelsOfAString.swift
//  AlgorithmicTasks
//
//  Created by Tianid on 11.08.2020.
//  Copyright © 2020 Tianid. All rights reserved.
//

/*
 Reverse Vowels of a String
 Write a function that takes a string as input and reverse only the vowels of a string.

 Example 1:

 Input: "hello"
 Output: "holle"
 Example 2:

 Input: "leetcode"
 Output: "leotcede"
 Note:
 The vowels does not include the letter "y".
 
 https://leetcode.com/problems/reverse-vowels-of-a-string/
 
 */

import Foundation

class ReverseVowelsOfAString {
    
    let vowels = Set("aeiouAEIOU")
    
    func start() {
        print(reverseVowels("asdOsd"))
    }
    
    private func reverseVowels(_ s: String) -> String {
        var cArr = [Character](s)
        var i = 0
        var j = cArr.count - 1
        
        while i < j {
            if isVowel(cArr[i])  && isVowel(cArr[j]) {
                let temp = cArr[i]
                cArr[i] = cArr[j]
                cArr[j] = temp
                i += 1
                j -= 1
            } else  {
                if isVowel(cArr[i]) && !isVowel(cArr[j]) {
                    j -= 1
                } else {
                    i += 1
                }
            }
        }
        return String(cArr)
    }
    
    private func isVowel(_ char: Character) -> Bool {
        return vowels.contains(char)
    }
}
