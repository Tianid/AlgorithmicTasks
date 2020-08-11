//
//  ReverseString.swift
//  AlgorithmicTasks
//
//  Created by Tianid on 11.08.2020.
//  Copyright © 2020 Tianid. All rights reserved.
//

/*
 Reverse String
 Write a function that reverses a string. The input string is given as an array of characters char[].

 Do not allocate extra space for another array, you must do this by modifying the input array in-place with O(1) extra memory.

 You may assume all the characters consist of printable ascii characters.

  

 Example 1:

 Input: ["h","e","l","l","o"]
 Output: ["o","l","l","e","h"]
 Example 2:

 Input: ["H","a","n","n","a","h"]
 Output: ["h","a","n","n","a","H"]
 
 https://leetcode.com/problems/reverse-string/
 */

import Foundation

class ReverseString {
    
    func start() {
        var s:[ Character] = ["h","e","l","l","o"]
        reverseString(&s)
        print(s)
    }
    
    private func reverseString(_ s: inout [Character]) {
        var temp: Character = " "
        var i = 0
        var j = s.count - 1

        while i < j {
            temp = s[i]
            s[i] = s[j]
            s[j] = temp

            i += 1
            j -= 1
        }
        
        
        //MARK: - Or just: s = String(s.reversed())

    }
}
