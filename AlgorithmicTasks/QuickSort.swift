//
//  QuickSort.swift
//  AlgorithmicTasks
//
//  Created by Tianid on 19.11.2020.
//  Copyright © 2020 Tianid. All rights reserved.
//

import Foundation

class QuickSort {
    
    private var result = [Int]()
    
    func start() {
        result = [9,6,11,8,20,14,33,10,13]
        
        //        print(merge(partL: [1,4,4], partR: [2,3,5,7,8]))
        quickSort(l: 0, r: result.count - 1)
        print(result)
        
    }
    
    private func quickSort(l: Int, r: Int) {
        if l >= r {
            return
        }
        
        let m = partition(l: l, r: r)
        quickSort(l: l, r: m - 1)
        quickSort(l: m + 1, r: r)
        
    }
    
    private func partition(l: Int, r: Int) -> Int {
        let x = result[l]
        var j = l
        
        for i in l + 1...r {
            if result[i] <= x {
                j += 1
                swap(a: j, b: i)
            }
        }
        
        swap(a: l, b: j)
        return j
    }
    
    
    private func swap(a: Int, b: Int) {
        let temp = result[a]
        result[a] = result[b]
        result[b] = temp
    }
}
