//
//  AddStrings.swift
//  AlgorithmicTasks
//
//  Created by Tianid on 12.08.2020.
//  Copyright © 2020 Tianid. All rights reserved.
//

/*
 Add Strings
 Given two non-negative integers num1 and num2 represented as string, return the sum of num1 and num2.
 
 Note:
 
 The length of both num1 and num2 is < 5100.
 Both num1 and num2 contains only digits 0-9.
 Both num1 and num2 does not contain any leading zero.
 You must not use any built-in BigInteger library or convert the inputs to integer directly.
 
 https://leetcode.com/problems/add-strings/
 */

import Foundation

class AddStrings {
    
    var cNum1: [Character] = Array()
    var cNum2: [Character] = Array()
    
    
    func start() {
        //        print(addStrings("3876620623801494171", "6529364523802684779"))
        print(addStrings("99", "105"))
        
    }
    
    func addStrings(_ num1: String, _ num2: String) -> String {
        let num1Chars = Array(num1.reversed())
        let num2Chars = Array(num2.reversed())
        var i = 0, j = 0, sum = 0, carry = 0
        var res = ""
        
        while i < num1Chars.count || j < num2Chars.count || carry != 0 {
            sum = carry
            
            if i < num1Chars.count {
                sum += Int(String(num1Chars[i]))!
                i += 1
            }
            if j < num2Chars.count {
                sum += Int(String(num2Chars[j]))!
                j += 1
            }
            
            carry = sum / 10
            sum = sum % 10
            
            res.append(String(sum))
        }
        
        return String(res.reversed())
    }
}
