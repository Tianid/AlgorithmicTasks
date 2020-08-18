//
//  ImplementStrStr().swift
//  AlgorithmicTasks
//
//  Created by Tianid on 10.08.2020.
//  Copyright © 2020 Tianid. All rights reserved.
//

/*
 Implement strStr().

 Return the index of the first occurrence of needle in haystack, or -1 if needle is not part of haystack.

 Example 1:

 Input: haystack = "hello", needle = "ll"
 Output: 2
 Example 2:

 Input: haystack = "aaaaa", needle = "bba"
 Output: -1
 Clarification:

 What should we return when needle is an empty string? This is a great question to ask during an interview.

 For the purpose of this problem, we will return 0 when needle is an empty string. This is consistent to C's strstr() and Java's indexOf().

  

 Constraints:

 haystack and needle consist only of lowercase English characters.
 https://leetcode.com/problems/implement-strstr/
 
 */

import Foundation

class ImplementStrStr {
    func start() {
        print(strStr("asd", ""))
    }
    
    func strStr(_ haystack: String, _ needle: String) -> Int {
        
        let str = haystack
        let find = needle
        
        var firstIndex = 0
        var lastIndex = find.count - 1
        var result = -1
        
        let strArr: [Character] = Array(str)
        
        if str.count == 0 && find.count == 0 {
            return 0
        }
        
        if lastIndex < 0 {
            return 0
        }
        
        if find.count <= str.count {
            
            while lastIndex <= strArr.count - 1 {
                var newStr = ""
                result = -1
                for i in firstIndex ... lastIndex {
                    
                    newStr += String(strArr[i])
                }
                
                if newStr == find {
                    return firstIndex
                    
                } else {
                    firstIndex += 1
                    lastIndex += 1
                }
            }
        } else {
            return -1
        }
        return result
    }
}
