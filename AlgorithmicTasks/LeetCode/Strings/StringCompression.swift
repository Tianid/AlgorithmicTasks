//
//  StringCompression.swift
//  AlgorithmicTasks
//
//  Created by Tianid on 12.08.2020.
//  Copyright © 2020 Tianid. All rights reserved.
//

/*
 String Compression
 Given an array of characters, compress it in-place.

 The length after compression must always be smaller than or equal to the original array.

 Every element of the array should be a character (not int) of length 1.

 After you are done modifying the input array in-place, return the new length of the array.

  
 Follow up:
 Could you solve it using only O(1) extra space?

  
 Example 1:

 Input:
 ["a","a","b","b","c","c","c"]

 Output:
 Return 6, and the first 6 characters of the input array should be: ["a","2","b","2","c","3"]

 Explanation:
 "aa" is replaced by "a2". "bb" is replaced by "b2". "ccc" is replaced by "c3".
  

 Example 2:

 Input:
 ["a"]

 Output:
 Return 1, and the first 1 characters of the input array should be: ["a"]

 Explanation:
 Nothing is replaced.
  

 Example 3:

 Input:
 ["a","b","b","b","b","b","b","b","b","b","b","b","b"]

 Output:
 Return 4, and the first 4 characters of the input array should be: ["a","b","1","2"].

 Explanation:
 Since the character "a" does not repeat, it is not compressed. "bbbbbbbbbbbb" is replaced by "b12".
 Notice each digit has it's own entry in the array.
  

 Note:

 All characters have an ASCII value in [35, 126].
 1 <= len(chars) <= 1000.
 
 https://leetcode.com/problems/string-compression/
 */

import Foundation

class StringCompression {
    func start() {
//        var c:[Character] = ["a","b","b","b","b","b","b","b","b","b","b","b","b"]
        var c:[Character] = ["a","a","a","b","b","a","a"]
        print(compress(&c))
    }
    
    private func compress(_ chars: inout [Character]) -> Int {
        let order = chars
        var i = 0
        var counter = 1
        var result = [Character]()
        
        while i < order.count {
            
            if i + 1 < order.count {
                if order[i + 1] == order[i] {
                    counter += 1
                } else {
                    result.append(order[i])
                    formatValue(&result, value: counter)
                    counter = 1
                }
            } else {
                result.append(order[i])
                formatValue(&result, value: counter)
                counter = 1
            }
             i += 1
        }
        
        chars = result
        return chars.count
    }
    
    private func formatValue(_ chars: inout [Character], value: Int) {
        if value != 1 {
            for c in String(value) {
                chars.append(c)
            }
        }
    }
}
