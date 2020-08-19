//
//  RemoveDuplicatesFromSortedList.swift
//  AlgorithmicTasks
//
//  Created by Tianid on 19.08.2020.
//  Copyright © 2020 Tianid. All rights reserved.
//

/*
 
 Remove Duplicates from Sorted List
 Given a sorted linked list, delete all duplicates such that each element appear only once.

 Example 1:

 Input: 1->1->2
 Output: 1->2
 Example 2:

 Input: 1->1->2->3->3
 Output: 1->2->3
 
 https://leetcode.com/problems/remove-duplicates-from-sorted-list/
 */

import Foundation

class RemoveDuplicatesFromSortedList {
    func start() {
        let f = ListNode(1)
        let e = ListNode(1,f)
        let d = ListNode(1,e)
        let c = ListNode(1, d)
        let b = ListNode(1, c)
        let a = ListNode(1, b)
        ListNode.printList(head: deleteDuplicates(a))
    }
    
    private func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        let stub = ListNode()
        stub.next = head
        
        var curent = stub.next
        
        while curent?.next != nil {
            if curent?.val == curent?.next?.val {
                curent?.next = curent?.next?.next
            } else {
                curent = curent?.next
            }
        }
        
        
        return stub.next
    }
}
