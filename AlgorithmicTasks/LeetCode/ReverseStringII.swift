//
//  ReverseStringII.swift
//  AlgorithmicTasks
//
//  Created by Tianid on 11.08.2020.
//  Copyright © 2020 Tianid. All rights reserved.
//

/*
 Reverse String II
 Given a string and an integer k, you need to reverse the first k characters for every 2k characters counting from the start of the string. If there are less than k characters left, reverse all of them. If there are less than 2k but greater than or equal to k characters, then reverse the first k characters and left the other as original.
 Example:

 Input: s = "abcdefg", k = 2
 Output: "bacdfeg"
 Restrictions:
 The string consists of lower English letters only.
 Length of the given string and k will in the range [1, 10000]
 
 https://leetcode.com/problems/reverse-string-ii/
 */

import Foundation

class ReverseStringII {
    
    func start() {
        print(reverseStr("dklashdjkas", 3))
    }
    
    
    private func reverseStr(_ s: String, _ k: Int) -> String {
        var result = [Character]()
        let sArr = Array(s)
        
        for i in stride(from: 0, to: sArr.count, by: 2 * k) {
            
            
            if sArr.count < i + k {
                result += sArr[i..<sArr.count].reversed()
                break
            }
            
            result += sArr[i..<i + k].reversed()
            
            if sArr.count < i + 2 * k {
                result += sArr[i + k..<sArr.count]
                break
            }
            
            result += sArr[i + k..<i + k * 2]

        }
        return String(result)
    }

}
