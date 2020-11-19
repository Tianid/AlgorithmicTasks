//
//  MergeSort.swift
//  AlgorithmicTasks
//
//  Created by Tianid on 19.11.2020.
//  Copyright © 2020 Tianid. All rights reserved.
//

import Foundation

class MergeSort {
    func start() {
        let array = [1,6,5,3,20,14,33,10,13]
        
//        print(merge(partL: [1,4,4], partR: [2,3,5,7,8]))
        print(mergeSort(array: array))
        
    }
    
    private func mergeSort(array: [Int]) -> [Int] {
        guard array.count > 1 else { return array }
        let m = array.count / 2 // middle of array
        let partL = mergeSort(array: Array(array[0..<m]))
        let partR = mergeSort(array: Array(array[m..<array.count]))
        return merge(partL: partL, partR: partR)
    }
    
    private func merge(partL: [Int], partR: [Int]) -> [Int] {
        var result = [Int]()
        var l = 0
        var r = 0
        
        while l < partL.count && r < partR.count {
            
            let lElem = partL[l]
            let rElem = partR[r]
            
            if lElem < rElem {
                result.append(lElem)
                l += 1
            } else if lElem > rElem {
                result.append(rElem)
                r += 1
            } else {
                result.append(lElem)
                result.append(rElem)
                l += 1
                r += 1
            }
        }
    
   
        while l < partL.count {
            result.append(partL[l])
            l += 1
        }
        
        while r < partR.count {
            result.append(partR[r])
            r += 1
        }
        return result
    }
}
