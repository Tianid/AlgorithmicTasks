//
//  SmallestDiv.swift
//  AlgorithmicTasks
//
//  Created by Tianid on 05.08.2020.
//  Copyright © 2020 Tianid. All rights reserved.
//

/*
 Илья изучает свойства делимости и тренируется в разложении чисел на простые множители. В качестве тренировки он хочет найти минимальный делитель N, отличный от 1. Помогите Илье написать такую программу.
 
 Входные данные:
 Первая и едиственная строка содержит натуральное число N (2 <= N <= 10^9)
 
 Результат работы:
 Выведите наименьший делитель числа N, отичный от 1.
 
 Примеры:
     на вход:
 6
     на выходе:
 2
 
 */

import Foundation


class SmallestDiv {
    var N = 0
    func start() {
        N = Int(readLine()!)!
        
        for item in 2...N {
            let value = N % item
            if value == 0 {
                print(item)
                return
            }
        }
    }
}
