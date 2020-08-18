//
//  ListNode.swift
//  AlgorithmicTasks
//
//  Created by Tianid on 18.08.2020.
//  Copyright © 2020 Tianid. All rights reserved.
//

import Foundation

class ListNode {
    var val: Int
    var next: ListNode?
    init() { self.val = 0; self.next = nil; }
    init(_ val: Int) { self.val = val; self.next = nil; }
    init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
    
    static func printList(head: ListNode?) {
        var curent = head
        while curent != nil {
            print(curent?.val)
            curent = curent?.next
        }
    }
}
