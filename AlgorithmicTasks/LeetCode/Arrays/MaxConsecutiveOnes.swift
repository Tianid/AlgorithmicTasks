//
//  MaxConsecutiveOnes.swift
//  AlgorithmicTasks
//
//  Created by Tianid on 18.08.2020.
//  Copyright © 2020 Tianid. All rights reserved.
//

/*
 Max Consecutive Ones
 Given a binary array, find the maximum number of consecutive 1s in this array.

 Example 1:

 Input: [1,1,0,1,1,1]
 Output: 3
 Explanation: The first two digits or the last three digits are consecutive 1s.
     The maximum number of consecutive 1s is 3.
 Note:

 The input array will only contain 0 and 1.
 The length of input array is a positive integer and will not exceed 10,000
 
 https://leetcode.com/problems/max-consecutive-ones/
 */

import Foundation

class MaxConsecutiveOnes {
    func start() {
        print(findMaxConsecutiveOnes([1,1,0,1,1,1]))
    }
    
    private func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        var maxx = 0
        var count = 0
        
        for num in nums {
            if num == 1 {
                count += 1
                maxx = max(count, maxx)
                
            } else {
                count = 0
            }
        }
        
        return maxx
    }
}
