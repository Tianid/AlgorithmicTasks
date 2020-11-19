//
//  Password.swift
//  AlgorithmicTasks
//
//  Created by Tianid on 05.08.2020.
//  Copyright © 2020 Tianid. All rights reserved.
//


/*
 Сережа стал начальником службы информационной безопасности и ращрабатывает регламент генерации пароля. Пароль должен включать в себя три сущности одновременно: строчне латинские буквы, заглавные латинские буквы, цифры, а его длина должна быть не менее 8 символов. Напишите программу, которая скажет, удовлетворит ли Сережу пароль, который придумал сотрудник.
 
 Входные данные:
 Первая единственная строка содержит придуманные пароль. В него входят только латинские буквы и цифры, размер строки не первышает 1000 символов.
 
 Результат работы:
 Вывдите YES, если указанные пароль удовлетворит Сергея, и NO - в противном случае.
 
 Примеры:
     на вход:
 1
     на выходе
 NO
 */

import Foundation


class Password {
    
    func start() {
        let password = readLine()!
        let predicate = NSPredicate(format: "SELF MATCHES[c] %@", "^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)[a-zA-Z\\d]{8,}$")
        let value = predicate.evaluate(with: password)
        value ? print("YES") : print("NO")
    }
}
//
//public static void main(String[] args) {
//    String text = "Егор Алла Александр";
//    Pattern pattern = Pattern.compile("А.+а");
//    Matcher matcher = pattern.matcher(text);
//    while (matcher.find()) {
//        System.out.println(text.substring(matcher.start(), matcher.end()));
//    }
//}
