//
//  Pedometers.swift
//  AlgorithmicTasks
//
//  Created by Tianid on 05.08.2020.
//  Copyright © 2020 Tianid. All rights reserved.
//


/*
 Саша устроился работать и проходит обучение: в первый день, чтобы доставить карты клиентам, он прошел Х метров. Путь каждого следующего дня получался длиннее на 70% от предыдущего дня. Саша хочет за все дни работы суммарно пройти не менее Y метров, на какой день он достигнет своей цели?
 
 Входные данные
 Первая и единственная строка содержит числа X и Y, заданные через проьел (0 < X <= Y <= 1000) с точностью до 8 знаков после запятой.
 
 Результат работы
 Выведите номер дня (целое число).
 
 Примеры:
    на вход:
 10 200
    на выходе:
 6
 
 */

import Foundation

class Pedometeres {
    var prevStep: Double = 0
    var maxStep: Double = 0
    
    let nextStepCoef = 0.7
    var day = 0.0
    var currentStep = 0.0
    
    func start() {
        let line = readLine()
        let newLine = line?.split(separator: " ")
        
        let str1 = String((newLine?[0])!)
        let str2 = String((newLine?[1])!)
        
        prevStep = Double(str1)!
        day = 1
        currentStep = prevStep
        maxStep = Double(str2)!
        
        
        while currentStep < maxStep {
            let stepShift = prevStep * nextStepCoef
            prevStep += stepShift
            currentStep += prevStep
            day += 1
            
        }
        
        print(day)
        
    }
}
