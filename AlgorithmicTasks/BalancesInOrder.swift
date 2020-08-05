//
//  BalancesInOrder.swift
//  AlgorithmicTasks
//
//  Created by Tianid on 05.08.2020.
//  Copyright © 2020 Tianid. All rights reserved.
//

/*
 Сдава загадывает число N, а Олег пытается его угадать. В качестве подсказок Слава выписывает остаток от деления загаданного числа на числа 2,3,..., M, пока Олен не угадывает число. По записям Слаы помогите Олегу найти наименьшее натуральное N, которое бы удовлетворяло записям Славы.
 
 Входные данные:
 Первая строка содержит натуральное число M(2<=M<=40). Следующие M-1 строк соадержат остаток от деления загаданного Славой натурального числа N на числа 2,3, ..., M соответственно.
 
 Результат работы:
 Выведите наименьшее натуральное число N, удовлетворяющее записям Славы.
 
 Пример:
     на вход:
 6
 1
 2
 3
 4
 5
 
     на вызоде:
 59
 
 
 */

import Foundation

class BalancesInOrder {
    var N = 0
    var M = 0
    var hints = [Int]()
    var cursor = 0
    
    func start() {
        let strM = readLine()
        M = Int(strM!)!
        
        for _ in 1..<M {
            hints.append(Int(readLine()!)!)
        }
        
        print(hints)

        
        var subM = 2
        
        while subM <= M {
            let value = N % subM
            if value == hints[cursor] {
                subM += 1
                cursor += 1
            } else {
                cursor = 0
                subM = 2
                N += 1
            }
        }
        
        print(N)
        
    }
}
