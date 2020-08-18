//
//  SortArrayByParity.swift
//  AlgorithmicTasks
//
//  Created by Tianid on 18.08.2020.
//  Copyright © 2020 Tianid. All rights reserved.
//

/*
 Sort Array By Parity
 Given an array A of non-negative integers, return an array consisting of all the even elements of A, followed by all the odd elements of A.

 You may return any answer array that satisfies this condition.
 
 https://leetcode.com/problems/sort-array-by-parity/
 */

import Foundation

class SortArrayByParity {
    func start() {
        print(sortArrayByParity([3,1,2,4]))
    }
    
    private func sortArrayByParity(_ A: [Int]) -> [Int] {
        var result = [Int]()
        
        for item in A {
            if item.isMultiple(of: 2) {
                result.insert(item, at: 0)
            } else {
                result.append(item)
            }
        }
        
     
        return result
        
        //MARK: - Another variant
//        return A.enumerated().reduce(into: [Int]()) { (acc, arg) in
//                   let (_, value) = arg
//                   acc.insert(value, at: value.isMultiple(of: 2) ? 0 : acc.count)
//               }
    }
}
